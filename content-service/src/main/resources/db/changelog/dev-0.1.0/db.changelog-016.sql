-- Скрипт для PostgreSQL: каждому из 1000 person_id присвоить ровно 3 случайных разных genre_id из 10 доступных

DO $$
    DECLARE
  v_person_id   INT;
v_all_genres  INT[];  -- массив всех genre_id (предполагаем 10 штук в content_service.genres)
v_sel_genres  INT[];  -- выбранные 3 genre_id для текущего person
BEGIN
-- 1) Подгружаем все допустимые genre_id
SELECT array_agg(id)
INTO v_all_genres
FROM content_service.genres;  -- должно вернуть 10 записей

-- 2) Проходим по каждому person_id от 1 до 1000
FOR v_person_id IN 1..1000 LOOP

    -- 2.1) Выбираем 3 разных genre_id
SELECT array_agg(g)
INTO v_sel_genres
FROM (
         SELECT unnest(v_all_genres) AS g
         ORDER BY random()
         LIMIT 3
     ) AS sub;

-- 2.2) Вставляем их в таблицу person_genres
INSERT INTO content_service.person_genres (person_id, genre_id)
SELECT v_person_id, unnest(v_sel_genres);

END LOOP;
END
$$;
