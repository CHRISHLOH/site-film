DO $$
    DECLARE
        v_movie_id          INT;
        v_person_ids        INT[];
        v_num_persons       INT;
        v_person_id         INT;
        v_career_ids        INT[];     -- массив всех допустимых career_id
        v_career_id         INT;
        v_persons_priority  INT;
        v_movie_priority    INT;
        v_priorities        INT[];
    BEGIN
        -- 1) Подгружаем все допустимые career_id
        SELECT array_agg(id)
        INTO v_career_ids
        FROM content_service.careers;

        -- 2) Генерируем данные для 1000 фильмов
        FOR v_movie_id IN 1..1100 LOOP
                -- случайно от 5 до 15 участников
                v_num_persons := floor(random()*11 + 5)::INT;

                -- выбираем v_num_persons уникальных person_id
                SELECT array_agg(person_id)
                INTO v_person_ids
                FROM (
                         SELECT generate_series AS person_id
                         FROM generate_series(1,1000)
                         ORDER BY random()
                         LIMIT v_num_persons
                     ) AS sub;

                -- готовим перемешанный список приоритетов 1..v_num_persons
                SELECT array_agg(x)
                INTO v_priorities
                FROM (
                         SELECT generate_series(1, v_num_persons) AS x
                         ORDER BY random()
                     ) AS pr;

                -- вставляем записи
                FOR i IN 1..v_num_persons LOOP
                        v_person_id        := v_person_ids[i];
                        v_persons_priority := v_priorities[i];

                        -- случайный career_id из подгруженных
                        v_career_id := v_career_ids[
                            (floor(random() * array_length(v_career_ids,1)) + 1)::INT
                            ];

                        -- генерируем уникальный movie_priority для этого person_id
                        LOOP
                            v_movie_priority := floor(random()*1100 + 1)::INT;
                            EXIT WHEN NOT EXISTS (
                                SELECT 1
                                FROM content_service.movie_persons
                                WHERE person_id      = v_person_id
                                  AND movie_priority = v_movie_priority
                            );
                        END LOOP;

                        INSERT INTO content_service.movie_persons(
                            movie_id,
                            person_id,
                            career_id,
                            persons_priority,
                            movie_priority
                        ) VALUES (
                                     v_movie_id,
                                     v_person_id,
                                     v_career_id,
                                     v_persons_priority,
                                     v_movie_priority
                                 );
                    END LOOP;
            END LOOP;
    END
$$;
