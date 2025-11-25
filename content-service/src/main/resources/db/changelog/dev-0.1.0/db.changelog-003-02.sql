--changeset seed:movie_genres runAlways:true
--comment: Генерация случайных жанров для фильмов (по 4–5 жанров на фильм)

--changeset seed:movie_genres runAlways:true
--comment: Заполнение movie_genres случайными жанрами (по 4–5 на фильм)
DO $$
    DECLARE
        movie RECORD;
        selected_genres BIGINT[];
        order_counter INTEGER := 1;
    BEGIN
        FOR movie IN SELECT id FROM content_service.movies LOOP
                -- выбираем случайно 4–5 жанров
                SELECT ARRAY(
                               SELECT id FROM content_service.genres
                               ORDER BY RANDOM()
                               LIMIT (4 + floor(random() * 2)::INT)
                       ) INTO selected_genres;

                -- вставляем с порядком
                INSERT INTO content_service.movie_genres (movie_id, genre_id, display_order)
                SELECT movie.id, gid, ROW_NUMBER() OVER () AS display_order
                FROM unnest(selected_genres) AS gid
                ON CONFLICT (movie_id, genre_id) DO NOTHING;
            END LOOP;
    END $$;
