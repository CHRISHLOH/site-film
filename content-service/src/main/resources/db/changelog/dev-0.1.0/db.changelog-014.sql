DO $$
    DECLARE
  v_movie_id     INT;
v_quality_ids  INT[] := ARRAY[1, 2, 3, 4];  -- доступные качества
v_selected     INT[];                      -- случайные качества на фильм
v_limit        INT;                        -- сколько качеств присвоить
BEGIN
    FOR v_movie_id IN 1..1100 LOOP
    -- Для первых 500 фильмов — до 3 качеств, остальных — до 4
    IF v_movie_id <= 550 THEN
      v_limit := floor(random() * 3 + 1)::INT; -- 1..3
ELSE
      v_limit := floor(random() * 4 + 1)::INT; -- 1..4
END IF;

    -- Выбираем случайные качества
SELECT array_agg(q)
INTO v_selected
FROM (
         SELECT unnest(v_quality_ids) AS q
         ORDER BY random()
         LIMIT v_limit
     ) AS sub;

-- Вставка в таблицу movie_qualities
INSERT INTO content_service.movie_quality (movie_id, quality_id)
SELECT v_movie_id, unnest(v_selected);
END LOOP;
END $$;
