DO $$
    DECLARE
  v_movie_id   INT;
v_genre_ids  INT[];  -- список всех доступных жанров
v_movie_genres INT[]; -- случайные жанры на фильм
v_num_genres INT;   -- количество жанров для фильма
BEGIN
-- Получаем список всех жанров
SELECT array_agg(id)
INTO v_genre_ids
FROM content_service.genres;

-- Для каждого фильма от 1 до 1000
FOR v_movie_id IN 1..1100 LOOP
    -- Случайное количество жанров от 2 до 5
    v_num_genres := floor(random()*4 + 2)::INT;

    -- Получаем случайные жанры
SELECT array_agg(id)
INTO v_movie_genres
FROM (
         SELECT unnest(v_genre_ids) AS id
         ORDER BY random()
         LIMIT v_num_genres
     ) AS sub;

-- Вставляем жанры
INSERT INTO content_service.movie_genres (movie_id, genre_id)
SELECT v_movie_id, unnest(v_movie_genres);
END LOOP;
END $$;
