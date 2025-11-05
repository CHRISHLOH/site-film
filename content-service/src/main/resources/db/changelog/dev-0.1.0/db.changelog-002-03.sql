--changeset seed:person_genres runAlways:true
--comment: Заполнение person_genres случайными жанрами (по 5 на персону)
DO $$
    DECLARE
        person RECORD;
        selected_genres BIGINT[];
    BEGIN
        FOR person IN SELECT id FROM content_service.persons LOOP
                -- выбираем случайно 5 жанров
                SELECT ARRAY(
                               SELECT id FROM content_service.genres
                               ORDER BY RANDOM()
                               LIMIT 5
                       ) INTO selected_genres;

                -- вставляем
                INSERT INTO content_service.person_genres (person_id, genre_id, display_order)
                SELECT person.id, gid, ROW_NUMBER() OVER () AS display_order
                FROM unnest(selected_genres) AS gid
                ON CONFLICT (person_id, genre_id) DO NOTHING;
            END LOOP;
    END $$;
