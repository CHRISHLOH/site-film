--changeset seed:movie_persons runAlways:true
--comment: Генерация связей между фильмами и персонами (случайные значения)

DO $$
    DECLARE
        movie RECORD;
        person_ids BIGINT[];
        career_ids BIGINT[];
        i INT;
        rand_person BIGINT;
        rand_career BIGINT;
        rand_display_movie INT;
        rand_display_career INT;
        char_counter INT := 1;
    BEGIN
        -- Получаем все доступные career_id в массив
        SELECT ARRAY(SELECT id FROM content_service.careers) INTO career_ids;

        -- Для каждого фильма создаём 15–20 случайных персон
        FOR movie IN SELECT id FROM content_service.movies LOOP
                -- выбираем случайных 15–20 персон без повторов
                SELECT ARRAY(
                               SELECT id FROM content_service.persons ORDER BY RANDOM() LIMIT (15 + (RANDOM() * 5)::INT)
                       ) INTO person_ids;

                -- вставляем связи
                FOREACH rand_person IN ARRAY person_ids LOOP
                        rand_career := career_ids[1 + floor(random() * array_length(career_ids, 1))::int];
                        rand_display_movie := (random() * 50)::int;
                        rand_display_career := (random() * 50)::int;

                        INSERT INTO content_service.movie_persons (
                            movie_id,
                            person_id,
                            career_id,
                            character_name,
                            display_order_in_movie,
                            display_order_in_career
                        ) VALUES (
                                     movie.id,
                                     rand_person,
                                     rand_career,
                                     CONCAT('Character ', char_counter),
                                     rand_display_movie,
                                     rand_display_career
                                 )
                        ON CONFLICT (movie_id, person_id, career_id) DO NOTHING;

                        char_counter := char_counter + 1;
                    END LOOP;
            END LOOP;
    END $$;
