--changeset seed:person_careers runAlways:true
--comment: Заполнение person_careers случайными карьерами (по 2–3 на персону)
DO $$
    DECLARE
        person RECORD;
        selected_careers BIGINT[];
    BEGIN
        FOR person IN SELECT id FROM content_service.persons LOOP
                -- выбираем случайно 2–3 карьеры
                SELECT ARRAY(
                               SELECT id FROM content_service.careers
                               ORDER BY RANDOM()
                               LIMIT (2 + floor(random() * 2)::INT)
                       ) INTO selected_careers;

                -- вставляем
                INSERT INTO content_service.person_careers (person_id, career_id, display_order)
                SELECT person.id, cid, ROW_NUMBER() OVER () AS display_order
                FROM unnest(selected_careers) AS cid
                ON CONFLICT (person_id, career_id) DO NOTHING;
            END LOOP;
    END $$;
