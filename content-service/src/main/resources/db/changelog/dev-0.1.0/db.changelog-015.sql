DO $$
    DECLARE
  v_person_id    INT;
v_all_careers  INT[];  -- массив всех career_id (1..14)
v_sel_careers  INT[];  -- выбранные 3 career_id для текущего person
BEGIN
-- 1) Подгружаем все допустимые career_id
SELECT array_agg(id)
INTO v_all_careers
FROM content_service.careers;  -- предполагаем, что в этой таблице 14 записей

-- 2) Проходим по каждому person_id от 1 до 1000
FOR v_person_id IN 1..1100 LOOP

    -- 2.1) Выбираем 3 разных career_id
SELECT array_agg(c)
INTO v_sel_careers
FROM (
         SELECT unnest(v_all_careers) AS c
         ORDER BY random()
         LIMIT 3
     ) AS sub;

-- 2.2) Вставляем их в таблицу person_careers
INSERT INTO content_service.person_careers (person_id, career_id)
SELECT v_person_id, unnest(v_sel_careers);

END LOOP;
END
$$;
