package com.sitefilm.etl.infrastructure.persistense.translation;

import com.sitefilm.etl.domain.model.translations.TranslationContentType;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import com.sitefilm.etl.domain.port.repository.TranslationRepositoryPort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.PreparedStatement;
import java.util.List;

@Repository
public class TranslationsRepositoryAdapter implements TranslationRepositoryPort {

    private final JdbcTemplate jdbcTemplate;
    private final Integer batchSize = 50;

    public TranslationsRepositoryAdapter(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    @Transactional
    public List<TranslationProcess> findByTranslationStatus(TranslationStatus translationStatus) {
        String sql = """
        WITH cte AS (
            SELECT id
            FROM content_service.translation_process
            WHERE translation_status = ?
            LIMIT ?
            FOR UPDATE SKIP LOCKED
        )
        UPDATE content_service.translation_process AS t
        SET translation_status = ?
        FROM cte
        WHERE t.id = cte.id
        RETURNING t.id, t.content_id, t.content_type, t.field_name, t.original_text, t.translated_text, t.source_code, t.target_code, t.translation_status
        """;
        return jdbcTemplate.query(connection -> {
                    PreparedStatement ps = connection.prepareStatement(sql);
                    ps.setShort(1, translationStatus.getValue());
                    ps.setInt(2, batchSize);
                    ps.setShort(3, TranslationStatus.LIBRE_TRANSLATE_PROCESS.getValue());
                    return ps;
                },
                (rs, rowNum) -> {
                    TranslationProcess tp = new TranslationProcess();
                    tp.setId(rs.getLong("id"));
                    tp.setContentId(rs.getLong("content_id"));
                    tp.setContentType(TranslationContentType.fromId(rs.getShort("content_type")));
                    tp.setFieldName(rs.getString("field_name"));
                    tp.setOriginalText(rs.getString("original_text"));
                    tp.setTranslatedText(rs.getString("translated_text"));
                    tp.setSourceCode(rs.getString("source_code"));
                    tp.setTargetCode(rs.getString("target_code"));
                    tp.setTranslationStatus(TranslationStatus.fromId(rs.getShort("translation_status")));
                    return tp;
                });
    }

    @Transactional
    public void updateProcess(List<TranslationProcess> list) {
        String sql = """
        UPDATE content_service.translation_process
        SET translation_status = ?, translated_text = ?
        WHERE id = ?
    """;
        jdbcTemplate.batchUpdate(
                sql,
                list,
                list.size(),
                (ps, tp) -> {
                    ps.setShort(1, tp.getTranslationStatus().getValue());
                    ps.setString(2, tp.getTranslatedText());
                    ps.setLong(3, tp.getId());
                }
        );
    }

    @Transactional
    public void saveProcess(List<TranslationProcess> list) {
        String sql = """
                INSERT INTO content_service.translation_process (content_id, content_type, field_name, original_text, translated_text, source_code, target_code, translation_status)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                list,
                list.size(),
                (ps, tp) -> {
                    ps.setLong(1, tp.getContentId());
                    ps.setShort(2, tp.getContentType().getValue());
                    ps.setString(3, tp.getFieldName());
                    ps.setString(4, tp.getOriginalText());
                    ps.setString(5, tp.getTranslatedText());
                    ps.setString(6, tp.getSourceCode());
                    ps.setString(7, tp.getTargetCode());
                    ps.setShort(8, tp.getTranslationStatus().getValue());
                }
        );
    }

    public void updateStatus(List<TranslationProcess> list) {
        String sql = """
                UPDATE content_service.translation_process AS tp
                SET translation_status = ?
                WHERE tp.id = ?
                """;
        jdbcTemplate.batchUpdate(
                sql,
                list,
                list.size(),
                (ps, tp) -> {
                    ps.setShort(1, tp.getTranslationStatus().getValue());
                    ps.setLong(2, tp.getId());
                }
        );
    }
}
