DO $$
    DECLARE
  v_all_audio_ids  INT[];    -- все доступные audio_id
v_with1_ids      INT[];    -- список movie_id, где будет audio_id=1
v_movie_id       INT;
v_count_with1    INT;
v_selected       INT[];    -- для хранения уже вставленных audio_id у текущего фильма
v_extra          INT;      -- сколько дополнительных озвучек взять (0..2)
v_other_ids      INT[];    -- audio_id≠1
v_audio_id       INT;
i                INT;
BEGIN
-- 1) Подгружаем все допустимые audio_id из справочника
SELECT array_agg(id)
INTO v_all_audio_ids
FROM content_service.audio_language;

-- 2) Определяем, сколько фильмов (90%) получат audio_id=1
v_count_with1 := ceil(1100 * 0.9)::INT;

  -- 3) Случайно выбираем v_count_with1 уникальных movie_id
SELECT array_agg(movie_id)
INTO v_with1_ids
FROM (
         SELECT movie_id
         FROM generate_series(1,1100) AS movie_id
         ORDER BY random()
         LIMIT v_count_with1
     ) AS sub;

-- 4) Готовим список всех других audio_id (кроме «1»)
SELECT array_agg(x)
INTO v_other_ids
FROM unnest(v_all_audio_ids) AS x
WHERE x <> 1;

-- 5) Генерируем строки
FOR v_movie_id IN 1..1100 LOOP
    v_selected := ARRAY[]::INT[];

    -- a) Если этот фильм попал в «счастливую девятку» — вставляем audio_id=1
IF v_movie_id = ANY(v_with1_ids) THEN
INSERT INTO content_service.movie_audio(movie_id, audio_id)
VALUES (v_movie_id, 1);
v_selected := array_append(v_selected, 1);
END IF;

    -- b) Решаем, сколько ещё озвучек добавить: от 0 до 2,
    --    чтобы в сумме с уже вставленными не получилось больше 3
v_extra := floor(random() * 3)::INT;
v_extra := least(v_extra, 3 - array_length(v_selected,1));

    -- c) Берём v_extra случайных audio_id из v_other_ids
FOR i IN 1..v_extra LOOP
      LOOP
        v_audio_id := v_other_ids[
          (floor(random() * array_length(v_other_ids,1)) + 1)::INT
        ];
EXIT WHEN NOT v_audio_id = ANY(v_selected);
END LOOP;

INSERT INTO content_service.movie_audio(movie_id, audio_id)
VALUES (v_movie_id, v_audio_id);

v_selected := array_append(v_selected, v_audio_id);
END LOOP;
END LOOP;
END
$$;
