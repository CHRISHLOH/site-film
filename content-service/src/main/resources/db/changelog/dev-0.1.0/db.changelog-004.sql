
WITH p AS (INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
    VALUES ('1985-05-19', 'MALE', 13, 2, 'Samuel', 'Miller', NULL) RETURNING id)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
       SELECT id, 'ru_RU', 'Сэмюэл', 'Миллер', 'Сэмюэл Миллер — британский актёр, получивший признание за свои роли в драматических и исторических фильмах. Известен своей глубокой эмоциональной игрой и харизмой на экране.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
       FROM p
       UNION ALL
       SELECT id, 'en_EN', 'Samuel', 'Miller', 'Samuel Miller is a British actor recognized for his performances in dramatic and historical films. Known for his emotional depth and on-screen charisma.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
       FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-02-07', 'MALE', 7, 4, 'Scott', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Скотт', 'Браун', 'Скотт Браун — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Brown', 'Scott Brown is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-02-02', 'FEMALE', 3, 5, 'Matthew', 'Wong', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэттью', 'Вонг', 'Мэттью Вонг — актриса, получившая признание за свои роли в драматических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Wong', 'Matthew Wong is an actress who has gained recognition for her roles in dramatic projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-09-30', 'MALE', 10, 3, 'Stephen', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Миллер', 'Стивен Миллер — актёр с многолетним опытом работы в кинематографе.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Miller', 'Stephen Miller is an actor with many years of experience in cinematography.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-12-27', 'MALE', 12, 1, 'Holly', 'Ortiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Холли', 'Ортис', 'Холли Ортис — актёр, известный своим участием в независимых фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Holly', 'Ortiz', 'Holly Ortiz is an actor known for his participation in independent films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-06-03', 'FEMALE', 7, 4, 'Joseph', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джозеф', 'Уильямс', 'Джозеф Уильямс — актриса, снявшаяся во множестве популярных проектов.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Williams', 'Joseph Williams is an actress who has appeared in many popular projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-07-28', 'MALE', 6, 2, 'Thomas', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Томас', 'Уильямс', 'Томас Уильямс — актёр с богатой карьерой в театре и кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Williams', 'Thomas Williams is an actor with a rich career in theater and film.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-25', 'MALE', 1, 2, 'Jason', 'Simmons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джейсон', 'Симмонс', 'Джейсон Симмонс — молодой актёр, начинающий свою карьеру в киноиндустрии.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Simmons', 'Jason Simmons is a young actor starting his career in the film industry.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-11-24', 'MALE', 12, 4, 'Amber', 'Cowan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмбер', 'Коуэн', 'Эмбер Коуэн — актёр-ветеран с впечатляющей фильмографией.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amber', 'Cowan', 'Amber Cowan is a veteran actor with an impressive filmography.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-03-10', 'MALE', 15, 3, 'Roger', 'Tanner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роджер', 'Таннер', 'Роджер Таннер — актёр, известный своими разнообразными ролями.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Roger', 'Tanner', 'Roger Tanner is an actor known for his diverse roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-04-30', 'FEMALE', 6, 1, 'Lindsey', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Линдси', 'Чавес', 'Линдси Чавес — актриса, работавшая в различных жанрах кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsey', 'Chavez', 'Lindsey Chavez is an actress who has worked in various film genres.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-06-15', 'MALE', 9, 3, 'Jamie', 'Campbell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джейми', 'Кэмпбелл', 'Джейми Кэмпбелл — молодой и перспективный актёр.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jamie', 'Campbell', 'Jamie Campbell is a young and promising actor.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-12-15', 'MALE', 9, 5, 'Andres', 'Ramos', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Андрес', 'Рамос', 'Андрес Рамос — актёр, снимавшийся в драматических и комедийных фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andres', 'Ramos', 'Andres Ramos is an actor who has appeared in dramatic and comedy films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-03-16', 'MALE', 2, 3, 'Kimberly', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кимберли', 'Рид', 'Кимберли Рид — актёр, известный своими характерными ролями.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Reed', 'Kimberly Reed is an actor known for his character roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-10-05', 'FEMALE', 15, 1, 'adasdasAAA', 'sDSDSD', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'adasdasAAA', 'sDSDSD', 'Актриса, работающая в киноиндустрии.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'adasdasAAA', 'sDSDSD', 'An actress working in the film industry.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-10-05', 'FEMALE', 15, 1, 'Benjamin', 'Ellis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бенджамин', 'Эллис', 'Бенджамин Эллис — актриса с опытом работы в театре и кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Benjamin', 'Ellis', 'Benjamin Ellis is an actress with experience in theater and film.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-09-03', 'MALE', 10, 4, 'Cindy', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Синди', 'Стюарт', 'Синди Стюарт — актёр, известный своими работами на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cindy', 'Stewart', 'Cindy Stewart is an actor known for his work on television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-09-08', 'MALE', 1, 4, 'Aaron', 'Duncan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аарон', 'Дункан', 'Аарон Дункан — актёр, работающий в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Aaron', 'Duncan', 'Aaron Duncan is an actor working in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-03-06', 'MALE', 6, 5, 'Andrea', 'Salinas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Андреа', 'Салинас', 'Андреа Салинас — актёр, снявшийся в различных проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrea', 'Salinas', 'Andrea Salinas is an actor who has appeared in various projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-08-28', 'FEMALE', 9, 1, 'Joseph', 'Howell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джозеф', 'Хауэлл', 'Джозеф Хауэлл — актриса, известная своими драматическими ролями.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Howell', 'Joseph Howell is an actress known for her dramatic roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-12-28', 'MALE', 13, 3, 'Stephanie', 'Richardson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стефани', 'Ричардсон', 'Стефани Ричардсон — актёр с богатым опытом работы в индустрии.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephanie', 'Richardson', 'Stephanie Richardson is an actor with extensive industry experience.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-02-11', 'FEMALE', 2, 5, 'Nicholas', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Николас', 'Миллер', 'Николас Миллер — актриса, работавшая в классических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Miller', 'Nicholas Miller is an actress who has worked in classic films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-12-19', 'MALE', 2, 3, 'Cheryl', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шерил', 'Томпсон', 'Шерил Томпсон — актёр, известный своим вкладом в кинематограф.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cheryl', 'Thompson', 'Cheryl Thompson is an actor known for his contribution to cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-01-26', 'MALE', 8, 4, 'Kevin', 'Griffin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кевин', 'Гриффин', 'Кевин Гриффин — актёр-ветеран с долгой карьерой в индустрии.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Griffin', 'Kevin Griffin is a veteran actor with a long career in the industry.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-11-26', 'FEMALE', 8, 4, 'Jonathan', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джонатан', 'Дэвис', 'Джонатан Дэвис — актриса, известная своими яркими выступлениями.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Davis', 'Jonathan Davis is an actress known for her vibrant performances.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-10-13', 'MALE', 12, 1, 'Stephanie', 'Wolf', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стефани', 'Вулф', 'Стефани Вулф — актёр с многолетним опытом в кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephanie', 'Wolf', 'Stephanie Wolf is an actor with many years of experience in film.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-02-06', 'MALE', 14, 5, 'Heather', 'Paul', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хизер', 'Пол', 'Хизер Пол — актёр, участвовавший в различных кинопроектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Paul', 'Heather Paul is an actor who has participated in various film projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:18 runOnChange:false
--comment: Insert person William White with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-06-23', 'FEMALE', 1, 5, 'William', 'White', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Уайт', 'Уильям Уайт - актриса, родившаяся 23 июня 1945 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'White', 'William White is an actress born on June 23, 1945.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:19 runOnChange:false
--comment: Insert person Jeffrey Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-01-26', 'MALE', 6, 4, 'Jeffrey', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Смит', 'Джеффри Смит - актёр, родившийся 26 января 1947 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Smith', 'Jeffrey Smith is an actor born on January 26, 1947.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:20 runOnChange:false
--comment: Insert person Brandon Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-04-06', 'FEMALE', 4, 5, 'Brandon', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брэндон', 'Смит', 'Брэндон Смит - актриса, родившаяся 6 апреля 1947 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandon', 'Smith', 'Brandon Smith is an actress born on April 6, 1947.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:21 runOnChange:false
--comment: Insert person Laura Mills with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-07-02', 'MALE', 3, 1, 'Laura', 'Mills', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лора', 'Миллс', 'Лора Миллс - актёр, родившийся 2 июля 1978 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Mills', 'Laura Mills is an actor born on July 2, 1978.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:22 runOnChange:false
--comment: Insert person James Hale with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-08-18', 'MALE', 3, 1, 'James', 'Hale', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Хейл', 'Джеймс Хейл - актёр, родившийся 18 августа 1948 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Hale', 'James Hale is an actor born on August 18, 1948.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:23 runOnChange:false
--comment: Insert person Elizabeth Ward with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-04-10', 'MALE', 5, 2, 'Elizabeth', 'Ward', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Элизабет', 'Уорд', 'Элизабет Уорд - актёр, родившийся 10 апреля 1940 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Ward', 'Elizabeth Ward is an actor born on April 10, 1940.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:24 runOnChange:false
--comment: Insert person Randy Vasquez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-01-02', 'MALE', 9, 4, 'Randy', 'Vasquez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рэнди', 'Васкес', 'Рэнди Васкес - актёр, родившийся 2 января 1954 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Randy', 'Vasquez', 'Randy Vasquez is an actor born on January 2, 1954.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:25 runOnChange:false
--comment: Insert person Stephen Willis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-05-18', 'MALE', 12, 2, 'Stephen', 'Willis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Уиллис', 'Стивен Уиллис - актёр, родившийся 18 мая 1979 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Willis', 'Stephen Willis is an actor born on May 18, 1979.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:26 runOnChange:false
--comment: Insert person Jill Peters with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-05-08', 'MALE', 6, 2, 'Jill', 'Peters', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джилл', 'Питерс', 'Джилл Питерс - актёр, родившийся 8 мая 1990 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jill', 'Peters', 'Jill Peters is an actor born on May 8, 1990.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:27 runOnChange:false
--comment: Insert person Richard Torres with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-28', 'FEMALE', 5, 3, 'Richard', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ричард', 'Торрес', 'Ричард Торрес - актриса, родившаяся 28 марта 1962 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Torres', 'Richard Torres is an actress born on March 28, 1962.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:28 runOnChange:false
--comment: Insert person Laura Hoffman with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-08-10', 'FEMALE', 3, 3, 'Laura', 'Hoffman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лора', 'Хоффман', 'Лора Хоффман - актриса, родившаяся 10 августа 1966 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Hoffman', 'Laura Hoffman is an actress born on August 10, 1966.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:29 runOnChange:false
--comment: Insert person Jeffrey Reed with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-09-29', 'FEMALE', 15, 3, 'Jeffrey', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Рид', 'Джеффри Рид - актриса, родившаяся 29 сентября 1991 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Reed', 'Jeffrey Reed is an actress born on September 29, 1991.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:30 runOnChange:false
--comment: Insert person Carlos Keller with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-09-18', 'FEMALE', 9, 3, 'Carlos', 'Keller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Карлос', 'Келлер', 'Карлос Келлер - актриса, родившаяся 18 сентября 2003 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carlos', 'Keller', 'Carlos Keller is an actress born on September 18, 2003.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:31 runOnChange:false
--comment: Insert person Melinda Peck with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-01-07', 'FEMALE', 6, 5, 'Melinda', 'Peck', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мелинда', 'Пек', 'Мелинда Пек - актриса, родившаяся 7 января 1980 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Melinda', 'Peck', 'Melinda Peck is an actress born on January 7, 1980.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:32 runOnChange:false
--comment: Insert person Eric Murray with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-02-17', 'MALE', 10, 2, 'Eric', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрик', 'Мюррей', 'Эрик Мюррей - актёр, родившийся 17 февраля 1977 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eric', 'Murray', 'Eric Murray is an actor born on February 17, 1977.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:33 runOnChange:false
--comment: Insert person Christina Harrison with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-08-06', 'FEMALE', 11, 2, 'Christina', 'Harrison', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Харрисон', 'Кристина Харрисон - актриса, родившаяся 6 августа 1969 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Harrison', 'Christina Harrison is an actress born on August 6, 1969.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:34 runOnChange:false
--comment: Insert person Valerie Wheeler with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-06-17', 'MALE', 3, 5, 'Valerie', 'Wheeler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Валери', 'Уилер', 'Валери Уилер - актёр, родившийся 17 июня 1978 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Valerie', 'Wheeler', 'Valerie Wheeler is an actor born on June 17, 1978.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:35 runOnChange:false
--comment: Insert person Andrew Hawkins with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-06-07', 'MALE', 10, 1, 'Andrew', 'Hawkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эндрю', 'Хокинс', 'Эндрю Хокинс - актёр, родившийся 7 июня 1990 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Hawkins', 'Andrew Hawkins is an actor born on June 7, 1990.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:36 runOnChange:false
--comment: Insert person Taylor Bowers with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Taylor', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тейлор', 'Бауэрс', 'Тейлор Бауэрс - актёр, родившийся 18 июня 1944 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Taylor', 'Bowers', 'Taylor Bowers is an actor born on June 18, 1944.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:37 runOnChange:false
--comment: Insert person Anne Henry with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Anne', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Энн', 'Генри', 'Энн Генри - актриса, родившаяся 20 февраля 1955 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anne', 'Henry', 'Anne Henry is an actress born on February 20, 1955.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:38 runOnChange:false
--comment: Insert person Kristin Alvarez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Kristin', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристин', 'Альварес', 'Кристин Альварес - актёр, родившийся 18 мая 1946 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristin', 'Alvarez', 'Kristin Alvarez is an actor born on May 18, 1946.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:39 runOnChange:false
--comment: Insert person Rachel Skinner with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Rachel', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рейчел', 'Скиннер', 'Рейчел Скиннер - актёр, родившийся 10 ноября 1943 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rachel', 'Skinner', 'Rachel Skinner is an actor born on November 10, 1943.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:40 runOnChange:false
--comment: Insert person Laura Sanders with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Laura', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лора', 'Сандерс', 'Лора Сандерс - актриса, родившаяся 23 сентября 1944 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Sanders', 'Laura Sanders is an actress born on September 23, 1944.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:41 runOnChange:false
--comment: Insert person Kari Watson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Kari', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кари', 'Уотсон', 'Кари Уотсон - актриса, родившаяся 30 августа 1949 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kari', 'Watson', 'Kari Watson is an actress born on August 30, 1949.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:42 runOnChange:false
--comment: Insert person Scott Singh with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-02-23', 'FEMALE', 15, 1, 'Scott', 'Singh', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Скотт', 'Сингх', 'Скотт Сингх - актриса, родившаяся 23 февраля 1945 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Singh', 'Scott Singh is an actress born on February 23, 1945.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:43 runOnChange:false
--comment: Insert person Samantha Cooper with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-12-12', 'FEMALE', 7, 2, 'Samantha', 'Cooper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Саманта', 'Купер', 'Саманта Купер - актриса, родившаяся 12 декабря 1942 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Cooper', 'Samantha Cooper is an actress born on December 12, 1942.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:44 runOnChange:false
--comment: Insert person Hannah Hoffman with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-06-06', 'FEMALE', 15, 1, 'Hannah', 'Hoffman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ханна', 'Хоффман', 'Ханна Хоффман - актриса, родившаяся 6 июня 1974 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Hannah', 'Hoffman', 'Hannah Hoffman is an actress born on June 6, 1974.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:45 runOnChange:false
--comment: Insert person Mary Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-11-08', 'FEMALE', 5, 3, 'Mary', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Смит', 'Мэри Смит - актриса, родившаяся 8 ноября 1992 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Smith', 'Mary Smith is an actress born on November 8, 1992.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:46 runOnChange:false
--comment: Insert person Amy Keith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-10-07', 'MALE', 13, 4, 'Amy', 'Keith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эми', 'Кит', 'Эми Кит - актёр, родившийся 7 октября 1996 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Keith', 'Amy Keith is an actor born on October 7, 1996.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:47 runOnChange:false
--comment: Insert person Zachary Robinson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-02-05', 'MALE', 8, 5, 'Zachary', 'Robinson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Закари', 'Робинсон', 'Закари Робинсон - актёр, родившийся 5 февраля 1977 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Robinson', 'Zachary Robinson is an actor born on February 5, 1977.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


--changeset author:48 runOnChange:false
--comment: Insert person Jeremy Fields with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-09-11', 'MALE', 4, 1, 'Jeremy', 'Fields', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джереми', 'Филдс', 'Джереми Филдс - актёр, родившийся 11 сентября 1975 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeremy', 'Fields', 'Jeremy Fields is an actor born on September 11, 1975.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


--changeset author:49 runOnChange:false
--comment: Insert person Christina Jordan with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-03-24', 'FEMALE', 4, 3, 'Christina', 'Jordan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Джордан', 'Кристина Джордан - актриса, родившаяся 24 марта 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Jordan', 'Christina Jordan is an actress born on March 24, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:50 runOnChange:false
--comment: Insert person Brittany Rice with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-02-18', 'MALE', 5, 3, 'Brittany', 'Rice', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бриттани', 'Райс', 'Бриттани Райс - актёр, родившийся 18 февраля 1962 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Rice', 'Brittany Rice is an actor born on February 18, 1962.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:51 runOnChange:false
--comment: Insert person Willie Gonzalez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-12-29', 'FEMALE', 6, 2, 'Willie', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Вилли', 'Гонсалес', 'Вилли Гонсалес - актриса, родившаяся 29 декабря 1981 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Willie', 'Gonzalez', 'Willie Gonzalez is an actress born on December 29, 1981.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:52 runOnChange:false
--comment: Insert person Jonathan Sanchez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-10-28', 'MALE', 2, 5, 'Jonathan', 'Sanchez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джонатан', 'Санчес', 'Джонатан Санчес - актёр, родившийся 28 октября 1967 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Sanchez', 'Jonathan Sanchez is an actor born on October 28, 1967.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:53 runOnChange:false
--comment: Insert person Brandon Stephenson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-12-20', 'MALE', 9, 1, 'Brandon', 'Stephenson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брэндон', 'Стивенсон', 'Брэндон Стивенсон - актёр, родившийся 20 декабря 1983 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandon', 'Stephenson', 'Brandon Stephenson is an actor born on December 20, 1983.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:54 runOnChange:false
--comment: Insert person Steve Davis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-06-26', 'MALE', 4, 5, 'Steve', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стив', 'Дэвис', 'Стив Дэвис - актёр, родившийся 26 июня 2000 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steve', 'Davis', 'Steve Davis is an actor born on June 26, 2000.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:55 runOnChange:false
--comment: Insert person Sarah Cooper with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-08-16', 'MALE', 12, 2, 'Sarah', 'Cooper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сара', 'Купер', 'Сара Купер - актёр, родившийся 16 августа 1967 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Cooper', 'Sarah Cooper is an actor born on August 16, 1967.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:56 runOnChange:false
--comment: Insert person Jennifer Kramer with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-06-16', 'MALE', 9, 1, 'Jennifer', 'Kramer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Крамер', 'Дженнифер Крамер - актёр, родившийся 16 июня 1992 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Kramer', 'Jennifer Kramer is an actor born on June 16, 1992.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:57 runOnChange:false
--comment: Insert person Steve Jones with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-03-04', 'FEMALE', 12, 3, 'Steve', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стив', 'Джонс', 'Стив Джонс - актриса, родившаяся 4 марта 1952 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steve', 'Jones', 'Steve Jones is an actress born on March 4, 1952.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:58 runOnChange:false
--comment: Insert person Robert Moreno with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-12-03', 'MALE', 15, 2, 'Robert', 'Moreno', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Морено', 'Роберт Морено - актёр, родившийся 3 декабря 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Moreno', 'Robert Moreno is an actor born on December 3, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:59 runOnChange:false
--comment: Insert person Steven West with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-05-25', 'FEMALE', 11, 2, 'Steven', 'West', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Уэст', 'Стивен Уэст - актриса, родившаяся 25 мая 2002 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'West', 'Steven West is an actress born on May 25, 2002.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:60 runOnChange:false
--comment: Insert person Michael Harris with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-04-15', 'FEMALE', 11, 4, 'Michael', 'Harris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Харрис', 'Майкл Харрис - актриса, родившаяся 15 апреля 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Harris', 'Michael Harris is an actress born on April 15, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:61 runOnChange:false
--comment: Insert person Douglas Cross with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-11-02', 'FEMALE', 14, 3, 'Douglas', 'Cross', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дуглас', 'Кросс', 'Дуглас Кросс - актриса, родившаяся 2 ноября 2004 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Douglas', 'Cross', 'Douglas Cross is an actress born on November 2, 2004.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:62 runOnChange:false
--comment: Insert person Mindy Jackson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-04-13', 'MALE', 3, 2, 'Mindy', 'Jackson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Минди', 'Джексон', 'Минди Джексон - актёр, родившийся 13 апреля 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mindy', 'Jackson', 'Mindy Jackson is an actor born on April 13, 1950.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:63 runOnChange:false
--comment: Insert person Heather Jones with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-09-07', 'FEMALE', 8, 1, 'Heather', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хизер', 'Джонс', 'Хизер Джонс - актриса, родившаяся 7 сентября 1966 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Jones', 'Heather Jones is an actress born on September 7, 1966.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:64 runOnChange:false
--comment: Insert person Derrick Perez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-10-08', 'MALE', 5, 1, 'Derrick', 'Perez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Деррик', 'Перес', 'Деррик Перес - актёр, родившийся 8 октября 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Derrick', 'Perez', 'Derrick Perez is an actor born on October 8, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:65 runOnChange:false
--comment: Insert person Michael Gilbert with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-11-17', 'FEMALE', 7, 2, 'Michael', 'Gilbert', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Гилберт', 'Майкл Гилберт - актриса, родившаяся 17 ноября 1985 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Gilbert', 'Michael Gilbert is an actress born on November 17, 1985.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:66 runOnChange:false
--comment: Insert person David Sanders with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-10-12', 'FEMALE', 10, 1, 'David', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Сандерс', 'Дэвид Сандерс - актриса, родившаяся 12 октября 1943 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Sanders', 'David Sanders is an actress born on October 12, 1943.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:67 runOnChange:false
--comment: Insert person Pamela Allen with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-05-23', 'MALE', 8, 3, 'Pamela', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Памела', 'Аллен', 'Памела Аллен - актёр, родившийся 23 мая 2004 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Pamela', 'Allen', 'Pamela Allen is an actor born on May 23, 2004.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:68 runOnChange:false
--comment: Insert person Steven Gilbert with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-04-26', 'MALE', 10, 1, 'Steven', 'Gilbert', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Гилберт', 'Стивен Гилберт - актёр, родившийся 26 апреля 1971 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Gilbert', 'Steven Gilbert is an actor born on April 26, 1971.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:69 runOnChange:false
--comment: Insert person Elizabeth Wagner with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-11-08', 'FEMALE', 15, 5, 'Elizabeth', 'Wagner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Элизабет', 'Вагнер', 'Элизабет Вагнер - актриса, родившаяся 8 ноября 1952 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Wagner', 'Elizabeth Wagner is an actress born on November 8, 1952.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:70 runOnChange:false
--comment: Insert person Michelle Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-07-30', 'MALE', 4, 2, 'Michelle', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мишель', 'Смит', 'Мишель Смит - актёр, родившийся 30 июля 1993 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Smith', 'Michelle Smith is an actor born on July 30, 1993.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:71 runOnChange:false
--comment: Insert person Christina Alvarez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-04-26', 'MALE', 13, 3, 'Christina', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Альварес', 'Кристина Альварес - актёр, родившийся 26 апреля 1988 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Alvarez', 'Christina Alvarez is an actor born on April 26, 1988.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:72 runOnChange:false
--comment: Insert person Phyllis Key with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-11-25', 'MALE', 14, 3, 'Phyllis', 'Key', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Филлис', 'Кей', 'Филлис Кей - актёр, родившийся 25 ноября 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Phyllis', 'Key', 'Phyllis Key is an actor born on November 25, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:73 runOnChange:false
--comment: Insert person Pamela Reyes with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-05-02', 'FEMALE', 12, 2, 'Pamela', 'Reyes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Памела', 'Рейес', 'Памела Рейес - актриса, родившаяся 2 мая 1947 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Pamela', 'Reyes', 'Pamela Reyes is an actress born on May 2, 1947.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:74 runOnChange:false
--comment: Insert person Candace Williams with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-04-24', 'MALE', 7, 4, 'Candace', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэндис', 'Уильямс', 'Кэндис Уильямс - актёр, родившийся 24 апреля 1988 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Candace', 'Williams', 'Candace Williams is an actor born on April 24, 1988.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:75 runOnChange:false
--comment: Insert person David Luna with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-07-01', 'FEMALE', 12, 2, 'David', 'Luna', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Луна', 'Дэвид Луна - актриса, родившаяся 1 июля 1966 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Luna', 'David Luna is an actress born on July 1, 1966.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:76 runOnChange:false
--comment: Insert person Christopher Hartman with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-05-13', 'FEMALE', 10, 2, 'Christopher', 'Hartman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Хартман', 'Кристофер Хартман - актриса, родившаяся 13 мая 1957 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Hartman', 'Christopher Hartman is an actress born on May 13, 1957.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:77 runOnChange:false
--comment: Insert person Melissa Hogan with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-06-05', 'FEMALE', 4, 4, 'Melissa', 'Hogan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мелисса', 'Хоган', 'Мелисса Хоган - актриса, родившаяся 5 июня 1969 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Melissa', 'Hogan', 'Melissa Hogan is an actress born on June 5, 1969.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:78 runOnChange:false
--comment: Insert person Charles Taylor with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-10-16', 'FEMALE', 4, 2, 'Charles', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Чарльз', 'Тейлор', 'Чарльз Тейлор - актриса, родившаяся 16 октября 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Taylor', 'Charles Taylor is an actress born on October 16, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


--changeset author:79 runOnChange:false
--comment: Insert person Anna Howard with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-09-08', 'FEMALE', 12, 5, 'Anna', 'Howard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Анна', 'Ховард', 'Анна Ховард - актриса, родившаяся 8 сентября 2005 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anna', 'Howard', 'Anna Howard is an actress born on September 8, 2005.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:80 runOnChange:false
--comment: Insert person Allison Hubbard with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-06-06', 'MALE', 12, 4, 'Allison', 'Hubbard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эллисон', 'Хаббард', 'Эллисон Хаббард - актер, родившийся 6 июня 1969 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Allison', 'Hubbard', 'Allison Hubbard is an actor born on June 6, 1969.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:81 runOnChange:false
--comment: Insert person John Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-04-05', 'FEMALE', 14, 1, 'John', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Смит', 'Джон Смит - актриса, родившаяся 5 апреля 1991 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Smith', 'John Smith is an actress born on April 5, 1991.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:82 runOnChange:false
--comment: Insert person Mark Harmon with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-03-31', 'FEMALE', 13, 3, 'Mark', 'Harmon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марк', 'Хармон', 'Марк Хармон - актриса, родившаяся 31 марта 1943 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mark', 'Harmon', 'Mark Harmon is an actress born on March 31, 1943.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:83 runOnChange:false
--comment: Insert person Mary West with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-05-23', 'FEMALE', 4, 3, 'Mary', 'West', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Уэст', 'Мэри Уэст - актриса, родившаяся 23 мая 1996 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'West', 'Mary West is an actress born on May 23, 1996.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:84 runOnChange:false
--comment: Insert person Christina Gonzales with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-06-21', 'MALE', 11, 2, 'Christina', 'Gonzales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Гонсалес', 'Кристина Гонсалес - актер, родившийся 21 июня 1975 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Gonzales', 'Christina Gonzales is an actor born on June 21, 1975.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:85 runOnChange:false
--comment: Insert person David Wood with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-10-01', 'MALE', 4, 2, 'David', 'Wood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Вуд', 'Дэвид Вуд - актер, родившийся 1 октября 1999 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Wood', 'David Wood is an actor born on October 1, 1999.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:86 runOnChange:false
--comment: Insert person James Fuller with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-09-20', 'FEMALE', 15, 1, 'James', 'Fuller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Фуллер', 'Джеймс Фуллер - актриса, родившаяся 20 сентября 1977 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Fuller', 'James Fuller is an actress born on September 20, 1977.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:87 runOnChange:false
--comment: Insert person Jennifer Palmer with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-09-22', 'MALE', 4, 3, 'Jennifer', 'Palmer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Палмер', 'Дженнифер Палмер - актер, родившийся 22 сентября 1990 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Palmer', 'Jennifer Palmer is an actor born on September 22, 1990.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:88 runOnChange:false
--comment: Insert person David Henson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-10-13', 'MALE', 6, 5, 'David', 'Henson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Хенсон', 'Дэвид Хенсон - актер, родившийся 13 октября 1966 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Henson', 'David Henson is an actor born on October 13, 1966.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:89 runOnChange:false
--comment: Insert person Danielle Horton with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-10-10', 'MALE', 4, 5, 'Danielle', 'Horton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Даниэль', 'Хортон', 'Даниэль Хортон - актер, родившийся 10 октября 1975 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Danielle', 'Horton', 'Danielle Horton is an actor born on October 10, 1975.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:90 runOnChange:false
--comment: Insert person Brenda Santiago with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-21', 'MALE', 12, 4, 'Brenda', 'Santiago', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бренда', 'Сантьяго', 'Бренда Сантьяго - актер, родившийся 21 июня 1967 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brenda', 'Santiago', 'Brenda Santiago is an actor born on June 21, 1967.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:91 runOnChange:false
--comment: Insert person Jessica Davis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-01-12', 'MALE', 15, 2, 'Jessica', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джессика', 'Дэвис', 'Джессика Дэвис - актер, родившийся 12 января 1978 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Davis', 'Jessica Davis is an actor born on January 12, 1978.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:92 runOnChange:false
--comment: Insert person Kyle Fuller with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-10-12', 'FEMALE', 13, 5, 'Kyle', 'Fuller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кайл', 'Фуллер', 'Кайл Фуллер - актриса, родившаяся 12 октября 1973 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kyle', 'Fuller', 'Kyle Fuller is an actress born on October 12, 1973.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:93 runOnChange:false
--comment: Insert person Lauren Baker with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-12-07', 'MALE', 6, 3, 'Lauren', 'Baker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лорен', 'Бейкер', 'Лорен Бейкер - актер, родившийся 7 декабря 1995 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Baker', 'Lauren Baker is an actor born on December 7, 1995.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:94 runOnChange:false
--comment: Insert person Michelle Martinez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-01-24', 'MALE', 8, 4, 'Michelle', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мишель', 'Мартинез', 'Мишель Мартинез - актер, родившийся 24 января 1965 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Martinez', 'Michelle Martinez is an actor born on January 24, 1965.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:95 runOnChange:false
--comment: Insert person Stacy Jenkins with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-11-25', 'FEMALE', 14, 3, 'Stacy', 'Jenkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стейси', 'Дженкинс', 'Стейси Дженкинс - актриса, родившаяся 25 ноября 1964 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacy', 'Jenkins', 'Stacy Jenkins is an actress born on November 25, 1964.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:96 runOnChange:false
--comment: Insert person Robert Gomez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-24', 'FEMALE', 14, 1, 'Robert', 'Gomez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Гомес', 'Роберт Гомес - актриса, родившаяся 24 мая 1946 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Gomez', 'Robert Gomez is an actress born on May 24, 1946.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:97 runOnChange:false
--comment: Insert person Amanda Thompson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-01-03', 'MALE', 5, 3, 'Amanda', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Томпсон', 'Аманда Томпсон - актер, родившийся 3 января 1945 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Thompson', 'Amanda Thompson is an actor born on January 3, 1945.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:98 runOnChange:false
--comment: Insert person Christine Hill with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-09-08', 'MALE', 14, 4, 'Christine', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристин', 'Хилл', 'Кристин Хилл - актер, родившийся 8 сентября 2004 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christine', 'Hill', 'Christine Hill is an actor born on September 8, 2004.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:99 runOnChange:false
--comment: Insert person Teresa Bray with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-08-23', 'FEMALE', 4, 1, 'Teresa', 'Bray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тереза', 'Брей', 'Тереза Брей - актриса, родившаяся 23 августа 1948 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Teresa', 'Bray', 'Teresa Bray is an actress born on August 23, 1948.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:100 runOnChange:false
--comment: Insert person Lisa Stewart with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-12-03', 'FEMALE', 4, 2, 'Lisa', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лиза', 'Стюарт', 'Лиза Стюарт - актриса, родившаяся 3 декабря 1946 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Stewart', 'Lisa Stewart is an actress born on December 3, 1946.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:101 runOnChange:false
--comment: Insert person Christopher Dennis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-01-09', 'MALE', 6, 3, 'Christopher', 'Dennis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Деннис', 'Кристофер Деннис - актер, родившийся 9 января 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Dennis', 'Christopher Dennis is an actor born on January 9, 1950.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:102 runOnChange:false
--comment: Insert person Pedro Berg with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-04-20', 'MALE', 4, 3, 'Pedro', 'Berg', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Педро', 'Берг', 'Педро Берг - актер, родившийся 20 апреля 1962 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Pedro', 'Berg', 'Pedro Berg is an actor born on April 20, 1962.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:103 runOnChange:false
--comment: Insert person Martin Rogers with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-07-15', 'FEMALE', 6, 1, 'Martin', 'Rogers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мартин', 'Роджерс', 'Мартин Роджерс - актриса, родившаяся 15 июля 1967 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Martin', 'Rogers', 'Martin Rogers is an actress born on July 15, 1967.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:104 runOnChange:false
--comment: Insert person Chad Glass with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-09-11', 'MALE', 15, 4, 'Chad', 'Glass', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Чад', 'Гласс', 'Чад Гласс - актер, родившийся 11 сентября 1980 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Chad', 'Glass', 'Chad Glass is an actor born on September 11, 1980.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:105 runOnChange:false
--comment: Insert person Amanda Thomas with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-11-02', 'MALE', 8, 1, 'Amanda', 'Thomas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Томас', 'Аманда Томас - актер, родившийся 2 ноября 1957 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Thomas', 'Amanda Thomas is an actor born on November 2, 1957.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:106 runOnChange:false
--comment: Insert person Travis Mendez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-10-26', 'FEMALE', 3, 2, 'Travis', 'Mendez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Трэвис', 'Мендес', 'Трэвис Мендес - актриса, родившаяся 26 октября 2005 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Travis', 'Mendez', 'Travis Mendez is an actress born on October 26, 2005.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:107 runOnChange:false
--comment: Insert person David Ruiz with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-03-21', 'FEMALE', 2, 5, 'David', 'Ruiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Руис', 'Дэвид Руис - актриса, родившаяся 21 марта 1964 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Ruiz', 'David Ruiz is an actress born on March 21, 1964.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:108 runOnChange:false
--comment: Insert person Tyler Richardson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-12-11', 'MALE', 10, 4, 'Tyler', 'Richardson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тайлер', 'Ричардсон', 'Тайлер Ричардсон - актер, родившийся 11 декабря 1957 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tyler', 'Richardson', 'Tyler Richardson is an actor born on December 11, 1957.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:109 runOnChange:false
--comment: Insert person Thomas Grant with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-09-24', 'FEMALE', 13, 4, 'Thomas', 'Grant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Томас', 'Грант', 'Томас Грант - актриса, родившаяся 24 сентября 1972 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Grant', 'Thomas Grant is an actress born on September 24, 1972.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:110 runOnChange:false
--comment: Insert person Elizabeth Lucas with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-11-29', 'FEMALE', 10, 3, 'Elizabeth', 'Lucas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Элизабет', 'Лукас', 'Элизабет Лукас - актриса, родившаяся 29 ноября 1971 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Lucas', 'Elizabeth Lucas is an actress born on November 29, 1971.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:111 runOnChange:false
--comment: Insert person Cody Brewer with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-06-19', 'MALE', 10, 1, 'Cody', 'Brewer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Коди', 'Брюэр', 'Коди Брюэр - актер, родившийся 19 июня 2000 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cody', 'Brewer', 'Cody Brewer is an actor born on June 19, 2000.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:112 runOnChange:false
--comment: Insert person Diane Crawford with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-11-23', 'MALE', 6, 2, 'Diane', 'Crawford', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Диана', 'Кроуфорд', 'Диана Кроуфорд - актер, родившийся 23 ноября 2003 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diane', 'Crawford', 'Diane Crawford is an actor born on November 23, 2003.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


--changeset author:113 runOnChange:false
--comment: Insert person Laura Navarro with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-07-24', 'FEMALE', 3, 4, 'Laura', 'Navarro', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лаура', 'Наварро', 'Лаура Наварро - актриса, родившаяся 24 июля 1995 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Navarro', 'Laura Navarro is an actress born on July 24, 1995.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:114 runOnChange:false
--comment: Insert person Jeffery Solis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-09-23', 'MALE', 11, 1, 'Jeffery', 'Solis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Солис', 'Джеффри Солис - актер, родившийся 23 сентября 1971 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffery', 'Solis', 'Jeffery Solis is an actor born on September 23, 1971.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:115 runOnChange:false
--comment: Insert person Hannah Sims with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-01-04', 'MALE', 13, 1, 'Hannah', 'Sims', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ханна', 'Симс', 'Ханна Симс - актер, родившийся 4 января 1983 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Hannah', 'Sims', 'Hannah Sims is an actor born on January 4, 1983.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:116 runOnChange:false
--comment: Insert person Christopher Davis with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-04-06', 'MALE', 15, 1, 'Christopher', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Дэвис', 'Кристофер Дэвис - актер, родившийся 6 апреля 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Davis', 'Christopher Davis is an actor born on April 6, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:117 runOnChange:false
--comment: Insert person Kimberly Terrell with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-01-11', 'FEMALE', 7, 5, 'Kimberly', 'Terrell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кимберли', 'Терелл', 'Кимберли Терелл - актриса, родившаяся 11 января 1944 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Terrell', 'Kimberly Terrell is an actress born on January 11, 1944.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:118 runOnChange:false
--comment: Insert person Rebecca Stewart with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-03-24', 'MALE', 7, 3, 'Rebecca', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ребекка', 'Стюарт', 'Ребекка Стюарт - актер, родившийся 24 марта 1940 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rebecca', 'Stewart', 'Rebecca Stewart is an actor born on March 24, 1940.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:119 runOnChange:false
--comment: Insert person Brian Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-08-19', 'MALE', 12, 1, 'Brian', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брайан', 'Смит', 'Брайан Смит - актер, родившийся 19 августа 1996 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Smith', 'Brian Smith is an actor born on August 19, 1996.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:120 runOnChange:false
--comment: Insert person Cassandra Hodges with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-05-09', 'MALE', 1, 3, 'Cassandra', 'Hodges', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кассандра', 'Ходжес', 'Кассандра Ходжес - актер, родившийся 9 мая 1948 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cassandra', 'Hodges', 'Cassandra Hodges is an actor born on May 9, 1948.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:121 runOnChange:false
--comment: Insert person Ian Madden with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-08-15', 'MALE', 6, 3, 'Ian', 'Madden', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Иан', 'Мэдден', 'Иан Мэдден - актер, родившийся 15 августа 1991 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ian', 'Madden', 'Ian Madden is an actor born on August 15, 1991.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:122 runOnChange:false
--comment: Insert person Amanda Clark with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-02-03', 'FEMALE', 1, 5, 'Amanda', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Кларк', 'Аманда Кларк - актриса, родившаяся 3 февраля 1948 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Clark', 'Amanda Clark is an actress born on February 3, 1948.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:123 runOnChange:false
--comment: Insert person Emma Morrison with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-02-18', 'MALE', 5, 1, 'Emma', 'Morrison', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмма', 'Моррисон', 'Эмма Моррисон - актер, родившийся 18 февраля 1984 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emma', 'Morrison', 'Emma Morrison is an actor born on February 18, 1984.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:124 runOnChange:false
--comment: Insert person Mariah Garcia with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-06-29', 'FEMALE', 5, 3, 'Mariah', 'Garcia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мария', 'Гарсия', 'Мария Гарсия - актриса, родившаяся 29 июня 1981 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mariah', 'Garcia', 'Mariah Garcia is an actress born on June 29, 1981.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:125 runOnChange:false
--comment: Insert person Victoria Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-03-17', 'FEMALE', 15, 4, 'Victoria', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Виктория', 'Смит', 'Виктория Смит - актриса, родившаяся 17 марта 1944 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Victoria', 'Smith', 'Victoria Smith is an actress born on March 17, 1944.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:126 runOnChange:false
--comment: Insert person Lauren Mitchell with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-12-14', 'MALE', 6, 1, 'Lauren', 'Mitchell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лорен', 'Митчелл', 'Лорен Митчелл - актер, родившийся 14 декабря 1984 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Mitchell', 'Lauren Mitchell is an actor born on December 14, 1984.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:127 runOnChange:false
--comment: Insert person Joseph Murphy with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-02-17', 'MALE', 10, 2, 'Joseph', 'Murphy', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джозеф', 'Мерфи', 'Джозеф Мерфи - актер, родившийся 17 февраля 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Murphy', 'Joseph Murphy is an actor born on February 17, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:128 runOnChange:false
--comment: Insert person Steven Thomas with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-10-10', 'FEMALE', 4, 1, 'Steven', 'Thomas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Томас', 'Стивен Томас - актриса, родившаяся 10 октября 1994 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Thomas', 'Steven Thomas is an actress born on October 10, 1994.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:129 runOnChange:false
--comment: Insert person Joshua Lopez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-07-13', 'FEMALE', 7, 2, 'Joshua', 'Lopez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Лопес', 'Джошуа Лопес - актриса, родившаяся 13 июля 1963 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Lopez', 'Joshua Lopez is an actress born on July 13, 1963.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:130 runOnChange:false
--comment: Insert person Daniel Reid with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-11-16', 'FEMALE', 12, 3, 'Daniel', 'Reid', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэниел', 'Рид', 'Дэниел Рид - актриса, родившаяся 16 ноября 2005 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Reid', 'Daniel Reid is an actress born on November 16, 2005.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:131 runOnChange:false
--comment: Insert person Carolyn Murray with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-09-01', 'MALE', 2, 3, 'Carolyn', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэролин', 'Мюррей', 'Кэролин Мюррей - актер, родившийся 1 сентября 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carolyn', 'Murray', 'Carolyn Murray is an actor born on September 1, 1950.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:132 runOnChange:false
--comment: Insert person Johnathan Clark with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-05-14', 'FEMALE', 13, 4, 'Johnathan', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джонатан', 'Кларк', 'Джонатан Кларк - актриса, родившаяся 14 мая 1982 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Johnathan', 'Clark', 'Johnathan Clark is an actress born on May 14, 1982.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:133 runOnChange:false
--comment: Insert person Phyllis Camacho with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-09-21', 'FEMALE', 9, 1, 'Phyllis', 'Camacho', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Филлис', 'Камачо', 'Филлис Камачо - актриса, родившаяся 21 сентября 1947 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Phyllis', 'Camacho', 'Phyllis Camacho is an actress born on September 21, 1947.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:134 runOnChange:false
--comment: Insert person Victor Gregory with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-11-24', 'FEMALE', 7, 5, 'Victor', 'Gregory', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Виктор', 'Грегори', 'Виктор Грегори - актриса, родившаяся 24 ноября 1972 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Victor', 'Gregory', 'Victor Gregory is an actress born on November 24, 1972.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:135 runOnChange:false
--comment: Insert person Ellen Rosales with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-12-14', 'MALE', 9, 1, 'Ellen', 'Rosales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эллен', 'Розалес', 'Эллен Розалес - актер, родившийся 14 декабря 1974 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ellen', 'Rosales', 'Ellen Rosales is an actor born on December 14, 1974.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:136 runOnChange:false
--comment: Insert person Molly Silva with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-07-12', 'FEMALE', 3, 5, 'Molly', 'Silva', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Молли', 'Силва', 'Молли Силва - актриса, родившаяся 12 июля 1976 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Molly', 'Silva', 'Molly Silva is an actress born on July 12, 1976.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:137 runOnChange:false
--comment: Insert person Theresa Ray with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-05-03', 'FEMALE', 8, 2, 'Theresa', 'Ray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тереза', 'Рей', 'Тереза Рей - актриса, родившаяся 3 мая 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Theresa', 'Ray', 'Theresa Ray is an actress born on May 3, 1950.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:138 runOnChange:false
--comment: Insert person Kristin Pineda with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-10-23', 'MALE', 14, 5, 'Kristin', 'Pineda', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристин', 'Пинеда', 'Кристин Пинеда - актер, родившийся 23 октября 1995 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristin', 'Pineda', 'Kristin Pineda is an actor born on October 23, 1995.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:16 runOnChange:false
--comment: Insert person Debbie Lee with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-12-27', 'FEMALE', 8, 3, 'Debbie', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дебби', 'Ли', 'Дебби Ли - актриса, родившаяся 27 декабря 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Debbie', 'Lee', 'Debbie Lee is an actress born on December 27, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:17 runOnChange:false
--comment: Insert person Cory Savage with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-02-05', 'MALE', 5, 1, 'Cory', 'Savage', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кори', 'Сэвидж', 'Кори Сэвидж - актер, родившийся 5 февраля 1945 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cory', 'Savage', 'Cory Savage is an actor born on February 5, 1945.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:18 runOnChange:false
--comment: Insert person David Brown with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-11-14', 'FEMALE', 14, 4, 'David', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Браун', 'Дэвид Браун - актриса, родившаяся 14 ноября 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Bryant', 'David Bryant is an actor born on November 29, 1959.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:50 runOnChange:false
--comment: Insert person Robert Reed with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-03-10', 'FEMALE', 10, 2, 'Robert', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Рид', 'Роберт Рид - актриса, родившаяся 10 марта 1983 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Reed', 'Robert Reed is an actress born on March 10, 1983.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:51 runOnChange:false
--comment: Insert person Nicole Burke with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-04-15', 'FEMALE', 1, 2, 'Nicole', 'Burke', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Николь', 'Берк', 'Николь Берк - актриса, родившаяся 15 апреля 1992 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Burke', 'Nicole Burke is an actress born on April 15, 1992.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:52 runOnChange:false
--comment: Insert person Parker Williams with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-02-13', 'FEMALE', 9, 4, 'Parker', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Паркер', 'Уильямс', 'Паркер Уильямс - актриса, родившаяся 13 февраля 1963 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Parker', 'Williams', 'Parker Williams is an actress born on February 13, 1963.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:53 runOnChange:false
--comment: Insert person George Thompson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-08-05', 'MALE', 9, 5, 'George', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джордж', 'Томпсон', 'Джордж Томпсон - актер, родившийся 5 августа 1956 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'George', 'Thompson', 'George Thompson is an actor born on August 5, 1956.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:54 runOnChange:false
--comment: Insert person Erik Contreras with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-02-20', 'MALE', 7, 2, 'Erik', 'Contreras', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрик', 'Контрерас', 'Эрик Контрерас - актер, родившийся 20 февраля 1971 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erik', 'Contreras', 'Erik Contreras is an actor born on February 20, 1971.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:55 runOnChange:false
--comment: Insert person James Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-11-14', 'MALE', 7, 3, 'James', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Смит', 'Джеймс Смит - актер, родившийся 14 ноября 1968 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Smith', 'James Smith is an actor born on November 14, 1968.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:56 runOnChange:false
--comment: Insert person Darrell Myers with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-06-29', 'FEMALE', 2, 5, 'Darrell', 'Myers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Даррелл', 'Майерс', 'Даррелл Майерс - актриса, родившаяся 29 июня 1945 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Darrell', 'Myers', 'Darrell Myers is an actress born on June 29, 1945.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:57 runOnChange:false
--comment: Insert person Logan Pierce with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-07-18', 'FEMALE', 12, 3, 'Logan', 'Pierce', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Логан', 'Пирс', 'Логан Пирс - актриса, родившаяся 18 июля 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Logan', 'Pierce', 'Logan Pierce is an actress born on July 18, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:58 runOnChange:false
--comment: Insert person Joshua Anderson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-07-21', 'FEMALE', 1, 3, 'Joshua', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Андерсон', 'Джошуа Андерсон - актриса, родившаяся 21 июля 2002 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Anderson', 'Joshua Anderson is an actress born on July 21, 2002.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:59 runOnChange:false
--comment: Insert person Stacey Thompson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-06-23', 'MALE', 13, 3, 'Stacey', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стейси', 'Томпсон', 'Стейси Томпсон - актер, родившийся 23 июня 1957 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacey', 'Thompson', 'Stacey Thompson is an actor born on June 23, 1957.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:60 runOnChange:false
--comment: Insert person Emily Murray with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-08-28', 'FEMALE', 3, 3, 'Emily', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмили', 'Мюррей', 'Эмили Мюррей - актриса, родившаяся 28 августа 1986 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Murray', 'Emily Murray is an actress born on August 28, 1986.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:61 runOnChange:false
--comment: Insert person Victoria Holmes with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-04-28', 'FEMALE', 9, 4, 'Victoria', 'Holmes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Виктория', 'Холмс', 'Виктория Холмс - актриса, родившаяся 28 апреля 1998 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Victoria', 'Holmes', 'Victoria Holmes is an actress born on April 28, 1998.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:62 runOnChange:false
--comment: Insert person Maria Cook with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-10-01', 'MALE', 8, 1, 'Maria', 'Cook', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мария', 'Кук', 'Мария Кук - актер, родившийся 1 октября 1999 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maria', 'Cook', 'Maria Cook is an actor born on October 1, 1999.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:63 runOnChange:false
--comment: Insert person Julia Harper with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-10-03', 'MALE', 7, 4, 'Julia', 'Harper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джулия', 'Харпер', 'Джулия Харпер - актер, родившийся 3 октября 1941 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julia', 'Harper', 'Julia Harper is an actor born on October 3, 1941.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:64 runOnChange:false
--comment: Insert person Lydia Stevenson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-02-18', 'FEMALE', 12, 3, 'Lydia', 'Stevenson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лидия', 'Стивенсон', 'Лидия Стивенсон - актриса, родившаяся 18 февраля 1982 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lydia', 'Stevenson', 'Lydia Stevenson is an actress born on February 18, 1982.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:65 runOnChange:false
--comment: Insert person Mario Arnold with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-12-14', 'FEMALE', 9, 3, 'Mario', 'Arnold', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марио', 'Арнольд', 'Марио Арнольд - актриса, родившаяся 14 декабря 1956 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mario', 'Arnold', 'Mario Arnold is an actress born on December 14, 1956.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:66 runOnChange:false
--comment: Insert person Jeffrey Williams with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-06-11', 'MALE', 10, 4, 'Jeffrey', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Уильямс', 'Джеффри Уильямс - актер, родившийся 11 июня 1987 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Williams', 'Jeffrey Williams is an actor born on June 11, 1987.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:67 runOnChange:false
--comment: Insert person Kelly Harvey with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-12-23', 'FEMALE', 11, 5, 'Kelly', 'Harvey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Келли', 'Харви', 'Келли Харви - актриса, родившаяся 23 декабря 1988 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Harvey', 'Kelly Harvey is an actress born on December 23, 1988.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:68 runOnChange:false
--comment: Insert person Paula Riddle with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-03-15', 'MALE', 6, 3, 'Paula', 'Riddle', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Паула', 'Риддл', 'Паула Риддл - актер, родившийся 15 марта 1964 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Paula', 'Riddle', 'Paula Riddle is an actor born on March 15, 1964.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:69 runOnChange:false
--comment: Insert person Michael Mejia with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-07-13', 'FEMALE', 7, 3, 'Michael', 'Mejia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Мехия', 'Майкл Мехия - актриса, родившаяся 13 июля 1940 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Mejia', 'Michael Mejia is an actress born on July 13, 1940.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:70 runOnChange:false
--comment: Insert person Jennifer Nash with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-10-27', 'FEMALE', 6, 2, 'Jennifer', 'Nash', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Нэш', 'Дженнифер Нэш - актриса, родившаяся 27 октября 1969 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Nash', 'Jennifer Nash is an actress born on October 27, 1969.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:71 runOnChange:false
--comment: Insert person Daniel Harris with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-10-02', 'FEMALE', 10, 3, 'Daniel', 'Harris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэниел', 'Харрис', 'Дэниел Харрис - актриса, родившаяся 2 октября 1980 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Harris', 'Daniel Harris is an actress born on October 2, 1980.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:72 runOnChange:false
--comment: Insert person Katie Mora with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-03-20', 'MALE', 11, 1, 'Katie', 'Mora', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэти', 'Мора', 'Кэти Мора - актер, родившийся 20 марта 1991 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Katie', 'Mora', 'Katie Mora is an actor born on March 20, 1991.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:73 runOnChange:false
--comment: Insert person Michael Gonzalez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-02-27', 'MALE', 6, 2, 'Michael', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Гонсалес', 'Майкл Гонсалес - актер, родившийся 27 февраля 1961 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Gonzalez', 'Michael Gonzalez is an actor born on February 27, 1961.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:74 runOnChange:false
--comment: Insert person Felicia Obrien with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-11-21', 'MALE', 3, 3, 'Felicia', 'Obrien', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Фелиция', 'О''Брайен', 'Фелиция О''Брайен - актер, родившийся 21 ноября 1950 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Felicia', 'Obrien', 'Felicia Obrien is an actor born on November 21, 1950.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:75 runOnChange:false
--comment: Insert person Kristina Burnett with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-03-05', 'MALE', 12, 1, 'Kristina', 'Burnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Бернетт', 'Кристина Бернетт - актер, родившийся 5 марта 1952 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristina', 'Burnett', 'Kristina Burnett is an actor born on March 5, 1952.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:76 runOnChange:false
--comment: Insert person Joanna Powell with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-02', 'FEMALE', 10, 3, 'Joanna', 'Powell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джоанна', 'Пауэлл', 'Джоанна Пауэлл - актриса, родившаяся 2 августа 2003 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joanna', 'Powell', 'Joanna Powell is an actress born on August 2, 2003.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:77 runOnChange:false
--comment: Insert person Brandi Conway with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-07-21', 'MALE', 3, 3, 'Brandi', 'Conway', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бранди', 'Конвей', 'Бранди Конвей - актер, родившийся 21 июля 2000 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandi', 'Conway', 'Brandi Conway is an actor born on July 21, 2000.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:78 runOnChange:false
--comment: Insert person John Taylor with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-08-04', 'FEMALE', 15, 5, 'John', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Тейлор', 'Джон Тейлор - актриса, родившаяся 4 августа 1965 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Taylor', 'John Taylor is an actress born on August 4, 1965.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:79 runOnChange:false
--comment: Insert person Kara Howard with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-03-04', 'FEMALE', 11, 5, 'Kara', 'Howard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кара', 'Ховард', 'Кара Ховард - актриса, родившаяся 4 марта 1964 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kara', 'Howard', 'Kara Howard is an actress born on March 4, 1964.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:80 runOnChange:false
--comment: Insert person Joshua Khan with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-05-24', 'FEMALE', 1, 2, 'Joshua', 'Khan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Хан', 'Джошуа Хан - актриса, родившаяся 24 мая 1951 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Khan', 'Joshua Khan is an actress born on May 24, 1951.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:81 runOnChange:false
--comment: Insert person Carol Rivera with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-03-01', 'FEMALE', 9, 2, 'Carol', 'Rivera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэрол', 'Ривера', 'Кэрол Ривера - актриса, родившаяся 1 марта 1977 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carol', 'Rivera', 'Carol Rivera is an actress born on March 1, 1977.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:82 runOnChange:false
--comment: Insert person Sean Warren with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-06-30', 'MALE', 5, 3, 'Sean', 'Warren', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шон', 'Уоррен', 'Шон Уоррен - актер, родившийся 30 июня 1953 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sean', 'Warren', 'Sean Warren is an actor born on June 30, 1953.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:83 runOnChange:false
--comment: Insert person Anne Collins with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-11-13', 'FEMALE', 5, 5, 'Anne', 'Collins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Анни', 'Коллинс', 'Анни колинс родилась в 1975 году', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anne', 'Collins', 'Anne Collins eas born in 1975', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:19 runOnChange:false
--comment: Insert person Jennifer Pham with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-07-04', 'FEMALE', 14, 5, 'Jennifer', 'Pham', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Фам', 'Дженнифер Фам - актриса, родившаяся 4 июля 1982 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Pham', 'Jennifer Pham is an actress born on July 4, 1982.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:20 runOnChange:false
--comment: Insert person Taylor Pratt with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-11-06', 'MALE', 14, 3, 'Taylor', 'Pratt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тейлор', 'Пратт', 'Тейлор Пратт - актер, родившийся 6 ноября 1954 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Taylor', 'Pratt', 'Taylor Pratt is an actor born on November 6, 1954.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:21 runOnChange:false
--comment: Insert person Dawn Reyes with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-06-12', 'MALE', 6, 1, 'Dawn', 'Reyes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Доун', 'Рейес', 'Доун Рейес - актер, родившийся 12 июня 1960 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dawn', 'Reyes', 'Dawn Reyes is an actor born on June 12, 1960.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:22 runOnChange:false
--comment: Insert person Kyle Hill with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-11-19', 'FEMALE', 4, 5, 'Kyle', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кайл', 'Хилл', 'Кайл Хилл - актриса, родившаяся 19 ноября 1971 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kyle', 'Hill', 'Kyle Hill is an actress born on November 19, 1971.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:23 runOnChange:false
--comment: Insert person David Williams with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-01-18', 'MALE', 4, 5, 'David', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Уильямс', 'Дэвид Уильямс - актер, родившийся 18 января 1966 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Williams', 'David Williams is an actor born on January 18, 1966.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:24 runOnChange:false
--comment: Insert person Carlos Brewer with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-11-14', 'FEMALE', 7, 2, 'Carlos', 'Brewer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Карлос', 'Брюэр', 'Карлос Брюэр - актриса, родившаяся 14 ноября 1998 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carlos', 'Brewer', 'Carlos Brewer is an actress born on November 14, 1998.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:25 runOnChange:false
--comment: Insert person Larry King with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-03-08', 'MALE', 2, 5, 'Larry', 'King', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ларри', 'Кинг', 'Ларри Кинг - актер, родившийся 8 марта 1997 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Larry', 'King', 'Larry King is an actor born on March 8, 1997.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:26 runOnChange:false
--comment: Insert person Micheal Rivera with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-02-07', 'FEMALE', 4, 2, 'Micheal', 'Rivera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Ривера', 'Майкл Ривера - актриса, родившаяся 7 февраля 1946 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Micheal', 'Rivera', 'Micheal Rivera is an actress born on February 7, 1946.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:27 runOnChange:false
--comment: Insert person Kathleen Thomas with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-04-13', 'FEMALE', 3, 1, 'Kathleen', 'Thomas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэтлин', 'Томас', 'Кэтлин Томас - актриса, родившаяся 13 апреля 1998 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathleen', 'Thomas', 'Kathleen Thomas is an actress born on April 13, 1998.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:28 runOnChange:false
--comment: Insert person Felicia Stewart with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-02-23', 'MALE', 1, 4, 'Felicia', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Фелиция', 'Стюарт', 'Фелиция Стюарт - актер, родившийся 23 февраля 1960 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Felicia', 'Stewart', 'Felicia Stewart is an actor born on February 23, 1960.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:29 runOnChange:false
--comment: Insert person Matthew Poole with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-12-29', 'FEMALE', 15, 5, 'Matthew', 'Poole', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэттью', 'Пул', 'Мэттью Пул - актриса, родившаяся 29 декабря 1985 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Poole', 'Matthew Poole is an actress born on December 29, 1985.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:30 runOnChange:false
--comment: Insert person Paul Wallace with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-04-24', 'FEMALE', 5, 5, 'Paul', 'Wallace', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Пол', 'Уоллес', 'Пол Уоллес - актриса, родившаяся 24 апреля 1998 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Paul', 'Wallace', 'Paul Wallace is an actress born on April 24, 1998.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:31 runOnChange:false
--comment: Insert person Joshua Smith with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-12-25', 'FEMALE', 7, 1, 'Joshua', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Смит', 'Джошуа Смит - актриса, родившаяся 25 декабря 1997 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Smith', 'Joshua Smith is an actress born on December 25, 1997.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:32 runOnChange:false
--comment: Insert person Monique Steele with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-07-03', 'MALE', 13, 2, 'Monique', 'Steele', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Моник', 'Стил', 'Моник Стил - актер, родившийся 3 июля 1970 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Monique', 'Steele', 'Monique Steele is an actor born on July 3, 1970.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:33 runOnChange:false
--comment: Insert person Travis Dickerson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-11-27', 'MALE', 6, 1, 'Travis', 'Dickerson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Трэвис', 'Дикерсон', 'Трэвис Дикерсон - актер, родившийся 27 ноября 1982 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Travis', 'Dickerson', 'Travis Dickerson is an actor born on November 27, 1982.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:34 runOnChange:false
--comment: Insert person James Freeman with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-02-21', 'FEMALE', 6, 5, 'James', 'Freeman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Фриман', 'Джеймс Фриман - актриса, родившаяся 21 февраля 1956 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Freeman', 'James Freeman is an actress born on February 21, 1956.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:35 runOnChange:false
--comment: Insert person Sydney Cohen with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-03-16', 'MALE', 8, 2, 'Sydney', 'Cohen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сидней', 'Коэн', 'Сидней Коэн - актер, родившийся 16 марта 1996 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sydney', 'Cohen', 'Sydney Cohen is an actor born on March 16, 1996.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:36 runOnChange:false
--comment: Insert person Tracey Herrera with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-08-19', 'FEMALE', 11, 1, 'Tracey', 'Herrera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Трейси', 'Эррера', 'Трейси Эррера - актриса, родившаяся 19 августа 1997 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tracey', 'Herrera', 'Tracey Herrera is an actress born on August 19, 1997.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:37 runOnChange:false
--comment: Insert person Marcus Johnston with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-06-25', 'FEMALE', 11, 4, 'Marcus', 'Johnston', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Маркус', 'Джонстон', 'Маркус Джонстон - актриса, родившаяся 25 июня 1978 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marcus', 'Johnston', 'Marcus Johnston is an actress born on June 25, 1978.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:38 runOnChange:false
--comment: Insert person Bryan Frye with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-11-06', 'FEMALE', 14, 1, 'Bryan', 'Frye', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брайан', 'Фрай', 'Брайан Фрай - актриса, родившаяся 6 ноября 1951 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bryan', 'Frye', 'Bryan Frye is an actress born on November 6, 1951.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:39 runOnChange:false
--comment: Insert person Joel Castaneda with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-12-14', 'FEMALE', 14, 3, 'Joel', 'Castaneda', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джоэл', 'Кастанеда', 'Джоэл Кастанеда - актриса, родившаяся 14 декабря 1949 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joel', 'Castaneda', 'Joel Castaneda is an actress born on December 14, 1949.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:40 runOnChange:false
--comment: Insert person Jennifer Hernandez with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-09-11', 'MALE', 5, 5, 'Jennifer', 'Hernandez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Эрнандес', 'Дженнифер Эрнандес - актер, родившийся 11 сентября 1984 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Hernandez', 'Jennifer Hernandez is an actor born on September 11, 1984.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:41 runOnChange:false
--comment: Insert person Kelly Foster with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-08-27', 'MALE', 10, 1, 'Kelly', 'Foster', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Келли', 'Фостер', 'Келли Фостер - актер, родившийся 27 августа 1958 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Foster', 'Kelly Foster is an actor born on August 27, 1958.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:42 runOnChange:false
--comment: Insert person Lindsey Cameron with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-09-12', 'FEMALE', 15, 2, 'Lindsey', 'Cameron', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Линдси', 'Кэмерон', 'Линдси Кэмерон - актриса, родившаяся 12 сентября 1974 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsey', 'Cameron', 'Lindsey Cameron is an actress born on September 12, 1974.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:43 runOnChange:false
--comment: Insert person Jeffrey Wilson with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-08-31', 'FEMALE', 4, 1, 'Jeffrey', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Уилсон', 'Джеффри Уилсон - актриса, родившаяся 31 августа 1941 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Wilson', 'Jeffrey Wilson is an actress born on August 31, 1941.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:44 runOnChange:false
--comment: Insert person Robert Oconnor with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-01-25', 'MALE', 11, 4, 'Robert', 'Oconnor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'О''Коннор', 'Роберт О''Коннор - актер, родившийся 25 января 1961 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Oconnor', 'Robert Oconnor is an actor born on January 25, 1961.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:45 runOnChange:false
--comment: Insert person Haley Morales with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-11-08', 'MALE', 3, 5, 'Haley', 'Morales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хейли', 'Моралес', 'Хейли Моралес - актер, родившийся 8 ноября 1973 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Haley', 'Morales', 'Haley Morales is an actor born on November 8, 1973.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:46 runOnChange:false
--comment: Insert person Michelle Underwood with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-01-10', 'MALE', 13, 2, 'Michelle', 'Underwood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мишель', 'Андервуд', 'Мишель Андервуд - актер, родившийся 10 января 1991 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Underwood', 'Michelle Underwood is an actor born on January 10, 1991.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

--changeset author:47 runOnChange:false
--comment: Insert person Amy Taylor with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-06-25', 'MALE', 2, 5, 'Amy', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эми', 'Тейлор', 'Эми Тейлор - актер, родившийся 25 июня 1995 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Taylor', 'Amy Taylor is an actor born on June 25, 1995.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


--changeset author:48 runOnChange:false
--comment: Insert person Richard Marshall with translations
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-10-13', 'FEMALE', 6, 4, 'Richard', 'Marshall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ричард', 'Маршалл', 'Ричард Маршалл - актриса, родившаяся 13 октября 1960 года.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Marshall', 'Richard Marshall is an actress born on October 13, 1960.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;



-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-03-10', 'FEMALE', 10, 2, 'Robert', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Рид', 'Роберт Рид — актриса, известная своими ролями в драматических сериалах и независимом кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Reed', 'Robert Reed is an actress known for her roles in dramatic TV series and independent cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-04-15', 'FEMALE', 1, 2, 'Nicole', 'Burke', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Николь', 'Бёрк', 'Николь Бёрк — талантливая актриса, снимающаяся в жанрах драмы и триллера.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Burke', 'Nicole Burke is a talented actress known for her work in drama and thriller genres.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-02-13', 'FEMALE', 9, 4, 'Parker', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Паркер', 'Уильямс', 'Паркер Уильямс — актриса с многолетним опытом в театре и кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Parker', 'Williams', 'Parker Williams is an actress with decades of experience in theater and film.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-08-05', 'MALE', 9, 5, 'George', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джордж', 'Томпсон', 'Джордж Томпсон — актёр, прославившийся своими ролями в классических драмах и исторических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'George', 'Thompson', 'George Thompson is an actor renowned for his roles in classic dramas and historical films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-02-20', 'MALE', 7, 2, 'Erik', 'Contreras', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрик', 'Контрерас', 'Эрик Контрерас — актёр, известный своими работами в латиноамериканском и международном кинематографе.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erik', 'Contreras', 'Erik Contreras is an actor known for his work in Latin American and international cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-11-14', 'MALE', 7, 3, 'James', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Смит', 'Джеймс Смит — универсальный актёр, играющий как в комедиях, так и в серьёзных драматических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Smith', 'James Smith is a versatile actor known for both comedic and dramatic roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-06-29', 'FEMALE', 2, 5, 'Darrell', 'Myers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Даррелл', 'Майерс', 'Даррелл Майерс — актриса старой школы, чья карьера охватывает несколько десятилетий театральных и кинематографических постановок.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Darrell', 'Myers', 'Darrell Myers is a veteran actress whose career spans decades of theater and film.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-07-18', 'FEMALE', 12, 3, 'Logan', 'Pierce', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Логан', 'Пирс', 'Логан Пирс — актриса, известная своими харизматичными ролями в телевизионных сериалах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Logan', 'Pierce', 'Logan Pierce is an actress known for her charismatic performances in television series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-07-21', 'FEMALE', 1, 3, 'Joshua', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Андерсон', 'Джошуа Андерсон — молодая актриса, стремительно набирающая популярность в современном кинематографе.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Anderson', 'Joshua Anderson is a rising young actress gaining recognition in contemporary cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-06-23', 'MALE', 13, 3, 'Stacey', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стейси', 'Томпсон', 'Стейси Томпсон — актёр, чьи работы охватывают широкий спектр жанров от комедии до психологического триллера.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacey', 'Thompson', 'Stacey Thompson is an actor whose work spans genres from comedy to psychological thriller.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-08-28', 'FEMALE', 3, 3, 'Emily', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмили', 'Мюррей', 'Эмили Мюррей — актриса, известная своими яркими ролями в современных драмах и романтических комедиях.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Murray', 'Emily Murray is an actress known for her vivid roles in modern dramas and romantic comedies.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-04-28', 'FEMALE', 9, 4, 'Victoria', 'Holmes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Виктория', 'Холмс', 'Виктория Холмс — молодая актриса, быстро завоевавшая признание за счёт глубоких и эмоциональных ролей.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Victoria', 'Holmes', 'Victoria Holmes is a young actress quickly gaining acclaim for her emotionally rich performances.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-10-01', 'MALE', 8, 1, 'Maria', 'Cook', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мария', 'Кук', 'Мария Кук — актёр, известный своими нестандартными ролями в независимом кино и на сцене.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maria', 'Cook', 'Maria Cook is an actor known for unconventional roles in independent film and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-10-03', 'MALE', 7, 4, 'Julia', 'Harper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джулия', 'Харпер', 'Джулия Харпер — актёр с богатой карьерой в классическом кино и на театральной сцене.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julia', 'Harper', 'Julia Harper is an actor with a distinguished career in classic cinema and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-02-18', 'FEMALE', 12, 3, 'Lydia', 'Stevenson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лидия', 'Стивенсон', 'Лидия Стивенсон — актриса, специализирующаяся на сильных женских образах в драматических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lydia', 'Stevenson', 'Lydia Stevenson is an actress specializing in strong female characters in dramatic productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-12-14', 'FEMALE', 9, 3, 'Mario', 'Arnold', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марио', 'Арнольд', 'Марио Арнольд — актриса, чьи работы отмечены глубоким психологизмом и выразительностью.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mario', 'Arnold', 'Mario Arnold is an actress known for psychologically nuanced and expressive performances.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-06-11', 'MALE', 10, 4, 'Jeffrey', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Уильямс', 'Джеффри Уильямс — актёр, известный своими ролями в боевиках и приключенческих фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Williams', 'Jeffrey Williams is an actor known for his roles in action and adventure films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-12-23', 'FEMALE', 11, 5, 'Kelly', 'Harvey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Келли', 'Харви', 'Келли Харви — актриса, чьи работы включают как телевизионные драмы, так и независимое кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Harvey', 'Kelly Harvey is an actress whose work spans television dramas and independent cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-03-15', 'MALE', 6, 3, 'Paula', 'Riddle', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Пола', 'Риддл', 'Пола Риддл — актёр, известный своими ролями в детективных сериалах и криминальных драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Paula', 'Riddle', 'Paula Riddle is an actor known for roles in detective series and crime dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-07-13', 'FEMALE', 7, 3, 'Michael', 'Mejia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Мехия', 'Майкл Мехия — актриса с богатой карьерой в классическом и современном кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Mejia', 'Michael Mejia is an actress with a rich career spanning classic and contemporary cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-10-27', 'FEMALE', 6, 2, 'Jennifer', 'Nash', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Нэш', 'Дженнифер Нэш — актриса, известная своими ролями в семейных драмах и романтических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Nash', 'Jennifer Nash is an actress known for her roles in family dramas and romantic films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-10-02', 'FEMALE', 10, 3, 'Daniel', 'Harris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэниел', 'Харрис', 'Дэниел Харрис — актриса, чьи работы часто затрагивают социальные и личные темы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Harris', 'Daniel Harris is an actress whose work often explores social and personal themes.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-03-20', 'MALE', 11, 1, 'Katie', 'Mora', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэти', 'Мора', 'Кэти Мора — актёр, известный своими ролями в молодёжных драмах и веб-сериалах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Katie', 'Mora', 'Katie Mora is an actor known for roles in youth dramas and web series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-02-27', 'MALE', 6, 2, 'Michael', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Гонсалес', 'Майкл Гонсалес — актёр с международной карьерой, снимающийся в фильмах на нескольких языках.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Gonzalez', 'Michael Gonzalez is an actor with an international career, appearing in multilingual film productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-11-21', 'MALE', 3, 3, 'Felicia', 'Obrien', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Фелиция', 'Обрайен', 'Фелиция Обрайен — актёр, известный своими характерными ролями в исторических и военных фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Felicia', 'Obrien', 'Felicia Obrien is an actor known for distinctive roles in historical and war films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-03-05', 'MALE', 12, 1, 'Kristina', 'Burnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Бёрнетт', 'Кристина Бёрнетт — актёр, чьи работы охватывают как телевидение, так и театр.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristina', 'Burnett', 'Kristina Burnett is an actor whose work spans television and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-02', 'FEMALE', 10, 3, 'Joanna', 'Powell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джоанна', 'Пауэлл', 'Джоанна Пауэлл — юная актриса, уже успевшая проявить себя в нескольких заметных проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joanna', 'Powell', 'Joanna Powell is a young actress already making her mark in several notable projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-07-21', 'MALE', 3, 3, 'Brandi', 'Conway', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брэнди', 'Конвей', 'Брэнди Конвей — актёр нового поколения, специализирующийся на молодёжных и социальных драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandi', 'Conway', 'Brandi Conway is a new-generation actor specializing in youth and social dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-08-04', 'FEMALE', 15, 5, 'John', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Тейлор', 'Джон Тейлор — актриса, известная своими ролями в европейском артхаусном кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Taylor', 'John Taylor is an actress known for her roles in European arthouse cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-03-04', 'FEMALE', 11, 5, 'Kara', 'Howard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кара', 'Ховард', 'Кара Ховард — актриса, чьи работы часто отмечены глубоким психологизмом и эмоциональной выразительностью.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kara', 'Howard', 'Kara Howard is an actress whose performances are noted for psychological depth and emotional intensity.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-05-24', 'FEMALE', 1, 2, 'Joshua', 'Khan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Хан', 'Джошуа Хан — актриса, известная своими ролями в многонациональных и мультикультурных проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Khan', 'Joshua Khan is an actress known for roles in multicultural and international productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-03-01', 'FEMALE', 9, 2, 'Carol', 'Rivera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэрол', 'Ривера', 'Кэрол Ривера — актриса, чьи работы включают как драмы, так и комедийные сериалы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carol', 'Rivera', 'Carol Rivera is an actress whose work includes both dramas and comedic series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-06-30', 'MALE', 5, 3, 'Sean', 'Warren', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шон', 'Уоррен', 'Шон Уоррен — актёр, известный своими ролями в детективных и триллер-проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sean', 'Warren', 'Sean Warren is an actor known for his roles in detective and thriller projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-11-13', 'FEMALE', 5, 5, 'Anne', 'Collins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Энн', 'Коллинз', 'Энн Коллинз — актриса, специализирующаяся на сильных женских персонажах в драматических сериалах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anne', 'Collins', 'Anne Collins is an actress specializing in strong female characters in dramatic series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-03-24', 'MALE', 11, 3, 'Kevin', 'Gomez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кевин', 'Гомес', 'Кевин Гомес — актёр, известный своими ролями в латиноамериканских теленовеллах и фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Gomez', 'Kevin Gomez is an actor known for his roles in Latin American telenovelas and films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-12-27', 'MALE', 6, 2, 'Jay', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джей', 'Мюррей', 'Джей Мюррей — актёр, чьи работы охватывают как комедии, так и психологические драмы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jay', 'Murray', 'Jay Murray is an actor whose work spans comedy and psychological drama.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-03-24', 'MALE', 6, 5, 'Jenny', 'Suarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженни', 'Суарес', 'Дженни Суарес — актёр, известный своими ролями в молодёжных сериалах и социальных драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jenny', 'Suarez', 'Jenny Suarez is an actor known for roles in youth series and social dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-07-27', 'FEMALE', 3, 3, 'Michael', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Смит', 'Майкл Смит — актриса с богатой карьерой в классическом и современном театре.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Smith', 'Michael Smith is an actress with an extensive career in both classic and contemporary theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-09-24', 'FEMALE', 13, 2, 'Christine', 'Hayes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christine', 'Hayes', 'Christine Hayes — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christine', 'Hayes', 'Christine Hayes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-05-14', 'MALE', 2, 4, 'Samantha', 'Holden', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Holden', 'Samantha Holden — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Holden', 'Samantha Holden is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-06-04', 'MALE', 15, 5, 'Eileen', 'Phillips', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Eileen', 'Phillips', 'Eileen Phillips — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eileen', 'Phillips', 'Eileen Phillips is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-03-28', 'FEMALE', 8, 1, 'Jessica', 'George', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'George', 'Jessica George — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'George', 'Jessica George is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-07-20', 'MALE', 7, 3, 'Margaret', 'Kelly', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Margaret', 'Kelly', 'Margaret Kelly — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Margaret', 'Kelly', 'Margaret Kelly is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-05-06', 'FEMALE', 7, 4, 'Jordan', 'Nelson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jordan', 'Nelson', 'Jordan Nelson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jordan', 'Nelson', 'Jordan Nelson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-07-12', 'MALE', 14, 3, 'Vincent', 'Burnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Vincent', 'Burnett', 'Vincent Burnett — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Vincent', 'Burnett', 'Vincent Burnett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-04-30', 'MALE', 9, 5, 'Ian', 'Roberts', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ian', 'Roberts', 'Ian Roberts — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ian', 'Roberts', 'Ian Roberts is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-06-15', 'FEMALE', 13, 5, 'John', 'Meyer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Meyer', 'John Meyer — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Meyer', 'John Meyer is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-08-19', 'MALE', 4, 4, 'Brian', 'Hughes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brian', 'Hughes', 'Brian Hughes — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Hughes', 'Brian Hughes is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-01-05', 'MALE', 1, 3, 'Patricia', 'Moyer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Moyer', 'Patricia Moyer — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Moyer', 'Patricia Moyer is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-03-05', 'MALE', 13, 5, 'Susan', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Susan', 'Wilson', 'Susan Wilson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Susan', 'Wilson', 'Susan Wilson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-06-23', 'FEMALE', 12, 3, 'Catherine', 'Gaines', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Catherine', 'Gaines', 'Catherine Gaines — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Catherine', 'Gaines', 'Catherine Gaines is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-10-16', 'MALE', 14, 5, 'Carol', 'Sullivan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carol', 'Sullivan', 'Carol Sullivan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carol', 'Sullivan', 'Carol Sullivan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-02-19', 'MALE', 15, 4, 'Gabrielle', 'Love', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gabrielle', 'Love', 'Gabrielle Love — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gabrielle', 'Love', 'Gabrielle Love is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-06-24', 'MALE', 12, 1, 'Sarah', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Johnson', 'Sarah Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Johnson', 'Sarah Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-08-29', 'FEMALE', 6, 1, 'Shawn', 'Juarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shawn', 'Juarez', 'Shawn Juarez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shawn', 'Juarez', 'Shawn Juarez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-05-17', 'MALE', 8, 2, 'Brian', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brian', 'Clark', 'Brian Clark — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Clark', 'Brian Clark is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-04-09', 'FEMALE', 11, 2, 'Shannon', 'Bush', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shannon', 'Bush', 'Shannon Bush — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shannon', 'Bush', 'Shannon Bush is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-06-16', 'MALE', 10, 1, 'Jennifer', 'Perez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Perez', 'Jennifer Perez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Perez', 'Jennifer Perez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-07-09', 'FEMALE', 4, 1, 'Justin', 'Bell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Justin', 'Bell', 'Justin Bell — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Justin', 'Bell', 'Justin Bell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-08-27', 'FEMALE', 10, 4, 'Kevin', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Rodriguez', 'Kevin Rodriguez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Rodriguez', 'Kevin Rodriguez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-07-21', 'MALE', 12, 4, 'Dustin', 'Roth', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dustin', 'Roth', 'Dustin Roth — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dustin', 'Roth', 'Dustin Roth is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-03-28', 'MALE', 13, 1, 'Joshua', 'Pena', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Pena', 'Joshua Pena — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Pena', 'Joshua Pena is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-11-27', 'MALE', 11, 2, 'Kyle', 'Rice', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kyle', 'Rice', 'Kyle Rice — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kyle', 'Rice', 'Kyle Rice is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-07-16', 'FEMALE', 15, 2, 'James', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Brown', 'James Brown — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Brown', 'James Brown is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-03-30', 'FEMALE', 12, 1, 'Steven', 'Stevens', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Stevens', 'Steven Stevens — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Stevens', 'Steven Stevens is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-05-24', 'FEMALE', 6, 3, 'Michael', 'Bender', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Bender', 'Michael Bender — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Bender', 'Michael Bender is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-08-23', 'MALE', 8, 5, 'Leslie', 'Brandt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Leslie', 'Brandt', 'Leslie Brandt — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Leslie', 'Brandt', 'Leslie Brandt is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-11-01', 'MALE', 4, 3, 'Carolyn', 'Combs', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carolyn', 'Combs', 'Carolyn Combs — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carolyn', 'Combs', 'Carolyn Combs is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-11-17', 'FEMALE', 15, 5, 'Kathleen', 'Gibson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathleen', 'Gibson', 'Kathleen Gibson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathleen', 'Gibson', 'Kathleen Gibson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-09-11', 'FEMALE', 1, 4, 'Gloria', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gloria', 'Skinner', 'Gloria Skinner — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gloria', 'Skinner', 'Gloria Skinner is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-09-09', 'MALE', 13, 1, 'Daniel', 'Edwards', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Edwards', 'Daniel Edwards — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Edwards', 'Daniel Edwards is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-03-22', 'MALE', 11, 4, 'Emily', 'Meza', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Emily', 'Meza', 'Emily Meza — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Meza', 'Emily Meza is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-03-11', 'FEMALE', 10, 1, 'Cindy', 'Cooley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cindy', 'Cooley', 'Cindy Cooley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cindy', 'Cooley', 'Cindy Cooley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-08-10', 'FEMALE', 12, 5, 'Whitney', 'Stevenson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Whitney', 'Stevenson', 'Whitney Stevenson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Whitney', 'Stevenson', 'Whitney Stevenson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-09-30', 'MALE', 1, 1, 'Charles', 'Murphy', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charles', 'Murphy', 'Charles Murphy — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Murphy', 'Charles Murphy is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-02-11', 'MALE', 13, 5, 'Joshua', 'Mills', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Mills', 'Joshua Mills — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Mills', 'Joshua Mills is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-05-03', 'FEMALE', 12, 4, 'Rhonda', 'Barnes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rhonda', 'Barnes', 'Rhonda Barnes — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rhonda', 'Barnes', 'Rhonda Barnes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-07-08', 'FEMALE', 11, 2, 'Micheal', 'Foley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Micheal', 'Foley', 'Micheal Foley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Micheal', 'Foley', 'Micheal Foley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-18', 'MALE', 15, 4, 'Michelle', 'Burns', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michelle', 'Burns', 'Michelle Burns — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Burns', 'Michelle Burns is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-12-02', 'FEMALE', 5, 1, 'Robert', 'Dyer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Dyer', 'Robert Dyer — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Dyer', 'Robert Dyer is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-02-21', 'FEMALE', 9, 3, 'Kelly', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelly', 'Anderson', 'Kelly Anderson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Anderson', 'Kelly Anderson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-01-13', 'FEMALE', 15, 5, 'Tiffany', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tiffany', 'Torres', 'Tiffany Torres — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tiffany', 'Torres', 'Tiffany Torres is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-05-28', 'FEMALE', 8, 3, 'Kevin', 'Pennington', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Pennington', 'Kevin Pennington — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Pennington', 'Kevin Pennington is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-09-20', 'FEMALE', 10, 3, 'Dylan', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dylan', 'Gonzalez', 'Dylan Gonzalez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dylan', 'Gonzalez', 'Dylan Gonzalez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-04-07', 'FEMALE', 14, 2, 'Adam', 'Burns', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Adam', 'Burns', 'Adam Burns — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Adam', 'Burns', 'Adam Burns is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-01-16', 'MALE', 4, 3, 'Veronica', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Veronica', 'Johnson', 'Veronica Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Veronica', 'Johnson', 'Veronica Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-12-10', 'MALE', 3, 3, 'Brandon', 'Crosby', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brandon', 'Crosby', 'Brandon Crosby — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandon', 'Crosby', 'Brandon Crosby is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-11-18', 'MALE', 2, 2, 'Lauren', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lauren', 'Smith', 'Lauren Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Smith', 'Lauren Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-09-27', 'FEMALE', 9, 2, 'Tristan', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tristan', 'Smith', 'Tristan Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tristan', 'Smith', 'Tristan Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-01-27', 'MALE', 9, 3, 'Cynthia', 'Solis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cynthia', 'Solis', 'Cynthia Solis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cynthia', 'Solis', 'Cynthia Solis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-06-07', 'MALE', 5, 1, 'Garrett', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Garrett', 'Davis', 'Garrett Davis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Garrett', 'Davis', 'Garrett Davis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-07-11', 'MALE', 1, 3, 'Brian', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brian', 'Miller', 'Brian Miller — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Miller', 'Brian Miller is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-10-28', 'MALE', 7, 3, 'Cheryl', 'Barnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cheryl', 'Barnett', 'Cheryl Barnett — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cheryl', 'Barnett', 'Cheryl Barnett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-11-15', 'FEMALE', 6, 3, 'Robert', 'Burns', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Burns', 'Robert Burns — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Burns', 'Robert Burns is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-04-27', 'MALE', 8, 5, 'William', 'Owens', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Owens', 'William Owens — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Owens', 'William Owens is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-12-11', 'FEMALE', 10, 1, 'Brooke', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brooke', 'Hill', 'Brooke Hill — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brooke', 'Hill', 'Brooke Hill is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-05-26', 'FEMALE', 5, 1, 'Becky', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Becky', 'Martinez', 'Becky Martinez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Becky', 'Martinez', 'Becky Martinez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-06-24', 'MALE', 11, 2, 'Jonathon', 'Marshall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathon', 'Marshall', 'Jonathon Marshall — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathon', 'Marshall', 'Jonathon Marshall is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-11-11', 'FEMALE', 3, 5, 'Steven', 'Morgan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Morgan', 'Steven Morgan — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Morgan', 'Steven Morgan is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-04-05', 'MALE', 8, 3, 'Joseph', 'Mccullough', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Mccullough', 'Joseph Mccullough — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Mccullough', 'Joseph Mccullough is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-04-06', 'MALE', 5, 2, 'Rachel', 'Daniel', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rachel', 'Daniel', 'Rachel Daniel — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rachel', 'Daniel', 'Rachel Daniel is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-06-29', 'FEMALE', 10, 5, 'Wayne', 'Perry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Wayne', 'Perry', 'Wayne Perry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wayne', 'Perry', 'Wayne Perry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-05-01', 'MALE', 7, 2, 'Lindsey', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lindsey', 'Wilson', 'Lindsey Wilson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsey', 'Wilson', 'Lindsey Wilson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-03-17', 'MALE', 14, 4, 'Robert', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Clark', 'Robert Clark — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Clark', 'Robert Clark is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-05-01', 'MALE', 8, 2, 'Justin', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Justin', 'Moore', 'Justin Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Justin', 'Moore', 'Justin Moore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-07-21', 'FEMALE', 15, 1, 'Steven', 'Vaughn', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Vaughn', 'Steven Vaughn — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Vaughn', 'Steven Vaughn is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-10-02', 'MALE', 10, 1, 'Kevin', 'Cortez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Cortez', 'Kevin Cortez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Cortez', 'Kevin Cortez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-02-21', 'FEMALE', 6, 3, 'David', 'Page', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Page', 'David Page — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Page', 'David Page is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-03-27', 'MALE', 3, 1, 'Terrance', 'Campbell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Terrance', 'Campbell', 'Terrance Campbell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Terrance', 'Campbell', 'Terrance Campbell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-06-28', 'MALE', 10, 1, 'Christine', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christine', 'Williams', 'Christine Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christine', 'Williams', 'Christine Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-10-25', 'FEMALE', 13, 2, 'Claire', 'Conley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Claire', 'Conley', 'Claire Conley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Claire', 'Conley', 'Claire Conley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-02-02', 'MALE', 14, 2, 'Joseph', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Thompson', 'Joseph Thompson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Thompson', 'Joseph Thompson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-12-04', 'MALE', 14, 4, 'Becky', 'Mitchell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Becky', 'Mitchell', 'Becky Mitchell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Becky', 'Mitchell', 'Becky Mitchell is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-02-13', 'MALE', 5, 4, 'Wendy', 'Bailey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Wendy', 'Bailey', 'Wendy Bailey — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wendy', 'Bailey', 'Wendy Bailey is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-01-26', 'MALE', 11, 4, 'Patricia', 'Todd', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Todd', 'Patricia Todd — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Todd', 'Patricia Todd is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-07-04', 'MALE', 3, 5, 'Cameron', 'Underwood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cameron', 'Underwood', 'Cameron Underwood — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cameron', 'Underwood', 'Cameron Underwood is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-06-19', 'MALE', 9, 4, 'Christy', 'Edwards', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christy', 'Edwards', 'Christy Edwards — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christy', 'Edwards', 'Christy Edwards is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-02-05', 'FEMALE', 7, 5, 'Mary', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mary', 'Davis', 'Mary Davis — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Davis', 'Mary Davis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-12-24', 'MALE', 2, 4, 'Cynthia', 'Doyle', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cynthia', 'Doyle', 'Cynthia Doyle — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cynthia', 'Doyle', 'Cynthia Doyle is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-07', 'MALE', 14, 1, 'Samantha', 'Harrison', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Harrison', 'Samantha Harrison — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Harrison', 'Samantha Harrison is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-07-20', 'MALE', 4, 1, 'Darrell', 'Ortiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Darrell', 'Ortiz', 'Darrell Ortiz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Darrell', 'Ortiz', 'Darrell Ortiz is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-03-08', 'FEMALE', 13, 5, 'Glenda', 'Perkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Glenda', 'Perkins', 'Glenda Perkins — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Glenda', 'Perkins', 'Glenda Perkins is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-03-11', 'MALE', 1, 4, 'Shelly', 'Gray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shelly', 'Gray', 'Shelly Gray — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shelly', 'Gray', 'Shelly Gray is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-10-29', 'MALE', 8, 1, 'Gregory', 'Brennan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gregory', 'Brennan', 'Gregory Brennan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gregory', 'Brennan', 'Gregory Brennan is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-08-29', 'FEMALE', 1, 4, 'Keith', 'Bonilla', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Keith', 'Bonilla', 'Keith Bonilla — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Keith', 'Bonilla', 'Keith Bonilla is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-09-01', 'FEMALE', 15, 3, 'John', 'Gomez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Gomez', 'John Gomez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Gomez', 'John Gomez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-09-27', 'MALE', 10, 1, 'Briana', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Briana', 'Johnson', 'Briana Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Briana', 'Johnson', 'Briana Johnson is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-12-28', 'MALE', 13, 3, 'David', 'Sutton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Sutton', 'David Sutton — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Sutton', 'David Sutton is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-09-27', 'FEMALE', 2, 1, 'Nicholas', 'Young', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicholas', 'Young', 'Nicholas Young — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Young', 'Nicholas Young is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-01-21', 'MALE', 3, 4, 'Mary', 'Rich', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mary', 'Rich', 'Mary Rich — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Rich', 'Mary Rich is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-11-08', 'FEMALE', 4, 4, 'Bruce', 'James', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bruce', 'James', 'Bruce James — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bruce', 'James', 'Bruce James is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-05-17', 'FEMALE', 10, 2, 'Douglas', 'Mccullough', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Douglas', 'Mccullough', 'Douglas Mccullough — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Douglas', 'Mccullough', 'Douglas Mccullough is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-06-07', 'FEMALE', 4, 4, 'Hannah', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Hannah', 'Brown', 'Hannah Brown — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Hannah', 'Brown', 'Hannah Brown is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-02-19', 'FEMALE', 14, 4, 'Daniel', 'Grant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Grant', 'Daniel Grant — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Grant', 'Daniel Grant is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-01-09', 'FEMALE', 8, 1, 'Jessica', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'Ramirez', 'Jessica Ramirez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Ramirez', 'Jessica Ramirez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-02-09', 'FEMALE', 4, 2, 'Samantha', 'Rivera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Rivera', 'Samantha Rivera — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Rivera', 'Samantha Rivera is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-09-04', 'MALE', 2, 4, 'Isaac', 'Hernandez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Isaac', 'Hernandez', 'Isaac Hernandez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Isaac', 'Hernandez', 'Isaac Hernandez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-01-16', 'FEMALE', 13, 1, 'Edward', 'Morales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Edward', 'Morales', 'Edward Morales — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Edward', 'Morales', 'Edward Morales is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-12-13', 'FEMALE', 9, 3, 'Patricia', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Clark', 'Patricia Clark — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Clark', 'Patricia Clark is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-08-13', 'MALE', 5, 4, 'Beth', 'Mcgee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Beth', 'Mcgee', 'Beth Mcgee — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Beth', 'Mcgee', 'Beth Mcgee is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-12-04', 'FEMALE', 13, 3, 'Angela', 'Chambers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Angela', 'Chambers', 'Angela Chambers — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Chambers', 'Angela Chambers is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-10-09', 'MALE', 7, 3, 'Steven', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Alvarez', 'Steven Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Alvarez', 'Steven Alvarez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-06-24', 'MALE', 13, 1, 'Gloria', 'Morris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gloria', 'Morris', 'Gloria Morris — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gloria', 'Morris', 'Gloria Morris is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-12-14', 'FEMALE', 12, 1, 'Ralph', 'Sandoval', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ralph', 'Sandoval', 'Ralph Sandoval — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ralph', 'Sandoval', 'Ralph Sandoval is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-10-17', 'FEMALE', 2, 4, 'Mike', 'Peterson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mike', 'Peterson', 'Mike Peterson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mike', 'Peterson', 'Mike Peterson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-04-26', 'MALE', 7, 5, 'Michael', 'Shaffer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Shaffer', 'Michael Shaffer — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Shaffer', 'Michael Shaffer is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-07-20', 'MALE', 11, 5, 'Connie', 'Gomez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Connie', 'Gomez', 'Connie Gomez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Connie', 'Gomez', 'Connie Gomez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-11-03', 'FEMALE', 15, 3, 'Kathryn', 'Buckley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathryn', 'Buckley', 'Kathryn Buckley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathryn', 'Buckley', 'Kathryn Buckley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-07-01', 'MALE', 15, 2, 'Harold', 'Martin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Harold', 'Martin', 'Harold Martin — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Harold', 'Martin', 'Harold Martin is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-02-21', 'FEMALE', 4, 5, 'Juan', 'Sanchez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Juan', 'Sanchez', 'Juan Sanchez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Juan', 'Sanchez', 'Juan Sanchez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-06-25', 'FEMALE', 7, 1, 'Evelyn', 'Welch', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Evelyn', 'Welch', 'Evelyn Welch — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Evelyn', 'Welch', 'Evelyn Welch is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-06-08', 'MALE', 15, 2, 'Kimberly', 'Quinn', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Quinn', 'Kimberly Quinn — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Quinn', 'Kimberly Quinn is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-07-08', 'FEMALE', 8, 3, 'Ryan', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ryan', 'Chavez', 'Ryan Chavez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ryan', 'Chavez', 'Ryan Chavez is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-02-28', 'FEMALE', 14, 5, 'Bethany', 'Day', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bethany', 'Day', 'Bethany Day — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bethany', 'Day', 'Bethany Day is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-10-14', 'FEMALE', 8, 4, 'Lauren', 'Morgan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lauren', 'Morgan', 'Lauren Morgan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Morgan', 'Lauren Morgan is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-12-14', 'FEMALE', 13, 2, 'Jasmine', 'Bryant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jasmine', 'Bryant', 'Jasmine Bryant — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jasmine', 'Bryant', 'Jasmine Bryant is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-08-13', 'FEMALE', 13, 2, 'Jesus', 'Myers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jesus', 'Myers', 'Jesus Myers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jesus', 'Myers', 'Jesus Myers is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-04-30', 'MALE', 11, 4, 'Jessica', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'Martinez', 'Jessica Martinez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Martinez', 'Jessica Martinez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-12-09', 'FEMALE', 6, 5, 'Kathryn', 'Mosley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathryn', 'Mosley', 'Kathryn Mosley — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathryn', 'Mosley', 'Kathryn Mosley is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-04-02', 'MALE', 15, 2, 'Sonya', 'Romero', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sonya', 'Romero', 'Sonya Romero — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sonya', 'Romero', 'Sonya Romero is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-12-12', 'FEMALE', 1, 2, 'Amy', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amy', 'Johnson', 'Amy Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Johnson', 'Amy Johnson is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-01-23', 'MALE', 2, 5, 'Janice', 'Fields', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Janice', 'Fields', 'Janice Fields — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Janice', 'Fields', 'Janice Fields is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-06', 'MALE', 3, 1, 'William', 'King', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'King', 'William King — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'King', 'William King is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-05-28', 'FEMALE', 2, 4, 'Ashley', 'Wood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Wood', 'Ashley Wood — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Wood', 'Ashley Wood is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-03-30', 'FEMALE', 9, 1, 'Anthony', 'Levine', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Anthony', 'Levine', 'Anthony Levine — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anthony', 'Levine', 'Anthony Levine is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-11-06', 'FEMALE', 6, 5, 'Ellen', 'Frazier', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ellen', 'Frazier', 'Ellen Frazier — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ellen', 'Frazier', 'Ellen Frazier is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-05-26', 'FEMALE', 11, 1, 'Jonathan', 'Woodward', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Woodward', 'Jonathan Woodward — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Woodward', 'Jonathan Woodward is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-07-09', 'MALE', 2, 1, 'Sonya', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sonya', 'Lewis', 'Sonya Lewis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sonya', 'Lewis', 'Sonya Lewis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-06-05', 'FEMALE', 6, 2, 'Scott', 'Ward', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Scott', 'Ward', 'Scott Ward — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Ward', 'Scott Ward is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-05-10', 'MALE', 14, 3, 'Jason', 'Sullivan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jason', 'Sullivan', 'Jason Sullivan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Sullivan', 'Jason Sullivan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-12-20', 'FEMALE', 2, 2, 'Ashley', 'Blackburn', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Blackburn', 'Ashley Blackburn — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Blackburn', 'Ashley Blackburn is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-01-29', 'FEMALE', 12, 4, 'Derek', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Derek', 'Jones', 'Derek Jones — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Derek', 'Jones', 'Derek Jones is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-12-26', 'MALE', 8, 2, 'Tiffany', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tiffany', 'Moore', 'Tiffany Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tiffany', 'Moore', 'Tiffany Moore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-12-29', 'MALE', 2, 1, 'Mariah', 'Mercer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mariah', 'Mercer', 'Mariah Mercer — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mariah', 'Mercer', 'Mariah Mercer is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-10-01', 'MALE', 14, 5, 'Ashley', 'Morris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Morris', 'Ashley Morris — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Morris', 'Ashley Morris is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-07-30', 'FEMALE', 9, 5, 'Marissa', 'Hubbard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Marissa', 'Hubbard', 'Marissa Hubbard — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marissa', 'Hubbard', 'Marissa Hubbard is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-07-18', 'FEMALE', 9, 1, 'Shannon', 'Lucas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shannon', 'Lucas', 'Shannon Lucas — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shannon', 'Lucas', 'Shannon Lucas is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-03-31', 'FEMALE', 14, 1, 'Michael', 'Dominguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Dominguez', 'Michael Dominguez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Dominguez', 'Michael Dominguez is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-12-05', 'FEMALE', 9, 3, 'Ethan', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ethan', 'Taylor', 'Ethan Taylor — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ethan', 'Taylor', 'Ethan Taylor is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-07-28', 'FEMALE', 7, 2, 'William', 'Ibarra', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Ibarra', 'William Ibarra — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Ibarra', 'William Ibarra is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-10-16', 'FEMALE', 8, 4, 'Timothy', 'Quinn', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Timothy', 'Quinn', 'Timothy Quinn — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Timothy', 'Quinn', 'Timothy Quinn is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-06-23', 'MALE', 1, 4, 'Jessica', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'Thompson', 'Jessica Thompson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Thompson', 'Jessica Thompson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-09-21', 'FEMALE', 7, 4, 'Ashley', 'Craig', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Craig', 'Ashley Craig — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Craig', 'Ashley Craig is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-10-03', 'MALE', 4, 5, 'Jack', 'Morales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jack', 'Morales', 'Jack Morales — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jack', 'Morales', 'Jack Morales is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-09-27', 'MALE', 6, 3, 'Shirley', 'Nolan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shirley', 'Nolan', 'Shirley Nolan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shirley', 'Nolan', 'Shirley Nolan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-10-05', 'FEMALE', 5, 2, 'Timothy', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Timothy', 'Moore', 'Timothy Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Timothy', 'Moore', 'Timothy Moore is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-04-29', 'MALE', 12, 4, 'Sarah', 'Huynh', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Huynh', 'Sarah Huynh — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Huynh', 'Sarah Huynh is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-05-29', 'FEMALE', 8, 5, 'Melanie', 'Elliott', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Melanie', 'Elliott', 'Melanie Elliott — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Melanie', 'Elliott', 'Melanie Elliott is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-02-14', 'MALE', 6, 1, 'Zachary', 'Carson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Carson', 'Zachary Carson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Carson', 'Zachary Carson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-01-22', 'MALE', 2, 5, 'Sheila', 'Morris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sheila', 'Morris', 'Sheila Morris — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sheila', 'Morris', 'Sheila Morris is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-05-04', 'MALE', 3, 2, 'Kara', 'Schneider', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kara', 'Schneider', 'Kara Schneider — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kara', 'Schneider', 'Kara Schneider is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-11-04', 'MALE', 7, 2, 'Steven', 'Dixon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Dixon', 'Steven Dixon — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Dixon', 'Steven Dixon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-11-25', 'FEMALE', 2, 4, 'Matthew', 'Green', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Green', 'Matthew Green — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Green', 'Matthew Green is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-04-21', 'FEMALE', 12, 5, 'Beverly', 'Tran', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Beverly', 'Tran', 'Beverly Tran — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Beverly', 'Tran', 'Beverly Tran is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-06-22', 'MALE', 5, 5, 'Maurice', 'Gordon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Maurice', 'Gordon', 'Maurice Gordon — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maurice', 'Gordon', 'Maurice Gordon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-03-26', 'MALE', 6, 2, 'Kyle', 'Mahoney', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kyle', 'Mahoney', 'Kyle Mahoney — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kyle', 'Mahoney', 'Kyle Mahoney is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-08-01', 'FEMALE', 7, 2, 'Patricia', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Taylor', 'Patricia Taylor — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Taylor', 'Patricia Taylor is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-04-21', 'MALE', 14, 4, 'Deanna', 'Lopez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Deanna', 'Lopez', 'Deanna Lopez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Deanna', 'Lopez', 'Deanna Lopez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-01-04', 'MALE', 2, 1, 'Sarah', 'Munoz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Munoz', 'Sarah Munoz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Munoz', 'Sarah Munoz is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-12-07', 'FEMALE', 15, 2, 'Todd', 'Rush', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Todd', 'Rush', 'Todd Rush — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Todd', 'Rush', 'Todd Rush is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-09-24', 'FEMALE', 15, 5, 'Anna', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Anna', 'Smith', 'Anna Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anna', 'Smith', 'Anna Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-07-28', 'MALE', 8, 3, 'Kenneth', 'Robertson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kenneth', 'Robertson', 'Kenneth Robertson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kenneth', 'Robertson', 'Kenneth Robertson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-11-03', 'MALE', 10, 1, 'Darrell', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Darrell', 'Chavez', 'Darrell Chavez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Darrell', 'Chavez', 'Darrell Chavez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-12-19', 'FEMALE', 14, 3, 'Benjamin', 'Holt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Benjamin', 'Holt', 'Benjamin Holt — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Benjamin', 'Holt', 'Benjamin Holt is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-05-24', 'MALE', 13, 2, 'Anthony', 'Parker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Anthony', 'Parker', 'Anthony Parker — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anthony', 'Parker', 'Anthony Parker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-11-06', 'FEMALE', 9, 2, 'Kevin', 'Lopez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Lopez', 'Kevin Lopez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Lopez', 'Kevin Lopez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-11-17', 'FEMALE', 10, 2, 'Christopher', 'Huber', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Huber', 'Christopher Huber — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Huber', 'Christopher Huber is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-08-05', 'FEMALE', 9, 3, 'Kevin', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Clark', 'Kevin Clark — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Clark', 'Kevin Clark is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-10-23', 'FEMALE', 13, 1, 'Matthew', 'Hughes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Hughes', 'Matthew Hughes — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Hughes', 'Matthew Hughes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-01-30', 'FEMALE', 14, 1, 'Bryce', 'Rasmussen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bryce', 'Rasmussen', 'Bryce Rasmussen — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bryce', 'Rasmussen', 'Bryce Rasmussen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-02-21', 'FEMALE', 12, 4, 'Zachary', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Moore', 'Zachary Moore — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Moore', 'Zachary Moore is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-08-06', 'MALE', 14, 4, 'Brooke', 'Russell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brooke', 'Russell', 'Brooke Russell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brooke', 'Russell', 'Brooke Russell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-03-14', 'MALE', 2, 5, 'Christy', 'Kent', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christy', 'Kent', 'Christy Kent — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christy', 'Kent', 'Christy Kent is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-11-19', 'FEMALE', 12, 4, 'Jacob', 'Cline', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jacob', 'Cline', 'Jacob Cline — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jacob', 'Cline', 'Jacob Cline is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-07-06', 'FEMALE', 3, 3, 'Brianna', 'Scott', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brianna', 'Scott', 'Brianna Scott — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brianna', 'Scott', 'Brianna Scott is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-09-18', 'MALE', 4, 2, 'Savannah', 'Hodge', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Savannah', 'Hodge', 'Savannah Hodge — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Savannah', 'Hodge', 'Savannah Hodge is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-09-23', 'FEMALE', 9, 1, 'Lori', 'Myers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lori', 'Myers', 'Lori Myers — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lori', 'Myers', 'Lori Myers is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-10-29', 'MALE', 4, 4, 'Lisa', 'Fleming', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lisa', 'Fleming', 'Lisa Fleming — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Fleming', 'Lisa Fleming is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-07-13', 'FEMALE', 2, 2, 'Matthew', 'White', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'White', 'Matthew White — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'White', 'Matthew White is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-01-25', 'MALE', 13, 3, 'Maria', 'Larsen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Maria', 'Larsen', 'Maria Larsen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maria', 'Larsen', 'Maria Larsen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-08-26', 'FEMALE', 11, 2, 'Brittany', 'Dean', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brittany', 'Dean', 'Brittany Dean — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Dean', 'Brittany Dean is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-02-03', 'FEMALE', 7, 3, 'Aaron', 'Moyer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Aaron', 'Moyer', 'Aaron Moyer — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Aaron', 'Moyer', 'Aaron Moyer is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-11-22', 'MALE', 6, 5, 'Sharon', 'Jacobs', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sharon', 'Jacobs', 'Sharon Jacobs — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sharon', 'Jacobs', 'Sharon Jacobs is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-01-25', 'MALE', 9, 5, 'Amy', 'Ponce', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amy', 'Ponce', 'Amy Ponce — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Ponce', 'Amy Ponce is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-05-08', 'MALE', 5, 3, 'Karen', 'Burke', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Karen', 'Burke', 'Karen Burke — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Karen', 'Burke', 'Karen Burke is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-05-22', 'FEMALE', 3, 1, 'Eric', 'Robles', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Eric', 'Robles', 'Eric Robles — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eric', 'Robles', 'Eric Robles is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-15', 'FEMALE', 15, 1, 'John', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Wilson', 'John Wilson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Wilson', 'John Wilson is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-02-26', 'MALE', 4, 1, 'Laura', 'Russo', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Laura', 'Russo', 'Laura Russo — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Russo', 'Laura Russo is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-06-17', 'FEMALE', 14, 1, 'Adam', 'Beasley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Adam', 'Beasley', 'Adam Beasley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Adam', 'Beasley', 'Adam Beasley is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-09-27', 'MALE', 1, 5, 'Michelle', 'Owens', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michelle', 'Owens', 'Michelle Owens — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Owens', 'Michelle Owens is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-11-04', 'FEMALE', 4, 4, 'Angela', 'Reynolds', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Angela', 'Reynolds', 'Angela Reynolds — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Reynolds', 'Angela Reynolds is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-02-18', 'FEMALE', 15, 3, 'Terri', 'Green', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Terri', 'Green', 'Terri Green — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Terri', 'Green', 'Terri Green is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-10-09', 'FEMALE', 12, 2, 'Kristi', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kristi', 'Gonzalez', 'Kristi Gonzalez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristi', 'Gonzalez', 'Kristi Gonzalez is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-09-23', 'FEMALE', 10, 1, 'Amber', 'Ware', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amber', 'Ware', 'Amber Ware — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amber', 'Ware', 'Amber Ware is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-12-07', 'MALE', 9, 5, 'Emily', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Emily', 'Martinez', 'Emily Martinez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Martinez', 'Emily Martinez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-09-21', 'MALE', 12, 5, 'Carolyn', 'Dunlap', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carolyn', 'Dunlap', 'Carolyn Dunlap — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carolyn', 'Dunlap', 'Carolyn Dunlap is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-03-28', 'MALE', 14, 1, 'Vanessa', 'Hicks', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Vanessa', 'Hicks', 'Vanessa Hicks — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Vanessa', 'Hicks', 'Vanessa Hicks is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-09-29', 'FEMALE', 1, 4, 'Robert', 'Richardson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Richardson', 'Robert Richardson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Richardson', 'Robert Richardson is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-10-11', 'FEMALE', 15, 2, 'Roy', 'Garcia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Roy', 'Garcia', 'Roy Garcia — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Roy', 'Garcia', 'Roy Garcia is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-11-05', 'MALE', 11, 4, 'Brian', 'Khan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brian', 'Khan', 'Brian Khan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Khan', 'Brian Khan is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-07-14', 'MALE', 6, 1, 'Amanda', 'Watts', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amanda', 'Watts', 'Amanda Watts — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Watts', 'Amanda Watts is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-05-09', 'FEMALE', 9, 2, 'Christopher', 'Stevens', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Stevens', 'Christopher Stevens — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Stevens', 'Christopher Stevens is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-06-14', 'MALE', 8, 2, 'Ray', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ray', 'Stewart', 'Ray Stewart — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ray', 'Stewart', 'Ray Stewart is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-10-01', 'FEMALE', 5, 5, 'Joseph', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Davis', 'Joseph Davis — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Davis', 'Joseph Davis is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-10-27', 'FEMALE', 5, 5, 'Patricia', 'Wolf', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Wolf', 'Patricia Wolf — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Wolf', 'Patricia Wolf is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-05-19', 'FEMALE', 4, 1, 'Stacy', 'Nixon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stacy', 'Nixon', 'Stacy Nixon — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacy', 'Nixon', 'Stacy Nixon is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-01-25', 'MALE', 12, 1, 'Kenneth', 'Beasley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kenneth', 'Beasley', 'Kenneth Beasley — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kenneth', 'Beasley', 'Kenneth Beasley is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-12-30', 'FEMALE', 15, 5, 'Mackenzie', 'Pollard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mackenzie', 'Pollard', 'Mackenzie Pollard — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mackenzie', 'Pollard', 'Mackenzie Pollard is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-09-20', 'MALE', 9, 3, 'Kathleen', 'Powell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathleen', 'Powell', 'Kathleen Powell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathleen', 'Powell', 'Kathleen Powell is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-01-09', 'MALE', 3, 4, 'Daniel', 'Jensen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Jensen', 'Daniel Jensen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Jensen', 'Daniel Jensen is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-04-05', 'FEMALE', 3, 2, 'Danielle', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Danielle', 'Rodriguez', 'Danielle Rodriguez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Danielle', 'Rodriguez', 'Danielle Rodriguez is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-02-10', 'FEMALE', 2, 1, 'Ralph', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ralph', 'Smith', 'Ralph Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ralph', 'Smith', 'Ralph Smith is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-08-08', 'FEMALE', 2, 3, 'Glenn', 'Lopez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Glenn', 'Lopez', 'Glenn Lopez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Glenn', 'Lopez', 'Glenn Lopez is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-07-28', 'MALE', 9, 4, 'Cody', 'Dominguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cody', 'Dominguez', 'Cody Dominguez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cody', 'Dominguez', 'Cody Dominguez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-01-21', 'MALE', 9, 2, 'Johnny', 'Glover', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Johnny', 'Glover', 'Johnny Glover — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Johnny', 'Glover', 'Johnny Glover is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-12-28', 'MALE', 2, 4, 'Joseph', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Smith', 'Joseph Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Smith', 'Joseph Smith is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-05-28', 'MALE', 2, 4, 'Kevin', 'Hall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kevin', 'Hall', 'Kevin Hall — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kevin', 'Hall', 'Kevin Hall is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-06-21', 'FEMALE', 6, 4, 'Joseph', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Hill', 'Joseph Hill — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Hill', 'Joseph Hill is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-03-16', 'MALE', 1, 1, 'Scott', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Scott', 'Smith', 'Scott Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Smith', 'Scott Smith is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-05-08', 'FEMALE', 13, 4, 'Kenneth', 'Forbes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кеннет', 'Форбс', 'Кеннет Форбс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kenneth', 'Forbes', 'Kenneth Forbes is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-10-05', 'MALE', 8, 5, 'Wendy', 'Barajas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Венди', 'Бараджас', 'Венди Бараджас — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wendy', 'Barajas', 'Wendy Barajas is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-03-11', 'FEMALE', 3, 2, 'Steven', 'Palmer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Палмер', 'Стивен Палмер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Palmer', 'Steven Palmer is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-09-21', 'FEMALE', 10, 3, 'Neil', 'Tran', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Нил', 'Тран', 'Нил Тран — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Neil', 'Tran', 'Neil Tran is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-11-17', 'MALE', 2, 4, 'Joshua', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Смит', 'Джошуа Смит — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Smith', 'Joshua Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-08-14', 'MALE', 1, 5, 'Jason', 'Butler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джейсон', 'Батлер', 'Джейсон Батлер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Butler', 'Jason Butler is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-01-03', 'MALE', 11, 5, 'Shane', 'Yang', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шейн', 'Янг', 'Шейн Янг — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shane', 'Yang', 'Shane Yang is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-02-06', 'MALE', 7, 3, 'Julia', 'Cole', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джулия', 'Коул', 'Джулия Коул — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julia', 'Cole', 'Julia Cole is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-08-20', 'MALE', 5, 1, 'Seth', 'Jacobson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сет', 'Якобсон', 'Сет Якобсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Seth', 'Jacobson', 'Seth Jacobson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-09-27', 'FEMALE', 7, 2, 'Cynthia', 'Russell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Синтия', 'Расселл', 'Синтия Расселл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cynthia', 'Russell', 'Cynthia Russell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-20', 'MALE', 11, 3, 'Robert', 'Scott', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Скотт', 'Роберт Скотт — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Scott', 'Robert Scott is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-23', 'MALE', 8, 1, 'Stacy', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стейси', 'Браун', 'Стейси Браун — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacy', 'Brown', 'Stacy Brown is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-12-29', 'FEMALE', 15, 2, 'Patrick', 'Reid', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Патрик', 'Рид', 'Патрик Рид — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patrick', 'Reid', 'Patrick Reid is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-06-18', 'FEMALE', 12, 2, 'William', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Кларк', 'Уильям Кларк — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Clark', 'William Clark is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-06-23', 'MALE', 14, 2, 'Kathryn', 'Collins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэтрин', 'Коллинз', 'Кэтрин Коллинз — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathryn', 'Collins', 'Kathryn Collins is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-07-31', 'MALE', 10, 4, 'Jennifer', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Джонсон', 'Дженнифер Джонсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Johnson', 'Jennifer Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-10-16', 'MALE', 14, 5, 'Michael', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Джонсон', 'Майкл Джонсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Johnson', 'Michael Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-03-27', 'FEMALE', 9, 2, 'Hailey', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хейли', 'Андерсон', 'Хейли Андерсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Hailey', 'Anderson', 'Hailey Anderson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-01-02', 'FEMALE', 11, 4, 'Wesley', 'Fischer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уэсли', 'Фишер', 'Уэсли Фишер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wesley', 'Fischer', 'Wesley Fischer is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-06-29', 'FEMALE', 14, 4, 'Amy', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эми', 'Родригес', 'Эми Родригес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Rodriguez', 'Amy Rodriguez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-01-06', 'FEMALE', 10, 4, 'Tyler', 'Love', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тайлер', 'Лав', 'Тайлер Лав — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tyler', 'Love', 'Tyler Love is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-05-30', 'FEMALE', 1, 1, 'Mary', 'Sullivan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Салливан', 'Мэри Салливан — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Sullivan', 'Mary Sullivan is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-12-28', 'MALE', 15, 5, 'James', 'Delacruz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Делакруз', 'Джеймс Делакруз — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Delacruz', 'James Delacruz is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-06-05', 'FEMALE', 14, 4, 'Kathleen', 'Velasquez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэтлин', 'Веласкес', 'Кэтлин Веласкес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathleen', 'Velasquez', 'Kathleen Velasquez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-03-08', 'MALE', 8, 5, 'James', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Чавес', 'Джеймс Чавес — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Chavez', 'James Chavez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-11-01', 'FEMALE', 3, 1, 'Wendy', 'Caldwell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Венди', 'Колдуэлл', 'Венди Колдуэлл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wendy', 'Caldwell', 'Wendy Caldwell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-09-18', 'FEMALE', 12, 4, 'Amber', 'Parker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмбер', 'Паркер', 'Эмбер Паркер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amber', 'Parker', 'Amber Parker is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-11-03', 'FEMALE', 10, 4, 'Sandra', 'Gardner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сандра', 'Гарднер', 'Сандра Гарднер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sandra', 'Gardner', 'Sandra Gardner is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-02-27', 'FEMALE', 7, 3, 'Heather', 'Terrell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хизер', 'Террелл', 'Хизер Террелл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Terrell', 'Heather Terrell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-06-27', 'MALE', 4, 3, 'Terri', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Терри', 'Смит', 'Терри Смит — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Terri', 'Smith', 'Terri Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-10-26', 'FEMALE', 10, 2, 'Ashley', 'Simmons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эшли', 'Симмонс', 'Эшли Симмонс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Simmons', 'Ashley Simmons is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-12-19', 'FEMALE', 4, 5, 'Victoria', 'White', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Виктория', 'Уайт', 'Виктория Уайт — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Victoria', 'White', 'Victoria White is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-05-19', 'MALE', 12, 3, 'Timothy', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тимоти', 'Смит', 'Тимоти Смит — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Timothy', 'Smith', 'Timothy Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-06-28', 'MALE', 10, 2, 'David', 'Griffin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Гриффин', 'Дэвид Гриффин — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Griffin', 'David Griffin is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-11-19', 'FEMALE', 12, 5, 'Robert', 'Baker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Бейкер', 'Роберт Бейкер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Baker', 'Robert Baker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-04-25', 'MALE', 3, 5, 'Debra', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дебра', 'Гонсалес', 'Дебра Гонсалес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Debra', 'Gonzalez', 'Debra Gonzalez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-04-27', 'FEMALE', 13, 5, 'Edward', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эдвард', 'Джонс', 'Эдвард Джонс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Edward', 'Jones', 'Edward Jones is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-11-15', 'FEMALE', 3, 4, 'Tony', 'Ortega', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tony', 'Ortega', 'Tony Ortega — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tony', 'Ortega', 'Tony Ortega is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-10-14', 'MALE', 15, 1, 'Tonya', 'Thomas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tonya', 'Thomas', 'Tonya Thomas — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tonya', 'Thomas', 'Tonya Thomas is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-05-05', 'FEMALE', 12, 4, 'Derek', 'Michael', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Derek', 'Michael', 'Derek Michael — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Derek', 'Michael', 'Derek Michael is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-02-18', 'FEMALE', 8, 1, 'John', 'Schroeder', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Schroeder', 'John Schroeder — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Schroeder', 'John Schroeder is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-03-03', 'MALE', 15, 5, 'Heather', 'Shaw', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Heather', 'Shaw', 'Heather Shaw — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Shaw', 'Heather Shaw is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-01-20', 'MALE', 15, 1, 'James', 'Massey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Massey', 'James Massey — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Massey', 'James Massey is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-07-18', 'FEMALE', 7, 4, 'Jose', 'Hanson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jose', 'Hanson', 'Jose Hanson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jose', 'Hanson', 'Jose Hanson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-03-31', 'FEMALE', 7, 3, 'Alexis', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexis', 'Miller', 'Alexis Miller — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexis', 'Miller', 'Alexis Miller is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-01-13', 'FEMALE', 14, 1, 'Hayley', 'Gilbert', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Hayley', 'Gilbert', 'Hayley Gilbert — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Hayley', 'Gilbert', 'Hayley Gilbert is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-08-15', 'FEMALE', 4, 4, 'Russell', 'Galvan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Russell', 'Galvan', 'Russell Galvan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Russell', 'Galvan', 'Russell Galvan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-05-14', 'MALE', 13, 1, 'Sarah', 'Barton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Barton', 'Sarah Barton — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Barton', 'Sarah Barton is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-08-25', 'MALE', 10, 5, 'Michelle', 'Farley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michelle', 'Farley', 'Michelle Farley — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Farley', 'Michelle Farley is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-04-18', 'MALE', 8, 4, 'Brent', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brent', 'Ramirez', 'Brent Ramirez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brent', 'Ramirez', 'Brent Ramirez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-05-10', 'MALE', 10, 4, 'David', 'Nguyen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Nguyen', 'David Nguyen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Nguyen', 'David Nguyen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-04-28', 'FEMALE', 13, 4, 'Charles', 'Watkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charles', 'Watkins', 'Charles Watkins — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Watkins', 'Charles Watkins is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-09-20', 'MALE', 4, 1, 'Justin', 'Richard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Justin', 'Richard', 'Justin Richard — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Justin', 'Richard', 'Justin Richard is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-09-08', 'FEMALE', 6, 1, 'Cheryl', 'Espinoza', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cheryl', 'Espinoza', 'Cheryl Espinoza — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cheryl', 'Espinoza', 'Cheryl Espinoza is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-12-07', 'FEMALE', 9, 5, 'Michael', 'Warren', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Warren', 'Michael Warren — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Warren', 'Michael Warren is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-09-14', 'FEMALE', 6, 4, 'Jill', 'Rangel', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jill', 'Rangel', 'Jill Rangel — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jill', 'Rangel', 'Jill Rangel is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-10-01', 'FEMALE', 14, 3, 'Zachary', 'Nguyen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Nguyen', 'Zachary Nguyen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Nguyen', 'Zachary Nguyen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-08-10', 'FEMALE', 3, 2, 'Amber', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amber', 'Clark', 'Amber Clark — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amber', 'Clark', 'Amber Clark is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-03-03', 'FEMALE', 8, 4, 'Nicole', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicole', 'Smith', 'Nicole Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Smith', 'Nicole Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-02-23', 'MALE', 11, 3, 'Alexander', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexander', 'Wilson', 'Alexander Wilson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexander', 'Wilson', 'Alexander Wilson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-06-05', 'FEMALE', 7, 4, 'Paula', 'Wood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Paula', 'Wood', 'Paula Wood — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Paula', 'Wood', 'Paula Wood is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-11-25', 'MALE', 9, 3, 'Joseph', 'Hansen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Hansen', 'Joseph Hansen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Hansen', 'Joseph Hansen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-08-10', 'MALE', 12, 5, 'Sarah', 'Joseph', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Joseph', 'Sarah Joseph — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Joseph', 'Sarah Joseph is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-05-11', 'FEMALE', 7, 2, 'Janet', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Janet', 'Williams', 'Janet Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Janet', 'Williams', 'Janet Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-06-02', 'MALE', 1, 2, 'Julie', 'Jefferson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Julie', 'Jefferson', 'Julie Jefferson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julie', 'Jefferson', 'Julie Jefferson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-04-23', 'FEMALE', 3, 4, 'Laura', 'Fisher', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Laura', 'Fisher', 'Laura Fisher — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Fisher', 'Laura Fisher is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-12-17', 'FEMALE', 2, 3, 'Alexandra', 'Herrera', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexandra', 'Herrera', 'Alexandra Herrera — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexandra', 'Herrera', 'Alexandra Herrera is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-07-17', 'FEMALE', 13, 3, 'Christina', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christina', 'Allen', 'Christina Allen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Allen', 'Christina Allen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-07-01', 'MALE', 9, 5, 'Mary', 'Kemp', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mary', 'Kemp', 'Mary Kemp — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Kemp', 'Mary Kemp is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-08-04', 'MALE', 6, 1, 'Michael', 'Knight', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Knight', 'Michael Knight — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Knight', 'Michael Knight is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-10-15', 'FEMALE', 12, 5, 'Michelle', 'Lambert', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michelle', 'Lambert', 'Michelle Lambert — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Lambert', 'Michelle Lambert is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-04-10', 'FEMALE', 12, 2, 'Chad', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Chad', 'Ramirez', 'Chad Ramirez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Chad', 'Ramirez', 'Chad Ramirez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-01-11', 'MALE', 8, 3, 'John', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Miller', 'John Miller — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Miller', 'John Miller is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-06-15', 'MALE', 13, 2, 'Kathryn', 'Norton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathryn', 'Norton', 'Kathryn Norton — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathryn', 'Norton', 'Kathryn Norton is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-02-18', 'FEMALE', 4, 1, 'Candace', 'Calderon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэндис', 'Кальдерон', 'Кэндис Кальдерон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Candace', 'Calderon', 'Candace Calderon is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-03-18', 'MALE', 7, 2, 'Brittany', 'Simmons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бриттани', 'Симмонс', 'Бриттани Симмонс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Simmons', 'Brittany Simmons is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-01-06', 'FEMALE', 1, 3, 'Charles', 'Sweeney', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Чарльз', 'Суини', 'Чарльз Суини — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Sweeney', 'Charles Sweeney is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-09-20', 'MALE', 3, 4, 'Stephen', 'Nelson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Нельсон', 'Стивен Нельсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Nelson', 'Stephen Nelson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-08-31', 'FEMALE', 13, 4, 'Marie', 'Butler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мари', 'Батлер', 'Мари Батлер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marie', 'Butler', 'Marie Butler is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-07-01', 'FEMALE', 10, 2, 'Gary', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Гэри', 'Андерсон', 'Гэри Андерсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gary', 'Anderson', 'Gary Anderson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-08-04', 'FEMALE', 13, 4, 'Steven', 'Wells', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Уэллс', 'Стивен Уэллс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Wells', 'Steven Wells is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-08-29', 'MALE', 3, 1, 'Angela', 'Garcia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Анджела', 'Гарсия', 'Анджела Гарсия — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Garcia', 'Angela Garcia is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-01-23', 'FEMALE', 2, 5, 'Julie', 'Greene', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джули', 'Грин', 'Джули Грин — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julie', 'Greene', 'Julie Greene is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-03-06', 'FEMALE', 1, 1, 'Lee', 'Collins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ли', 'Коллинз', 'Ли Коллинз — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lee', 'Collins', 'Lee Collins is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-08-29', 'FEMALE', 10, 5, 'Sheryl', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шерил', 'Джонсон', 'Шерил Джонсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sheryl', 'Johnson', 'Sheryl Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-09-15', 'FEMALE', 3, 3, 'Michael', 'Cox', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Кокс', 'Майкл Кокс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Cox', 'Michael Cox is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-12-24', 'FEMALE', 14, 2, 'Thomas', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Томас', 'Джонсон', 'Томас Джонсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Johnson', 'Thomas Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-06-08', 'FEMALE', 9, 4, 'Nicholas', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Николас', 'Смит', 'Николас Смит — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Smith', 'Nicholas Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-07-27', 'MALE', 9, 2, 'Roy', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рой', 'Уильямс', 'Рой Уильямс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Roy', 'Williams', 'Roy Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-09-23', 'FEMALE', 3, 5, 'Matthew', 'Hall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэтью', 'Холл', 'Мэтью Холл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Hall', 'Matthew Hall is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-10-20', 'FEMALE', 9, 2, 'Robert', 'Chung', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Чанг', 'Роберт Чанг — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Chung', 'Robert Chung is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-04-28', 'MALE', 6, 1, 'Sherri', 'Pierce', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шерри', 'Пирс', 'Шерри Пирс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sherri', 'Pierce', 'Sherri Pierce is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-03-16', 'FEMALE', 13, 3, 'Matthew', 'Turner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэтью', 'Тёрнер', 'Мэтью Тёрнер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Turner', 'Matthew Turner is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-11-06', 'MALE', 3, 2, 'Susan', 'Baker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сьюзан', 'Бейкер', 'Сьюзан Бейкер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Susan', 'Baker', 'Susan Baker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-05-27', 'MALE', 1, 4, 'Raymond', 'Barnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рэймонд', 'Барнетт', 'Рэймонд Барнетт — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Raymond', 'Barnett', 'Raymond Barnett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-06-13', 'FEMALE', 1, 1, 'Cindy', 'Callahan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Синди', 'Кэллахан', 'Синди Кэллахан — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cindy', 'Callahan', 'Cindy Callahan is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-04-29', 'FEMALE', 2, 4, 'Phillip', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Филлип', 'Ли', 'Филлип Ли — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Phillip', 'Lee', 'Phillip Lee is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-09-06', 'MALE', 10, 5, 'Nathan', 'Oneill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Нейтан', 'О’Нилл', 'Нейтан О’Нилл — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nathan', 'Oneill', 'Nathan Oneill is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-03-15', 'FEMALE', 10, 1, 'Randall', 'Martin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рэндалл', 'Мартин', 'Рэндалл Мартин — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Randall', 'Martin', 'Randall Martin is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-11', 'FEMALE', 11, 4, 'Lorraine', 'Larsen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лоррейн', 'Ларсен', 'Лоррейн Ларсен — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lorraine', 'Larsen', 'Lorraine Larsen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-09-09', 'FEMALE', 5, 3, 'Christopher', 'Barrett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Барретт', 'Кристофер Барретт — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Barrett', 'Christopher Barrett is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-12-22', 'FEMALE', 15, 5, 'Michael', 'Novak', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Новак', 'Майкл Новак — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Novak', 'Michael Novak is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-08-23', 'FEMALE', 10, 4, 'Charles', 'Ortiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Чарльз', 'Ортис', 'Чарльз Ортис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Ortiz', 'Charles Ortiz is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-12-18', 'FEMALE', 13, 5, 'Megan', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Меган', 'Ли', 'Меган Ли — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Megan', 'Lee', 'Megan Lee is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-10-08', 'MALE', 13, 2, 'Jocelyn', 'Mitchell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джоселин', 'Митчелл', 'Джоселин Митчелл — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jocelyn', 'Mitchell', 'Jocelyn Mitchell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-08-15', 'FEMALE', 3, 4, 'Bobby', 'Norton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бобби', 'Нортон', 'Бобби Нортон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bobby', 'Norton', 'Bobby Norton is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-09-26', 'FEMALE', 3, 2, 'Lindsay', 'Nelson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Линдси', 'Нельсон', 'Линдси Нельсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsay', 'Nelson', 'Lindsay Nelson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-08-02', 'MALE', 8, 5, 'Edward', 'Patrick', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Edward', 'Patrick', 'Edward Patrick — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Edward', 'Patrick', 'Edward Patrick is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-07-07', 'FEMALE', 7, 3, 'Robert', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Smith', 'Robert Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Smith', 'Robert Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-03-09', 'MALE', 14, 4, 'Elizabeth', 'Ray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Elizabeth', 'Ray', 'Elizabeth Ray — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Ray', 'Elizabeth Ray is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-10-27', 'FEMALE', 2, 1, 'Cynthia', 'Harvey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cynthia', 'Harvey', 'Cynthia Harvey — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cynthia', 'Harvey', 'Cynthia Harvey is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-11-08', 'MALE', 15, 2, 'Jenna', 'Barry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jenna', 'Barry', 'Jenna Barry — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jenna', 'Barry', 'Jenna Barry is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-06-19', 'MALE', 15, 4, 'Joshua', 'Thornton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Thornton', 'Joshua Thornton — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Thornton', 'Joshua Thornton is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-09-18', 'FEMALE', 2, 3, 'Eric', 'Dickson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Eric', 'Dickson', 'Eric Dickson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eric', 'Dickson', 'Eric Dickson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-09-08', 'MALE', 8, 5, 'Brittany', 'Wade', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brittany', 'Wade', 'Brittany Wade — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Wade', 'Brittany Wade is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-04-27', 'MALE', 6, 2, 'Kyle', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kyle', 'Johnson', 'Kyle Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kyle', 'Johnson', 'Kyle Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-09-22', 'FEMALE', 14, 5, 'Ronald', 'Nunez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ronald', 'Nunez', 'Ronald Nunez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ronald', 'Nunez', 'Ronald Nunez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-11-12', 'MALE', 7, 1, 'Robert', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Williams', 'Robert Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Williams', 'Robert Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-01-11', 'FEMALE', 3, 2, 'Johnny', 'Schmidt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Johnny', 'Schmidt', 'Johnny Schmidt — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Johnny', 'Schmidt', 'Johnny Schmidt is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-08-24', 'FEMALE', 10, 5, 'John', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Lee', 'John Lee — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Lee', 'John Lee is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-05-26', 'MALE', 14, 4, 'Zachary', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Smith', 'Zachary Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Smith', 'Zachary Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-28', 'MALE', 10, 2, 'Mathew', 'Scott', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mathew', 'Scott', 'Mathew Scott — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mathew', 'Scott', 'Mathew Scott is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-06-16', 'MALE', 4, 4, 'Gina', 'Madden', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gina', 'Madden', 'Gina Madden — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gina', 'Madden', 'Gina Madden is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-04-30', 'FEMALE', 14, 3, 'John', 'Owens', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Owens', 'John Owens — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Owens', 'John Owens is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-04-26', 'FEMALE', 5, 1, 'Patricia', 'Chan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Patricia', 'Chan', 'Patricia Chan — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patricia', 'Chan', 'Patricia Chan is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-10-29', 'MALE', 3, 5, 'William', 'Jackson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Jackson', 'William Jackson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Jackson', 'William Jackson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-07-04', 'FEMALE', 4, 1, 'Jonathan', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Wilson', 'Jonathan Wilson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Wilson', 'Jonathan Wilson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-11-26', 'FEMALE', 1, 4, 'Christina', 'Carter', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christina', 'Carter', 'Christina Carter — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Carter', 'Christina Carter is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-11-29', 'FEMALE', 2, 3, 'Charles', 'Clay', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charles', 'Clay', 'Charles Clay — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Clay', 'Charles Clay is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-02-17', 'FEMALE', 8, 2, 'Stephen', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stephen', 'Wilson', 'Stephen Wilson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Wilson', 'Stephen Wilson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-12-31', 'MALE', 3, 5, 'Charlotte', 'Ware', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charlotte', 'Ware', 'Charlotte Ware — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charlotte', 'Ware', 'Charlotte Ware is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-01-09', 'MALE', 11, 2, 'Benjamin', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Benjamin', 'Brown', 'Benjamin Brown — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Benjamin', 'Brown', 'Benjamin Brown is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-07-16', 'MALE', 12, 3, 'Nicholas', 'Garcia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicholas', 'Garcia', 'Nicholas Garcia — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Garcia', 'Nicholas Garcia is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-02-27', 'FEMALE', 3, 4, 'Leonard', 'Kim', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Leonard', 'Kim', 'Leonard Kim — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Leonard', 'Kim', 'Leonard Kim is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-05-09', 'MALE', 12, 3, 'Erika', 'Roberts', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Erika', 'Roberts', 'Erika Roberts — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erika', 'Roberts', 'Erika Roberts is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-11-25', 'FEMALE', 6, 2, 'Derek', 'Graham', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Derek', 'Graham', 'Derek Graham — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Derek', 'Graham', 'Derek Graham is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-03-23', 'MALE', 9, 3, 'Audrey', 'Roy', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Audrey', 'Roy', 'Audrey Roy — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Audrey', 'Roy', 'Audrey Roy is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-03-18', 'FEMALE', 8, 3, 'Bruce', 'Bryant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bruce', 'Bryant', 'Bruce Bryant — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bruce', 'Bryant', 'Bruce Bryant is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-08-07', 'FEMALE', 4, 4, 'Kimberly', 'Pugh', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Pugh', 'Kimberly Pugh — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Pugh', 'Kimberly Pugh is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-04-02', 'FEMALE', 9, 2, 'Corey', 'Gutierrez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Corey', 'Gutierrez', 'Corey Gutierrez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Corey', 'Gutierrez', 'Corey Gutierrez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-07-15', 'MALE', 15, 4, 'Audrey', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Audrey', 'Allen', 'Audrey Allen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Audrey', 'Allen', 'Audrey Allen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-11-16', 'MALE', 10, 5, 'William', 'Mercer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Mercer', 'William Mercer — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Mercer', 'William Mercer is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-10-07', 'MALE', 15, 4, 'Dawn', 'Mcclain', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dawn', 'Mcclain', 'Dawn Mcclain — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dawn', 'Mcclain', 'Dawn Mcclain is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-08-26', 'MALE', 4, 5, 'Richard', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Richard', 'Moore', 'Richard Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Moore', 'Richard Moore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-08-31', 'MALE', 10, 3, 'Stephen', 'Wade', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stephen', 'Wade', 'Stephen Wade — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Wade', 'Stephen Wade is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-07-10', 'MALE', 5, 5, 'Gerald', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gerald', 'Williams', 'Gerald Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gerald', 'Williams', 'Gerald Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-09-14', 'FEMALE', 10, 5, 'Jonathan', 'Park', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Park', 'Jonathan Park — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Park', 'Jonathan Park is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-01-20', 'FEMALE', 6, 1, 'Emily', 'Ford', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Emily', 'Ford', 'Emily Ford — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Ford', 'Emily Ford is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-05-25', 'FEMALE', 9, 3, 'Jennifer', 'Adams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Adams', 'Jennifer Adams — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Adams', 'Jennifer Adams is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-06-05', 'FEMALE', 11, 1, 'Jeffery', 'Ingram', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeffery', 'Ingram', 'Jeffery Ingram — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffery', 'Ingram', 'Jeffery Ingram is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-03-27', 'MALE', 12, 2, 'James', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Smith', 'James Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Smith', 'James Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-10-01', 'FEMALE', 8, 3, 'Christopher', 'Hines', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Hines', 'Christopher Hines — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Hines', 'Christopher Hines is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-11-15', 'FEMALE', 15, 4, 'Jennifer', 'Mooney', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Mooney', 'Jennifer Mooney — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Mooney', 'Jennifer Mooney is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-11-10', 'FEMALE', 10, 5, 'Kelsey', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelsey', 'Wilson', 'Kelsey Wilson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelsey', 'Wilson', 'Kelsey Wilson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-01-11', 'FEMALE', 6, 2, 'Carla', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carla', 'Lee', 'Carla Lee — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carla', 'Lee', 'Carla Lee is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-12-03', 'MALE', 7, 3, 'Kathryn', 'Roberts', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kathryn', 'Roberts', 'Kathryn Roberts — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kathryn', 'Roberts', 'Kathryn Roberts is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-10-30', 'FEMALE', 2, 2, 'Adrian', 'Doyle', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Adrian', 'Doyle', 'Adrian Doyle — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Adrian', 'Doyle', 'Adrian Doyle is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-06-07', 'FEMALE', 9, 5, 'Kelsey', 'Baldwin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelsey', 'Baldwin', 'Kelsey Baldwin — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelsey', 'Baldwin', 'Kelsey Baldwin is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-10-08', 'FEMALE', 14, 2, 'Dawn', 'Russell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dawn', 'Russell', 'Dawn Russell — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dawn', 'Russell', 'Dawn Russell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-08-12', 'MALE', 1, 5, 'Tanya', 'Dickerson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tanya', 'Dickerson', 'Tanya Dickerson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tanya', 'Dickerson', 'Tanya Dickerson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-03-10', 'MALE', 8, 1, 'Jack', 'Leonard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jack', 'Leonard', 'Jack Leonard — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jack', 'Leonard', 'Jack Leonard is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-07-21', 'FEMALE', 15, 1, 'Joshua', 'Turner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Turner', 'Joshua Turner — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Turner', 'Joshua Turner is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-11-23', 'MALE', 10, 4, 'Bonnie', 'Jarvis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bonnie', 'Jarvis', 'Bonnie Jarvis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bonnie', 'Jarvis', 'Bonnie Jarvis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-03', 'FEMALE', 8, 4, 'Albert', 'Melton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Albert', 'Melton', 'Albert Melton — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Albert', 'Melton', 'Albert Melton is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-04-20', 'FEMALE', 15, 3, 'Kimberly', 'Tapia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Tapia', 'Kimberly Tapia — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Tapia', 'Kimberly Tapia is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-05-22', 'MALE', 1, 1, 'Lindsay', 'Blankenship', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lindsay', 'Blankenship', 'Lindsay Blankenship — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsay', 'Blankenship', 'Lindsay Blankenship is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-01-29', 'MALE', 8, 2, 'Stacy', 'Chung', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stacy', 'Chung', 'Stacy Chung — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stacy', 'Chung', 'Stacy Chung is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-10-23', 'MALE', 8, 4, 'Jennifer', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Williams', 'Jennifer Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Williams', 'Jennifer Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-02-15', 'FEMALE', 12, 3, 'Destiny', 'Huffman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Destiny', 'Huffman', 'Destiny Huffman — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Destiny', 'Huffman', 'Destiny Huffman is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-07-04', 'FEMALE', 6, 4, 'David', 'Case', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Case', 'David Case — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Case', 'David Case is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-09-28', 'FEMALE', 8, 3, 'Zachary', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Johnson', 'Zachary Johnson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Johnson', 'Zachary Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-01-16', 'FEMALE', 10, 2, 'James', 'Boyd', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Boyd', 'James Boyd — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Boyd', 'James Boyd is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-07-06', 'FEMALE', 6, 2, 'Christopher', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Smith', 'Christopher Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Smith', 'Christopher Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-04-25', 'MALE', 2, 4, 'Jimmy', 'Mcdonald', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jimmy', 'Mcdonald', 'Jimmy Mcdonald — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jimmy', 'Mcdonald', 'Jimmy Mcdonald is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-12-26', 'MALE', 12, 4, 'Joshua', 'Gamble', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Gamble', 'Joshua Gamble — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Gamble', 'Joshua Gamble is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-07-02', 'FEMALE', 4, 4, 'Julia', 'Harris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Julia', 'Harris', 'Julia Harris — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julia', 'Harris', 'Julia Harris is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-12-19', 'MALE', 4, 3, 'Andrew', 'Schmidt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrew', 'Schmidt', 'Andrew Schmidt — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Schmidt', 'Andrew Schmidt is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-06-23', 'FEMALE', 10, 3, 'Jennifer', 'Jenkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Jenkins', 'Jennifer Jenkins — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Jenkins', 'Jennifer Jenkins is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-05-12', 'MALE', 8, 1, 'Richard', 'Copeland', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Richard', 'Copeland', 'Richard Copeland — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Copeland', 'Richard Copeland is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-10-30', 'FEMALE', 3, 3, 'James', 'Dixon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Dixon', 'James Dixon — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Dixon', 'James Dixon is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-04-08', 'FEMALE', 14, 5, 'Daniel', 'Hurley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Hurley', 'Daniel Hurley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Hurley', 'Daniel Hurley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-09-18', 'FEMALE', 10, 2, 'Richard', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Richard', 'Hill', 'Richard Hill — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Hill', 'Richard Hill is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-01-10', 'FEMALE', 8, 1, 'John', 'Robinson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Robinson', 'John Robinson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Robinson', 'John Robinson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-01-19', 'FEMALE', 3, 1, 'Sandra', 'Kelley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sandra', 'Kelley', 'Sandra Kelley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sandra', 'Kelley', 'Sandra Kelley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-10-18', 'MALE', 1, 5, 'Jason', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jason', 'Allen', 'Jason Allen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Allen', 'Jason Allen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-04-29', 'MALE', 2, 5, 'Amy', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amy', 'Brown', 'Amy Brown — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Brown', 'Amy Brown is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-07', 'MALE', 6, 2, 'Larry', 'Avery', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Larry', 'Avery', 'Larry Avery — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Larry', 'Avery', 'Larry Avery is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-03-02', 'FEMALE', 15, 4, 'Kelly', 'Hansen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelly', 'Hansen', 'Kelly Hansen — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Hansen', 'Kelly Hansen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-03-26', 'MALE', 11, 1, 'Joe', 'Cummings', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joe', 'Cummings', 'Joe Cummings — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joe', 'Cummings', 'Joe Cummings is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-08-04', 'FEMALE', 2, 4, 'Gabriella', 'Huerta', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gabriella', 'Huerta', 'Gabriella Huerta — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gabriella', 'Huerta', 'Gabriella Huerta is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-07-27', 'MALE', 8, 1, 'Kelly', 'Bowman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelly', 'Bowman', 'Kelly Bowman — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Bowman', 'Kelly Bowman is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-02-07', 'FEMALE', 8, 2, 'Debra', 'Hernandez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Debra', 'Hernandez', 'Debra Hernandez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Debra', 'Hernandez', 'Debra Hernandez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-05-30', 'FEMALE', 10, 5, 'Chad', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Chad', 'Rodriguez', 'Chad Rodriguez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Chad', 'Rodriguez', 'Chad Rodriguez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-03-22', 'FEMALE', 15, 4, 'Teresa', 'Carpenter', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Teresa', 'Carpenter', 'Teresa Carpenter — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Teresa', 'Carpenter', 'Teresa Carpenter is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-09-02', 'FEMALE', 4, 2, 'Allison', 'Ward', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Allison', 'Ward', 'Allison Ward — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Allison', 'Ward', 'Allison Ward is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-12-24', 'FEMALE', 12, 4, 'Andrea', 'Tate', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrea', 'Tate', 'Andrea Tate — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrea', 'Tate', 'Andrea Tate is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-08-17', 'MALE', 12, 5, 'Ricardo', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ricardo', 'Rodriguez', 'Ricardo Rodriguez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ricardo', 'Rodriguez', 'Ricardo Rodriguez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-03-16', 'FEMALE', 1, 2, 'Edward', 'Terry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Edward', 'Terry', 'Edward Terry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Edward', 'Terry', 'Edward Terry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-12-26', 'FEMALE', 15, 4, 'Brandy', 'Garcia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brandy', 'Garcia', 'Brandy Garcia — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandy', 'Garcia', 'Brandy Garcia is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-10-19', 'FEMALE', 6, 3, 'Christian', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christian', 'Johnson', 'Christian Johnson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christian', 'Johnson', 'Christian Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-01-23', 'MALE', 15, 4, 'Karen', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Karen', 'Johnson', 'Karen Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Karen', 'Johnson', 'Karen Johnson is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-08-20', 'MALE', 14, 1, 'Alexandra', 'Richmond', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexandra', 'Richmond', 'Alexandra Richmond — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexandra', 'Richmond', 'Alexandra Richmond is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-06-11', 'FEMALE', 3, 4, 'Rebecca', 'Krueger', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rebecca', 'Krueger', 'Rebecca Krueger — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rebecca', 'Krueger', 'Rebecca Krueger is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-09-16', 'FEMALE', 8, 4, 'Angela', 'Bennett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Angela', 'Bennett', 'Angela Bennett — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Bennett', 'Angela Bennett is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-11-21', 'FEMALE', 2, 1, 'Joseph', 'Cummings', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joseph', 'Cummings', 'Joseph Cummings — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Cummings', 'Joseph Cummings is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-01-19', 'FEMALE', 7, 3, 'Daniel', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Watson', 'Daniel Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Watson', 'Daniel Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-01-15', 'FEMALE', 9, 2, 'Karen', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Karen', 'Gonzalez', 'Karen Gonzalez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Karen', 'Gonzalez', 'Karen Gonzalez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-06-01', 'MALE', 1, 1, 'Samantha', 'Nelson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Nelson', 'Samantha Nelson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Nelson', 'Samantha Nelson is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-01-04', 'FEMALE', 14, 2, 'Andrew', 'Moran', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrew', 'Moran', 'Andrew Moran — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Moran', 'Andrew Moran is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-01-12', 'FEMALE', 15, 3, 'Theresa', 'Cook', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Theresa', 'Cook', 'Theresa Cook — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Theresa', 'Cook', 'Theresa Cook is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-04-12', 'FEMALE', 11, 4, 'Thomas', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Thomas', 'Taylor', 'Thomas Taylor — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Taylor', 'Thomas Taylor is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-08-21', 'FEMALE', 3, 1, 'Samantha', 'Valdez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Valdez', 'Samantha Valdez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Valdez', 'Samantha Valdez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-04-20', 'FEMALE', 2, 3, 'Austin', 'Holmes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Austin', 'Holmes', 'Austin Holmes — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Austin', 'Holmes', 'Austin Holmes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-01-16', 'MALE', 12, 1, 'Alexis', 'Ortega', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexis', 'Ortega', 'Alexis Ortega — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexis', 'Ortega', 'Alexis Ortega is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-05-09', 'FEMALE', 14, 2, 'Charles', 'Edwards', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charles', 'Edwards', 'Charles Edwards — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Edwards', 'Charles Edwards is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-04-07', 'FEMALE', 9, 2, 'Nicholas', 'Acevedo', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicholas', 'Acevedo', 'Nicholas Acevedo — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Acevedo', 'Nicholas Acevedo is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-02-03', 'FEMALE', 11, 2, 'Christopher', 'Hunt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Hunt', 'Christopher Hunt — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Hunt', 'Christopher Hunt is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-20', 'MALE', 7, 3, 'Stephanie', 'Grimes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stephanie', 'Grimes', 'Stephanie Grimes — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephanie', 'Grimes', 'Stephanie Grimes is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-03-22', 'FEMALE', 4, 2, 'Ronald', 'Holt', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ronald', 'Holt', 'Ronald Holt — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ronald', 'Holt', 'Ronald Holt is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-04-13', 'FEMALE', 9, 4, 'Alicia', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alicia', 'Martinez', 'Alicia Martinez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alicia', 'Martinez', 'Alicia Martinez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-03-06', 'MALE', 12, 4, 'Julia', 'Carter', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Julia', 'Carter', 'Julia Carter — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julia', 'Carter', 'Julia Carter is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-03-06', 'MALE', 12, 1, 'Karen', 'Chapman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Karen', 'Chapman', 'Karen Chapman — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Karen', 'Chapman', 'Karen Chapman is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-09-19', 'MALE', 15, 3, 'Jesse', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jesse', 'Miller', 'Jesse Miller — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jesse', 'Miller', 'Jesse Miller is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-03-18', 'MALE', 3, 2, 'Nicole', 'Bishop', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicole', 'Bishop', 'Nicole Bishop — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Bishop', 'Nicole Bishop is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-06-10', 'FEMALE', 14, 4, 'Christopher', 'Abbott', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Abbott', 'Christopher Abbott — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Abbott', 'Christopher Abbott is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-11-11', 'MALE', 13, 1, 'Barbara', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Barbara', 'Chavez', 'Barbara Chavez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Barbara', 'Chavez', 'Barbara Chavez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-11-23', 'MALE', 13, 3, 'Kimberly', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Smith', 'Kimberly Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Smith', 'Kimberly Smith is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-02-23', 'MALE', 4, 5, 'Michael', 'Ayala', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Ayala', 'Michael Ayala — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Ayala', 'Michael Ayala is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-03-18', 'MALE', 13, 2, 'Nancy', 'Gomez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nancy', 'Gomez', 'Nancy Gomez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nancy', 'Gomez', 'Nancy Gomez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-11-15', 'FEMALE', 3, 1, 'Shelia', 'Ellis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Shelia', 'Ellis', 'Shelia Ellis — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shelia', 'Ellis', 'Shelia Ellis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-10-02', 'MALE', 4, 2, 'Jonathan', 'Russell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Russell', 'Jonathan Russell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Russell', 'Jonathan Russell is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-02-04', 'FEMALE', 13, 2, 'Tina', 'Mays', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tina', 'Mays', 'Tina Mays — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tina', 'Mays', 'Tina Mays is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-04-14', 'FEMALE', 7, 3, 'April', 'Carey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'April', 'Carey', 'April Carey — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'April', 'Carey', 'April Carey is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-04-06', 'FEMALE', 15, 1, 'Brandon', 'Cooper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brandon', 'Cooper', 'Brandon Cooper — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandon', 'Cooper', 'Brandon Cooper is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-05-21', 'MALE', 10, 2, 'Rhonda', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rhonda', 'Gonzalez', 'Rhonda Gonzalez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rhonda', 'Gonzalez', 'Rhonda Gonzalez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-09-19', 'FEMALE', 14, 2, 'Samantha', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Rodriguez', 'Samantha Rodriguez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Rodriguez', 'Samantha Rodriguez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-10-31', 'FEMALE', 10, 4, 'Nicholas', 'Reyes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicholas', 'Reyes', 'Nicholas Reyes — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicholas', 'Reyes', 'Nicholas Reyes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-12-12', 'FEMALE', 5, 5, 'Linda', 'Stone', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Linda', 'Stone', 'Linda Stone — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Linda', 'Stone', 'Linda Stone is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-07-14', 'FEMALE', 1, 3, 'Erika', 'Harris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Erika', 'Harris', 'Erika Harris — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erika', 'Harris', 'Erika Harris is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-11-01', 'MALE', 6, 5, 'Heather', 'Rice', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Heather', 'Rice', 'Heather Rice — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Rice', 'Heather Rice is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-07-06', 'FEMALE', 13, 3, 'Rebecca', 'Edwards', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rebecca', 'Edwards', 'Rebecca Edwards — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rebecca', 'Edwards', 'Rebecca Edwards is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-01-29', 'FEMALE', 12, 1, 'Martin', 'Gardner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Martin', 'Gardner', 'Martin Gardner — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Martin', 'Gardner', 'Martin Gardner is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-12-20', 'MALE', 7, 4, 'Blake', 'Page', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Blake', 'Page', 'Blake Page — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Blake', 'Page', 'Blake Page is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-03-22', 'FEMALE', 14, 4, 'Lisa', 'Todd', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lisa', 'Todd', 'Lisa Todd — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Todd', 'Lisa Todd is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-12-21', 'FEMALE', 8, 3, 'Kelly', 'Wilson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelly', 'Wilson', 'Kelly Wilson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Wilson', 'Kelly Wilson is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-01-28', 'FEMALE', 9, 4, 'Michael', 'Gregory', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Gregory', 'Michael Gregory — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Gregory', 'Michael Gregory is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-02-12', 'FEMALE', 13, 2, 'Ashley', 'Thomas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Thomas', 'Ashley Thomas — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Thomas', 'Ashley Thomas is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-09-20', 'MALE', 9, 3, 'Kimberly', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Clark', 'Kimberly Clark — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Clark', 'Kimberly Clark is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-05-08', 'FEMALE', 2, 1, 'Vanessa', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Vanessa', 'Smith', 'Vanessa Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Vanessa', 'Smith', 'Vanessa Smith is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-03-08', 'MALE', 10, 4, 'Kelly', 'Ramos', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelly', 'Ramos', 'Kelly Ramos — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Ramos', 'Kelly Ramos is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-12-10', 'FEMALE', 8, 2, 'Eugene', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Eugene', 'Moore', 'Eugene Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eugene', 'Moore', 'Eugene Moore is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-09-14', 'MALE', 14, 2, 'Daniel', 'Young', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Young', 'Daniel Young — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Young', 'Daniel Young is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-09-02', 'MALE', 11, 2, 'Pamela', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Pamela', 'Torres', 'Pamela Torres — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Pamela', 'Torres', 'Pamela Torres is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-08-20', 'MALE', 3, 5, 'Carlos', 'Barnes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carlos', 'Barnes', 'Carlos Barnes — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carlos', 'Barnes', 'Carlos Barnes is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-12-04', 'MALE', 4, 1, 'Ronnie', 'Lane', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ronnie', 'Lane', 'Ronnie Lane — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ronnie', 'Lane', 'Ronnie Lane is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-04-04', 'MALE', 15, 2, 'Laura', 'Maldonado', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Laura', 'Maldonado', 'Laura Maldonado — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Maldonado', 'Laura Maldonado is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-04-04', 'FEMALE', 3, 2, 'Heather', 'Barker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Heather', 'Barker', 'Heather Barker — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Barker', 'Heather Barker is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-01-11', 'MALE', 1, 2, 'Nicole', 'Diaz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicole', 'Diaz', 'Nicole Diaz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Diaz', 'Nicole Diaz is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-08-18', 'MALE', 1, 3, 'Ronald', 'Hodge', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ronald', 'Hodge', 'Ronald Hodge — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ronald', 'Hodge', 'Ronald Hodge is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-08-21', 'FEMALE', 11, 4, 'Jonathan', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Sanders', 'Jonathan Sanders — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Sanders', 'Jonathan Sanders is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-05-19', 'MALE', 9, 2, 'Jeffrey', 'Bryant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeffrey', 'Bryant', 'Jeffrey Bryant — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Bryant', 'Jeffrey Bryant is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-10-10', 'MALE', 12, 2, 'Devin', 'Sanchez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Devin', 'Sanchez', 'Devin Sanchez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Devin', 'Sanchez', 'Devin Sanchez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-07-24', 'FEMALE', 3, 4, 'Robert', 'Bush', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Robert', 'Bush', 'Robert Bush — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Bush', 'Robert Bush is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-01-18', 'MALE', 14, 5, 'Thomas', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Thomas', 'Smith', 'Thomas Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Smith', 'Thomas Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-10-01', 'FEMALE', 5, 2, 'Erica', 'Mayo', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Erica', 'Mayo', 'Erica Mayo — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erica', 'Mayo', 'Erica Mayo is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-12-11', 'MALE', 14, 2, 'Allison', 'Richardson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Allison', 'Richardson', 'Allison Richardson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Allison', 'Richardson', 'Allison Richardson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-10-23', 'MALE', 5, 1, 'Carlos', 'Peck', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carlos', 'Peck', 'Carlos Peck — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carlos', 'Peck', 'Carlos Peck is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-02-01', 'MALE', 2, 1, 'Samantha', 'Mills', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Samantha', 'Mills', 'Samantha Mills — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Mills', 'Samantha Mills is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-05-05', 'MALE', 13, 3, 'Benjamin', 'Hill', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Benjamin', 'Hill', 'Benjamin Hill — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Benjamin', 'Hill', 'Benjamin Hill is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-09-15', 'FEMALE', 11, 5, 'Jorge', 'Shannon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jorge', 'Shannon', 'Jorge Shannon — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jorge', 'Shannon', 'Jorge Shannon is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-10-23', 'MALE', 13, 2, 'Jonathan', 'Mendoza', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jonathan', 'Mendoza', 'Jonathan Mendoza — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jonathan', 'Mendoza', 'Jonathan Mendoza is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-05-27', 'MALE', 4, 5, 'Diana', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Diana', 'Davis', 'Diana Davis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diana', 'Davis', 'Diana Davis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-03-30', 'MALE', 12, 3, 'Daniel', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Anderson', 'Daniel Anderson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Anderson', 'Daniel Anderson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-02-26', 'FEMALE', 2, 5, 'Kurt', 'Strickland', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kurt', 'Strickland', 'Kurt Strickland — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kurt', 'Strickland', 'Kurt Strickland is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-12-29', 'FEMALE', 7, 5, 'Olivia', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Olivia', 'Lee', 'Olivia Lee — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Olivia', 'Lee', 'Olivia Lee is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-06-11', 'FEMALE', 15, 5, 'Brittany', 'Hampton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brittany', 'Hampton', 'Brittany Hampton — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Hampton', 'Brittany Hampton is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-01-22', 'MALE', 5, 5, 'Matthew', 'Diaz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Diaz', 'Matthew Diaz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Diaz', 'Matthew Diaz is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-07-11', 'FEMALE', 4, 3, 'Leslie', 'Mullins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Leslie', 'Mullins', 'Leslie Mullins — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Leslie', 'Mullins', 'Leslie Mullins is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-04-07', 'FEMALE', 10, 4, 'Amanda', 'Mcfarland', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amanda', 'Mcfarland', 'Amanda Mcfarland — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Mcfarland', 'Amanda Mcfarland is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-12-06', 'MALE', 8, 5, 'Wendy', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Wendy', 'Johnson', 'Wendy Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Wendy', 'Johnson', 'Wendy Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-03-19', 'MALE', 12, 4, 'Kelsey', 'Duncan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kelsey', 'Duncan', 'Kelsey Duncan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelsey', 'Duncan', 'Kelsey Duncan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-11-12', 'MALE', 6, 4, 'Chelsey', 'Hansen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Chelsey', 'Hansen', 'Chelsey Hansen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Chelsey', 'Hansen', 'Chelsey Hansen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-01-06', 'MALE', 6, 1, 'Steven', 'Gardner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Steven', 'Gardner', 'Steven Gardner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steven', 'Gardner', 'Steven Gardner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-04-07', 'FEMALE', 12, 4, 'Natalie', 'Howard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Natalie', 'Howard', 'Natalie Howard — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Natalie', 'Howard', 'Natalie Howard is an actor known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-12-07', 'MALE', 8, 1, 'Nancy', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nancy', 'Lewis', 'Nancy Lewis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nancy', 'Lewis', 'Nancy Lewis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-10-04', 'MALE', 3, 4, 'Kristin', 'Robinson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kristin', 'Robinson', 'Kristin Robinson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristin', 'Robinson', 'Kristin Robinson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-03-31', 'MALE', 8, 2, 'Kimberly', 'Durham', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Durham', 'Kimberly Durham — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Durham', 'Kimberly Durham is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-04-22', 'MALE', 5, 4, 'Jessica', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'Johnson', 'Jessica Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Johnson', 'Jessica Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-09-07', 'MALE', 10, 2, 'Bryan', 'Mitchell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bryan', 'Mitchell', 'Bryan Mitchell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bryan', 'Mitchell', 'Bryan Mitchell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-06-24', 'MALE', 9, 3, 'Matthew', 'Harmon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Harmon', 'Matthew Harmon — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Harmon', 'Matthew Harmon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-09-11', 'MALE', 9, 5, 'Norma', 'Franco', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Norma', 'Franco', 'Norma Franco — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Norma', 'Franco', 'Norma Franco is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-02-11', 'FEMALE', 3, 3, 'Ryan', 'Kaufman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ryan', 'Kaufman', 'Ryan Kaufman — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ryan', 'Kaufman', 'Ryan Kaufman is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-02-19', 'FEMALE', 3, 2, 'Spencer', 'Lane', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Spencer', 'Lane', 'Spencer Lane — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Spencer', 'Lane', 'Spencer Lane is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-11-26', 'MALE', 1, 5, 'Kristin', 'Grant', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kristin', 'Grant', 'Kristin Grant — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristin', 'Grant', 'Kristin Grant is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-07-29', 'FEMALE', 14, 1, 'David', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Henry', 'David Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Henry', 'David Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-05-14', 'FEMALE', 15, 4, 'Tina', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tina', 'Williams', 'Tina Williams — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tina', 'Williams', 'Tina Williams is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-07-09', 'FEMALE', 7, 5, 'Stephen', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stephen', 'Moore', 'Stephen Moore — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Moore', 'Stephen Moore is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-09-05', 'FEMALE', 8, 4, 'Lindsay', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lindsay', 'Johnson', 'Lindsay Johnson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsay', 'Johnson', 'Lindsay Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-01-11', 'FEMALE', 14, 1, 'David', 'Harrington', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Harrington', 'David Harrington — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Harrington', 'David Harrington is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-12-17', 'MALE', 9, 1, 'Jeff', 'Sweeney', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeff', 'Sweeney', 'Jeff Sweeney — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeff', 'Sweeney', 'Jeff Sweeney is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-12-30', 'MALE', 14, 1, 'Lauren', 'Mcneil', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lauren', 'Mcneil', 'Lauren Mcneil — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Mcneil', 'Lauren Mcneil is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-09-11', 'MALE', 9, 5, 'Gary', 'Estrada', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gary', 'Estrada', 'Gary Estrada — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gary', 'Estrada', 'Gary Estrada is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-12-25', 'MALE', 1, 1, 'Zachary', 'Zamora', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Zachary', 'Zamora', 'Zachary Zamora — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Zachary', 'Zamora', 'Zachary Zamora is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-08-01', 'FEMALE', 6, 1, 'Maureen', 'Maxwell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Maureen', 'Maxwell', 'Maureen Maxwell — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maureen', 'Maxwell', 'Maureen Maxwell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-08-06', 'MALE', 14, 3, 'Derrick', 'Downs', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Derrick', 'Downs', 'Derrick Downs — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Derrick', 'Downs', 'Derrick Downs is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-09-02', 'MALE', 12, 2, 'Melissa', 'Wade', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Melissa', 'Wade', 'Melissa Wade — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Melissa', 'Wade', 'Melissa Wade is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-02-15', 'FEMALE', 4, 4, 'Philip', 'Lyons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Philip', 'Lyons', 'Philip Lyons — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Philip', 'Lyons', 'Philip Lyons is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-01-19', 'FEMALE', 2, 4, 'Ian', 'Guzman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ian', 'Guzman', 'Ian Guzman — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ian', 'Guzman', 'Ian Guzman is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-08-09', 'FEMALE', 8, 5, 'Troy', 'Bartlett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Troy', 'Bartlett', 'Troy Bartlett — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Troy', 'Bartlett', 'Troy Bartlett is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-12-20', 'FEMALE', 12, 4, 'Matthew', 'Green', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Green', 'Matthew Green — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Green', 'Matthew Green is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-05-11', 'FEMALE', 8, 5, 'James', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Johnson', 'James Johnson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Johnson', 'James Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-05-03', 'MALE', 11, 1, 'Bobby', 'Friedman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bobby', 'Friedman', 'Bobby Friedman — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bobby', 'Friedman', 'Bobby Friedman is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-06-01', 'MALE', 3, 1, 'Andrea', 'Cunningham', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrea', 'Cunningham', 'Andrea Cunningham — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrea', 'Cunningham', 'Andrea Cunningham is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-09-10', 'FEMALE', 3, 4, 'James', 'Porter', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'James', 'Porter', 'James Porter — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Porter', 'James Porter is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-01-14', 'FEMALE', 10, 1, 'Richard', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Richard', 'Williams', 'Richard Williams — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Williams', 'Richard Williams is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-06-01', 'MALE', 5, 2, 'Jill', 'Price', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jill', 'Price', 'Jill Price — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jill', 'Price', 'Jill Price is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-12-01', 'MALE', 2, 1, 'Jasmine', 'Patrick', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jasmine', 'Patrick', 'Jasmine Patrick — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jasmine', 'Patrick', 'Jasmine Patrick is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-07-24', 'FEMALE', 15, 1, 'Jennifer', 'Morris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jennifer', 'Morris', 'Jennifer Morris — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Morris', 'Jennifer Morris is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-04-03', 'MALE', 9, 1, 'Justin', 'Wu', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Justin', 'Wu', 'Justin Wu — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Justin', 'Wu', 'Justin Wu is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-08-19', 'FEMALE', 11, 1, 'Scott', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Scott', 'Jones', 'Scott Jones — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Jones', 'Scott Jones is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-04-12', 'FEMALE', 12, 5, 'Julie', 'Mason', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Julie', 'Mason', 'Julie Mason — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Julie', 'Mason', 'Julie Mason is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-01-17', 'MALE', 15, 3, 'Brian', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brian', 'Allen', 'Brian Allen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Allen', 'Brian Allen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-10-26', 'MALE', 2, 4, 'Alexander', 'Mills', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Alexander', 'Mills', 'Alexander Mills — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexander', 'Mills', 'Alexander Mills is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-08-22', 'FEMALE', 12, 4, 'Diane', 'Beck', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Diane', 'Beck', 'Diane Beck — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diane', 'Beck', 'Diane Beck is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-10-09', 'FEMALE', 14, 3, 'Gabriella', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gabriella', 'Brown', 'Gabriella Brown — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gabriella', 'Brown', 'Gabriella Brown is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-02-18', 'FEMALE', 13, 2, 'Craig', 'Perez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Craig', 'Perez', 'Craig Perez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Craig', 'Perez', 'Craig Perez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1993-08-24', 'FEMALE', 1, 4, 'Rodney', 'Washington', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rodney', 'Washington', 'Rodney Washington — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rodney', 'Washington', 'Rodney Washington is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-10-02', 'FEMALE', 7, 2, 'Tiffany', 'Stanley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tiffany', 'Stanley', 'Tiffany Stanley — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tiffany', 'Stanley', 'Tiffany Stanley is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-03-06', 'FEMALE', 3, 2, 'Juan', 'Lopez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Juan', 'Lopez', 'Juan Lopez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Juan', 'Lopez', 'Juan Lopez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-02-03', 'MALE', 4, 2, 'Crystal', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Crystal', 'Moore', 'Crystal Moore — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Crystal', 'Moore', 'Crystal Moore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-02-15', 'FEMALE', 7, 1, 'Gary', 'Carpenter', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gary', 'Carpenter', 'Gary Carpenter — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gary', 'Carpenter', 'Gary Carpenter is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-05-24', 'FEMALE', 15, 1, 'Eric', 'Burton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Eric', 'Burton', 'Eric Burton — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eric', 'Burton', 'Eric Burton is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-03-04', 'FEMALE', 14, 1, 'Whitney', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Whitney', 'Ramirez', 'Whitney Ramirez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Whitney', 'Ramirez', 'Whitney Ramirez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-02-16', 'FEMALE', 10, 1, 'William', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Smith', 'William Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Smith', 'William Smith is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-03-13', 'MALE', 10, 4, 'Destiny', 'Schwartz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Destiny', 'Schwartz', 'Destiny Schwartz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Destiny', 'Schwartz', 'Destiny Schwartz is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-05-15', 'FEMALE', 6, 5, 'Kimberly', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Ramirez', 'Kimberly Ramirez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Ramirez', 'Kimberly Ramirez is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-02-01', 'FEMALE', 15, 2, 'Colleen', 'Jenkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Colleen', 'Jenkins', 'Colleen Jenkins — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Colleen', 'Jenkins', 'Colleen Jenkins is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-07-28', 'FEMALE', 5, 5, 'Desiree', 'Lawson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Desiree', 'Lawson', 'Desiree Lawson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Desiree', 'Lawson', 'Desiree Lawson is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-01-13', 'MALE', 15, 2, 'Christopher', 'Cook', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Cook', 'Christopher Cook — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Cook', 'Christopher Cook is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-01-20', 'MALE', 15, 2, 'John', 'Gutierrez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'John', 'Gutierrez', 'John Gutierrez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Gutierrez', 'John Gutierrez is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-12-26', 'FEMALE', 8, 1, 'Crystal', 'Harrison', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Crystal', 'Harrison', 'Crystal Harrison — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Crystal', 'Harrison', 'Crystal Harrison is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-07-02', 'FEMALE', 6, 2, 'Daniel', 'Hicks', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Hicks', 'Daniel Hicks — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Hicks', 'Daniel Hicks is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-07-17', 'FEMALE', 5, 5, 'Laura', 'Wallace', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Laura', 'Wallace', 'Laura Wallace — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laura', 'Wallace', 'Laura Wallace is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-02-22', 'FEMALE', 15, 1, 'Lisa', 'Holland', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lisa', 'Holland', 'Lisa Holland — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Holland', 'Lisa Holland is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-04-18', 'MALE', 8, 3, 'Nicole', 'Parker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Nicole', 'Parker', 'Nicole Parker — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nicole', 'Parker', 'Nicole Parker is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-07-16', 'FEMALE', 12, 1, 'Maria', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Maria', 'Taylor', 'Maria Taylor — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maria', 'Taylor', 'Maria Taylor is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-10-05', 'FEMALE', 5, 1, 'Abigail', 'Moreno', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Abigail', 'Moreno', 'Abigail Moreno — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Abigail', 'Moreno', 'Abigail Moreno is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-02-18', 'FEMALE', 1, 3, 'Andrew', 'Underwood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrew', 'Underwood', 'Andrew Underwood — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Underwood', 'Andrew Underwood is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-04-30', 'MALE', 7, 1, 'Jeffery', 'Carr', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeffery', 'Carr', 'Jeffery Carr — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffery', 'Carr', 'Jeffery Carr is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-07-04', 'MALE', 5, 4, 'Kayla', 'Brooks', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kayla', 'Brooks', 'Kayla Brooks — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kayla', 'Brooks', 'Kayla Brooks is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-02-18', 'FEMALE', 3, 2, 'Diana', 'Little', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Diana', 'Little', 'Diana Little — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diana', 'Little', 'Diana Little is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-08-15', 'FEMALE', 5, 2, 'Kendra', 'Browning', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kendra', 'Browning', 'Kendra Browning — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kendra', 'Browning', 'Kendra Browning is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-11-14', 'FEMALE', 15, 2, 'Joshua', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Joshua', 'Smith', 'Joshua Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Smith', 'Joshua Smith is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-04-17', 'MALE', 7, 1, 'Dennis', 'Romero', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dennis', 'Romero', 'Dennis Romero — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dennis', 'Romero', 'Dennis Romero is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-09-07', 'MALE', 3, 2, 'Dwayne', 'Hayes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dwayne', 'Hayes', 'Dwayne Hayes — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dwayne', 'Hayes', 'Dwayne Hayes is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-10-30', 'MALE', 14, 3, 'Emily', 'Reynolds', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Emily', 'Reynolds', 'Emily Reynolds — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Reynolds', 'Emily Reynolds is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-09-20', 'FEMALE', 8, 2, 'Michael', 'Short', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Short', 'Michael Short — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Short', 'Michael Short is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-01-02', 'MALE', 3, 3, 'Amanda', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amanda', 'Johnson', 'Amanda Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Johnson', 'Amanda Johnson is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-11-14', 'MALE', 5, 3, 'Tyler', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tyler', 'Jones', 'Tyler Jones — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tyler', 'Jones', 'Tyler Jones is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-01-30', 'MALE', 14, 3, 'Barbara', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Barbara', 'Johnson', 'Barbara Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Barbara', 'Johnson', 'Barbara Johnson is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-06-15', 'MALE', 1, 5, 'Cheryl', 'Cooper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Cheryl', 'Cooper', 'Cheryl Cooper — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cheryl', 'Cooper', 'Cheryl Cooper is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-03-29', 'MALE', 2, 3, 'Katelyn', 'Fowler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Katelyn', 'Fowler', 'Katelyn Fowler — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Katelyn', 'Fowler', 'Katelyn Fowler is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-10-07', 'MALE', 15, 2, 'Diane', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Diane', 'Brown', 'Diane Brown — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diane', 'Brown', 'Diane Brown is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-05-03', 'MALE', 2, 1, 'Mark', 'Fritz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mark', 'Fritz', 'Mark Fritz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mark', 'Fritz', 'Mark Fritz is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-08-05', 'FEMALE', 12, 2, 'Christopher', 'Kemp', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christopher', 'Kemp', 'Christopher Kemp — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Kemp', 'Christopher Kemp is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-01-05', 'MALE', 12, 3, 'Paul', 'Buckley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Paul', 'Buckley', 'Paul Buckley — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Paul', 'Buckley', 'Paul Buckley is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-07-27', 'FEMALE', 9, 2, 'Sabrina', 'Rowe', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sabrina', 'Rowe', 'Sabrina Rowe — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sabrina', 'Rowe', 'Sabrina Rowe is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-01-26', 'MALE', 3, 4, 'Elizabeth', 'Bates', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Elizabeth', 'Bates', 'Elizabeth Bates — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Bates', 'Elizabeth Bates is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-04-12', 'MALE', 7, 4, 'David', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Brown', 'David Brown — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Brown', 'David Brown is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-06-02', 'FEMALE', 15, 3, 'Carolyn', 'Manning', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Carolyn', 'Manning', 'Carolyn Manning — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carolyn', 'Manning', 'Carolyn Manning is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-07-24', 'MALE', 12, 2, 'Stephen', 'Morgan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stephen', 'Morgan', 'Stephen Morgan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Morgan', 'Stephen Morgan is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-02-17', 'FEMALE', 11, 3, 'Sarah', 'Bullock', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Bullock', 'Sarah Bullock — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Bullock', 'Sarah Bullock is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-03-30', 'FEMALE', 5, 5, 'Christine', 'Perez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Christine', 'Perez', 'Christine Perez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christine', 'Perez', 'Christine Perez is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-03-11', 'FEMALE', 10, 4, 'David', 'Lee', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'David', 'Lee', 'David Lee — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Lee', 'David Lee is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-07-30', 'MALE', 4, 2, 'Rose', 'Foster', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rose', 'Foster', 'Rose Foster — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rose', 'Foster', 'Rose Foster is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-03-30', 'MALE', 9, 4, 'Lisa', 'Kane', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lisa', 'Kane', 'Lisa Kane — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Kane', 'Lisa Kane is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-03-04', 'FEMALE', 1, 4, 'Sarah', 'Vaughn', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Vaughn', 'Sarah Vaughn — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Vaughn', 'Sarah Vaughn is an actress known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1968-01-08', 'MALE', 13, 5, 'Albert', 'Gross', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Albert', 'Gross', 'Albert Gross — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Albert', 'Gross', 'Albert Gross is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-01-11', 'MALE', 12, 3, 'Amy', 'Rogers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amy', 'Rogers', 'Amy Rogers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amy', 'Rogers', 'Amy Rogers is an actor known for their work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-03-07', 'MALE', 7, 4, 'Andrea', 'Bennett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Андреа', 'Беннетт', 'Андреа Беннетт — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrea', 'Bennett', 'Andrea Bennett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-11-07', 'MALE', 3, 2, 'Tammy', 'Henderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тэмми', 'Хендерсон', 'Тэмми Хендерсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tammy', 'Henderson', 'Tammy Henderson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-07-09', 'FEMALE', 8, 1, 'Joshua', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джошуа', 'Джонсон', 'Джошуа Джонсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joshua', 'Johnson', 'Joshua Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-08-24', 'FEMALE', 8, 1, 'Miranda', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Миранда', 'Мюррей', 'Миранда Мюррей — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Miranda', 'Murray', 'Miranda Murray is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-08-10', 'FEMALE', 8, 2, 'William', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Миллер', 'Уильям Миллер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Miller', 'William Miller is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-12-24', 'MALE', 14, 5, 'Jon', 'Hughes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Хьюз', 'Джон Хьюз — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jon', 'Hughes', 'Jon Hughes is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-03-16', 'FEMALE', 1, 1, 'Jo', 'Green', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джо', 'Грин', 'Джо Грин — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jo', 'Green', 'Jo Green is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-09-01', 'FEMALE', 8, 4, 'Angela', 'Daniels', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Анджела', 'Дэниелс', 'Анджела Дэниелс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Daniels', 'Angela Daniels is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-09-12', 'FEMALE', 3, 3, 'Gabriel', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Габриэль', 'Смит', 'Габриэль Смит — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gabriel', 'Smith', 'Gabriel Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-03-28', 'MALE', 15, 4, 'Diane', 'Morse', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дайан', 'Морс', 'Дайан Морс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diane', 'Morse', 'Diane Morse is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-12-01', 'FEMALE', 14, 1, 'Shawn', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шон', 'Тейлор', 'Шон Тейлор — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shawn', 'Taylor', 'Shawn Taylor is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-07-23', 'FEMALE', 1, 1, 'William', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Мартинес', 'Уильям Мартинес — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Martinez', 'William Martinez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-07-28', 'FEMALE', 4, 5, 'Kim', 'Fowler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ким', 'Фаулер', 'Ким Фаулер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kim', 'Fowler', 'Kim Fowler is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-10-18', 'MALE', 11, 1, 'Mary', 'Mcintosh', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Макинтош', 'Мэри Макинтош — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Mcintosh', 'Mary Mcintosh is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-12-20', 'FEMALE', 5, 1, 'Diane', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дайан', 'Томпсон', 'Дайан Томпсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Diane', 'Thompson', 'Diane Thompson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-08-10', 'MALE', 4, 5, 'Brian', 'Evans', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брайан', 'Эванс', 'Брайан Эванс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Evans', 'Brian Evans is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-07-15', 'FEMALE', 3, 2, 'Michael', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Смит', 'Майкл Смит — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Smith', 'Michael Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-12-31', 'FEMALE', 13, 1, 'Robert', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Роберт', 'Джонсон', 'Роберт Джонсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robert', 'Johnson', 'Robert Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-07-26', 'FEMALE', 1, 2, 'Tammy', 'Benson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тэмми', 'Бенсон', 'Тэмми Бенсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tammy', 'Benson', 'Tammy Benson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-02-08', 'MALE', 15, 2, 'Mary', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Льюис', 'Мэри Льюис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Lewis', 'Mary Lewis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-08-18', 'FEMALE', 5, 5, 'Brittany', 'Frost', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бриттани', 'Фрост', 'Бриттани Фрост — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brittany', 'Frost', 'Brittany Frost is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-06-06', 'MALE', 14, 5, 'Luis', 'Reyes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Луис', 'Рейес', 'Луис Рейес — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Luis', 'Reyes', 'Luis Reyes is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-05-13', 'MALE', 1, 3, 'Kayla', 'Ramirez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кайла', 'Рамирес', 'Кайла Рамирес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kayla', 'Ramirez', 'Kayla Ramirez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-06-09', 'MALE', 3, 5, 'Ronald', 'Wilcox', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рональд', 'Уилкокс', 'Рональд Уилкокс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ronald', 'Wilcox', 'Ronald Wilcox is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-06', 'MALE', 11, 2, 'Debbie', 'Winters', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дебби', 'Уинтерс', 'Дебби Уинтерс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Debbie', 'Winters', 'Debbie Winters is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-03-22', 'FEMALE', 1, 1, 'Emily', 'Cortez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эмили', 'Кортес', 'Эмили Кортес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Emily', 'Cortez', 'Emily Cortez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-06-06', 'FEMALE', 12, 4, 'Fred', 'Hines', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Фред', 'Хайнс', 'Фред Хайнс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Fred', 'Hines', 'Fred Hines is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-07-03', 'FEMALE', 12, 2, 'Jennifer', 'Silva', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Сильва', 'Дженнифер Сильва — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Silva', 'Jennifer Silva is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-04-30', 'FEMALE', 10, 3, 'Lisa', 'Thornton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лиза', 'Торнтон', 'Лиза Торнтон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lisa', 'Thornton', 'Lisa Thornton is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-02-20', 'FEMALE', 5, 2, 'Alyssa', 'Hartman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Алисса', 'Хартман', 'Алисса Хартман — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alyssa', 'Hartman', 'Alyssa Hartman is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-04-03', 'FEMALE', 9, 5, 'Brian', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брайан', 'Боуэрс', 'Брайан Боуэрс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brian', 'Bowers', 'Brian Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-06-09', 'MALE', 6, 1, 'Vicki', 'Lawrence', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Вики', 'Лоуренс', 'Вики Лоуренс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Vicki', 'Lawrence', 'Vicki Lawrence is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-09-28', 'MALE', 14, 2, 'Jeffrey', 'Taylor', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Тейлор', 'Джеффри Тейлор — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Taylor', 'Jeffrey Taylor is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-08-19', 'MALE', 15, 1, 'Samantha', 'Chambers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Саманта', 'Чемберс', 'Саманта Чемберс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Samantha', 'Chambers', 'Samantha Chambers is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-07-10', 'FEMALE', 7, 3, 'Matthew', 'Bennett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэтью', 'Беннетт', 'Мэтью Беннетт — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Bennett', 'Matthew Bennett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-01-31', 'FEMALE', 1, 2, 'Jeffrey', 'Baker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеффри', 'Бейкер', 'Джеффри Бейкер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Baker', 'Jeffrey Baker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-01-20', 'FEMALE', 5, 5, 'Thomas', 'Moore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Томас', 'Мур', 'Томас Мур — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Thomas', 'Moore', 'Thomas Moore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-10-31', 'FEMALE', 2, 3, 'Miguel', 'Andrews', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мигель', 'Эндрюс', 'Мигель Эндрюс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Miguel', 'Andrews', 'Miguel Andrews is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-02-07', 'FEMALE', 14, 5, 'Marc', 'Kim', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марк', 'Ким', 'Марк Ким — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marc', 'Kim', 'Marc Kim is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-03-01', 'MALE', 10, 5, 'Richard', 'Walker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ричард', 'Уокер', 'Ричард Уокер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Walker', 'Richard Walker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-02-24', 'FEMALE', 4, 3, 'Lauren', 'Hernandez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лорен', 'Эрнандес', 'Лорен Эрнандес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Hernandez', 'Lauren Hernandez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-05-21', 'FEMALE', 7, 2, 'Tracy', 'Cook', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Трейси', 'Кук', 'Трейси Кук — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tracy', 'Cook', 'Tracy Cook is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-09-18', 'MALE', 12, 3, 'Anthony', 'Wilkerson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Энтони', 'Уилкерсон', 'Энтони Уилкерсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anthony', 'Wilkerson', 'Anthony Wilkerson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2004-04-11', 'MALE', 15, 3, 'William', 'Gordon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Гордон', 'Уильям Гордон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Gordon', 'William Gordon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-09-29', 'FEMALE', 11, 4, 'Donna', 'Spence', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Донна', 'Спенс', 'Донна Спенс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Donna', 'Spence', 'Donna Spence is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-12-12', 'MALE', 12, 3, 'Kimberly', 'Wise', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Kimberly', 'Wise', 'Kimberly Wise — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Wise', 'Kimberly Wise is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-07-28', 'MALE', 13, 3, 'Jessica', 'Bennett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jessica', 'Bennett', 'Jessica Bennett — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Bennett', 'Jessica Bennett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-02-18', 'FEMALE', 15, 4, 'Howard', 'Medina', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Howard', 'Medina', 'Howard Medina — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Howard', 'Medina', 'Howard Medina is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-12-16', 'FEMALE', 10, 4, 'Charles', 'Daniel', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Charles', 'Daniel', 'Charles Daniel — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Daniel', 'Charles Daniel is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-02-15', 'FEMALE', 15, 1, 'Brandon', 'Dominguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brandon', 'Dominguez', 'Brandon Dominguez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandon', 'Dominguez', 'Brandon Dominguez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-04-22', 'FEMALE', 10, 3, 'Jeffrey', 'Frazier', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeffrey', 'Frazier', 'Jeffrey Frazier — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Frazier', 'Jeffrey Frazier is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-11-09', 'MALE', 14, 4, 'Bethany', 'Simmons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bethany', 'Simmons', 'Bethany Simmons — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bethany', 'Simmons', 'Bethany Simmons is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-01-16', 'MALE', 13, 5, 'Amber', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amber', 'Williams', 'Amber Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amber', 'Williams', 'Amber Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-05-12', 'MALE', 7, 5, 'Jodi', 'Murphy', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jodi', 'Murphy', 'Jodi Murphy — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jodi', 'Murphy', 'Jodi Murphy is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-10-06', 'FEMALE', 3, 2, 'Gerald', 'Jensen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Gerald', 'Jensen', 'Gerald Jensen — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gerald', 'Jensen', 'Gerald Jensen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-05-12', 'FEMALE', 13, 1, 'Amanda', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Amanda', 'Lewis', 'Amanda Lewis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Lewis', 'Amanda Lewis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-03-13', 'MALE', 9, 1, 'Matthew', 'Dixon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Matthew', 'Dixon', 'Matthew Dixon — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Matthew', 'Dixon', 'Matthew Dixon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-07-21', 'MALE', 7, 3, 'Dawn', 'Flores', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dawn', 'Flores', 'Dawn Flores — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dawn', 'Flores', 'Dawn Flores is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-18', 'MALE', 5, 3, 'Abigail', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Abigail', 'Martinez', 'Abigail Martinez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Abigail', 'Martinez', 'Abigail Martinez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-03-29', 'MALE', 9, 3, 'Andrew', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Andrew', 'Torres', 'Andrew Torres — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Torres', 'Andrew Torres is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-02', 'FEMALE', 9, 4, 'Rodney', 'Jenkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rodney', 'Jenkins', 'Rodney Jenkins — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rodney', 'Jenkins', 'Rodney Jenkins is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-03-28', 'FEMALE', 13, 2, 'Sarah', 'Chaney', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Sarah', 'Chaney', 'Sarah Chaney — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sarah', 'Chaney', 'Sarah Chaney is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-02-04', 'FEMALE', 13, 1, 'Monica', 'Frank', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Monica', 'Frank', 'Monica Frank — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Monica', 'Frank', 'Monica Frank is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-07-07', 'MALE', 10, 4, 'Daniel', 'Mcfarland', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Daniel', 'Mcfarland', 'Daniel Mcfarland — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Daniel', 'Mcfarland', 'Daniel Mcfarland is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-05-21', 'FEMALE', 9, 5, 'Dylan', 'Robbins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Dylan', 'Robbins', 'Dylan Robbins — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Dylan', 'Robbins', 'Dylan Robbins is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-06-20', 'MALE', 14, 2, 'Mary', 'Brennan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mary', 'Brennan', 'Mary Brennan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Brennan', 'Mary Brennan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-02-22', 'FEMALE', 14, 2, 'Luis', 'Robles', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Luis', 'Robles', 'Luis Robles — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Luis', 'Robles', 'Luis Robles is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-01-20', 'FEMALE', 1, 2, 'Harry', 'Wood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Harry', 'Wood', 'Harry Wood — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Harry', 'Wood', 'Harry Wood is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-21', 'FEMALE', 3, 2, 'Tara', 'Becker', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Tara', 'Becker', 'Tara Becker — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Tara', 'Becker', 'Tara Becker is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-25', 'MALE', 11, 3, 'Rita', 'Mckenzie', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rita', 'Mckenzie', 'Rita Mckenzie — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rita', 'Mckenzie', 'Rita Mckenzie is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-01-29', 'FEMALE', 11, 5, 'Bryan', 'Howell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Bryan', 'Howell', 'Bryan Howell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Bryan', 'Howell', 'Bryan Howell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-06-30', 'FEMALE', 13, 1, 'Ryan', 'Turner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ryan', 'Turner', 'Ryan Turner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ryan', 'Turner', 'Ryan Turner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-06-24', 'FEMALE', 1, 4, 'Michael', 'Edwards', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Michael', 'Edwards', 'Michael Edwards — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Edwards', 'Michael Edwards is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-11-04', 'MALE', 12, 4, 'Richard', 'Underwood', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Richard', 'Underwood', 'Richard Underwood — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Underwood', 'Richard Underwood is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-10-08', 'MALE', 12, 4, 'Willie', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Willie', 'Johnson', 'Willie Johnson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Willie', 'Johnson', 'Willie Johnson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-05-20', 'MALE', 6, 5, 'Rachel', 'Burnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Rachel', 'Burnett', 'Rachel Burnett — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rachel', 'Burnett', 'Rachel Burnett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-09-30', 'MALE', 8, 5, 'Latasha', 'Leonard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Latasha', 'Leonard', 'Latasha Leonard — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Latasha', 'Leonard', 'Latasha Leonard is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-12-01', 'MALE', 8, 3, 'Brad', 'Guzman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Brad', 'Guzman', 'Brad Guzman — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brad', 'Guzman', 'Brad Guzman is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-03-25', 'FEMALE', 9, 2, 'Crystal', 'Everett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Crystal', 'Everett', 'Crystal Everett — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Crystal', 'Everett', 'Crystal Everett is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-03-22', 'MALE', 6, 2, 'Anna', 'Sanchez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Anna', 'Sanchez', 'Anna Sanchez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anna', 'Sanchez', 'Anna Sanchez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-02-21', 'MALE', 14, 3, 'Jeffrey', 'Burch', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jeffrey', 'Burch', 'Jeffrey Burch — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jeffrey', 'Burch', 'Jeffrey Burch is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-12-10', 'FEMALE', 10, 5, 'Ashley', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ashley', 'Smith', 'Ashley Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Ashley', 'Smith', 'Ashley Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-02-12', 'MALE', 8, 4, 'Angela', 'Dickson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Angela', 'Dickson', 'Angela Dickson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Dickson', 'Angela Dickson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1956-07-29', 'MALE', 8, 2, 'Lori', 'King', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lori', 'King', 'Lori King — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lori', 'King', 'Lori King is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-06-02', 'MALE', 3, 5, 'William', 'Hall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'William', 'Hall', 'William Hall — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Hall', 'William Hall is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-09-09', 'MALE', 3, 3, 'Stefanie', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Stefanie', 'Brown', 'Stefanie Brown — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stefanie', 'Brown', 'Stefanie Brown is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-10-07', 'FEMALE', 9, 3, 'George', 'Morgan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'George', 'Morgan', 'George Morgan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'George', 'Morgan', 'George Morgan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-03-02', 'MALE', 5, 3, 'Mark', 'Mann', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Mark', 'Mann', 'Mark Mann — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mark', 'Mann', 'Mark Mann is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-10', 'FEMALE', 2, 4, 'Scott', 'Cox', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Scott', 'Cox', 'Scott Cox — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Scott', 'Cox', 'Scott Cox is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-04-20', 'FEMALE', 2, 1, 'Lindsay', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Lindsay', 'Torres', 'Lindsay Torres — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lindsay', 'Torres', 'Lindsay Torres is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-02-09', 'FEMALE', 13, 3, 'Jillian', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Jillian', 'Smith', 'Jillian Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jillian', 'Smith', 'Jillian Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-05-14', 'FEMALE', 4, 4, 'Kristin', 'Figueroa', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристин', 'Фигероа', 'Кристин Фигероа — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kristin', 'Figueroa', 'Kristin Figueroa is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-12-05', 'FEMALE', 13, 1, 'Jessica', 'Rivers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джессика', 'Риверс', 'Джессика Риверс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Rivers', 'Jessica Rivers is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-09-03', 'FEMALE', 10, 4, 'Catherine', 'Dougherty', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэтрин', 'Догерти', 'Кэтрин Догерти — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Catherine', 'Dougherty', 'Catherine Dougherty is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-11-22', 'FEMALE', 3, 4, 'Richard', 'Martin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ричард', 'Мартин', 'Ричард Мартин — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Martin', 'Richard Martin is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-11-26', 'FEMALE', 15, 4, 'Mary', 'Clark', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэри', 'Кларк', 'Мэри Кларк — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mary', 'Clark', 'Mary Clark is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-02-19', 'FEMALE', 6, 3, 'Erika', 'Soto', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрика', 'Сото', 'Эрика Сото — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erika', 'Soto', 'Erika Soto is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-11-02', 'FEMALE', 12, 4, 'Colin', 'Ball', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Колин', 'Болл', 'Колин Болл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Colin', 'Ball', 'Colin Ball is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-03-29', 'MALE', 2, 1, 'Johnny', 'Curtis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джонни', 'Кёртис', 'Джонни Кёртис — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Johnny', 'Curtis', 'Johnny Curtis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-07-25', 'FEMALE', 7, 5, 'Kelly', 'Roberts', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Келли', 'Робертс', 'Келли Робертс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kelly', 'Roberts', 'Kelly Roberts is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-07-30', 'MALE', 14, 4, 'Christopher', 'Gilmore', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Гилмор', 'Кристофер Гилмор — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Gilmore', 'Christopher Gilmore is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-09-14', 'FEMALE', 7, 5, 'Joseph', 'Hayes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джозеф', 'Хейс', 'Джозеф Хейс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joseph', 'Hayes', 'Joseph Hayes is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-02-28', 'FEMALE', 10, 4, 'Erica', 'Fischer', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрика', 'Фишер', 'Эрика Фишер — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erica', 'Fischer', 'Erica Fischer is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-02-22', 'MALE', 5, 1, 'Gary', 'Green', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Гэри', 'Грин', 'Гэри Грин — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gary', 'Green', 'Gary Green is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-02-29', 'FEMALE', 10, 5, 'Maria', 'Ortiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мария', 'Ортис', 'Мария Ортис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Maria', 'Ortiz', 'Maria Ortiz is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1957-02-09', 'MALE', 11, 2, 'Christina', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристина', 'Аллен', 'Кристина Аллен — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christina', 'Allen', 'Christina Allen is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2002-01-11', 'MALE', 2, 4, 'Anne', 'Leon', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Энн', 'Леон', 'Энн Леон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Anne', 'Leon', 'Anne Leon is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2005-06-05', 'FEMALE', 15, 1, 'Jim', 'Davidson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джим', 'Дэвидсон', 'Джим Дэвидсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jim', 'Davidson', 'Jim Davidson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-09-22', 'MALE', 13, 3, 'James', 'Prince', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джеймс', 'Принс', 'Джеймс Принс — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'James', 'Prince', 'James Prince is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-04-22', 'MALE', 7, 5, 'John', 'Hudson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Хадсон', 'Джон Хадсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Hudson', 'John Hudson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-07-08', 'FEMALE', 11, 1, 'Kaitlyn', 'Allen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кейтлин', 'Аллен', 'Кейтлин Аллен — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kaitlyn', 'Allen', 'Kaitlyn Allen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-05-01', 'MALE', 13, 3, 'Marcus', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Маркус', 'Гонсалес', 'Маркус Гонсалес — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marcus', 'Gonzalez', 'Marcus Gonzalez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-12-15', 'FEMALE', 11, 1, 'Michael', 'Kim', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Ким', 'Майкл Ким — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Kim', 'Michael Kim is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1998-07-01', 'MALE', 7, 3, 'Sabrina', 'Nelson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Сабрина', 'Нельсон', 'Сабрина Нельсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Sabrina', 'Nelson', 'Sabrina Nelson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-07-13', 'MALE', 5, 3, 'Beth', 'Moody', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бет', 'Муди', 'Бет Муди — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Beth', 'Moody', 'Beth Moody is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-09-18', 'FEMALE', 1, 2, 'Cynthia', 'Vasquez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Синтия', 'Васкес', 'Синтия Васкес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cynthia', 'Vasquez', 'Cynthia Vasquez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1964-09-08', 'FEMALE', 1, 5, 'Crystal', 'Andersen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристал', 'Андерсен', 'Кристал Андерсен — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Crystal', 'Andersen', 'Crystal Andersen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-11-04', 'FEMALE', 13, 2, 'Mark', 'Howard', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марк', 'Ховард', 'Марк Ховард — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mark', 'Howard', 'Mark Howard is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-02-05', 'FEMALE', 7, 5, 'Mark', 'Jones', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марк', 'Джонс', 'Марк Джонс — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mark', 'Jones', 'Mark Jones is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-03-12', 'FEMALE', 4, 3, 'Jessica', 'Barnett', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джессика', 'Барнетт', 'Джессика Барнетт — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jessica', 'Barnett', 'Jessica Barnett is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-05-31', 'FEMALE', 3, 4, 'Phillip', 'Tran', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Филлип', 'Тран', 'Филлип Тран — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Phillip', 'Tran', 'Phillip Tran is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-05-23', 'MALE', 8, 4, 'Laurie', 'Mason', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лори', 'Мейсон', 'Лори Мейсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Laurie', 'Mason', 'Laurie Mason is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-09-08', 'FEMALE', 8, 1, 'Steve', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стив', 'Льюис', 'Стив Льюис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Steve', 'Lewis', 'Steve Lewis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1989-06-25', 'FEMALE', 8, 4, 'Robin', 'Lucas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Робин', 'Лукас', 'Робин Лукас — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robin', 'Lucas', 'Robin Lucas is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1960-11-30', 'FEMALE', 4, 1, 'Heather', 'Jimenez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Хизер', 'Хименес', 'Хизер Хименес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Heather', 'Jimenez', 'Heather Jimenez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1997-05-20', 'FEMALE', 4, 1, 'Alec', 'Anderson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Алекс', 'Андерсон', 'Алекс Андерсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alec', 'Anderson', 'Alec Anderson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-07-26', 'FEMALE', 10, 1, 'Erica', 'Velasquez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрика', 'Веласкес', 'Эрика Веласкес — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Erica', 'Velasquez', 'Erica Velasquez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-06-08', 'MALE', 7, 4, 'Randy', 'Solis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рэнди', 'Солис', 'Рэнди Солис — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Randy', 'Solis', 'Randy Solis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-12-23', 'MALE', 14, 3, 'Jason', 'Snyder', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джейсон', 'Снайдер', 'Джейсон Снайдер — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Snyder', 'Jason Snyder is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-11-27', 'FEMALE', 8, 5, 'Harold', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Гарольд', 'Дэвис', 'Гарольд Дэвис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Harold', 'Davis', 'Harold Davis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-03-14', 'FEMALE', 15, 2, 'Richard', 'Marshall', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ричард', 'Маршалл', 'Ричард Маршалл — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Richard', 'Marshall', 'Richard Marshall is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-08-13', 'FEMALE', 13, 2, 'Jason', 'Olsen', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джейсон', 'Олсен', 'Джейсон Олсен — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jason', 'Olsen', 'Jason Olsen is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-03-28', 'FEMALE', 2, 5, 'Marvin', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Марвин', 'Джонсон', 'Марвин Джонсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Marvin', 'Johnson', 'Marvin Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-04-04', 'MALE', 1, 3, 'Michelle', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мишель', 'Томпсон', 'Мишель Томпсон — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Thompson', 'Michelle Thompson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-09-08', 'FEMALE', 12, 4, 'Eric', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эрик', 'Джонсон', 'Эрик Джонсон — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Eric', 'Johnson', 'Eric Johnson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-10-14', 'MALE', 4, 1, 'Teresa', 'Riley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тереза', 'Райли', 'Тереза Райли — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Teresa', 'Riley', 'Teresa Riley is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-11-05', 'MALE', 14, 5, 'Lauren', 'Foster', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Лорен', 'Фостер', 'Лорен Фостер — актёр, известный своими ролями в драматических и исторических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Lauren', 'Foster', 'Lauren Foster is an actor known for roles in dramatic and historical productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-06-29', 'MALE', 15, 3, 'Michael', 'Steele', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Стил', 'Майкл Стил — молодой актёр, стремительно набирающий популярность в жанре триллеров и боевиков.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Steele', 'Michael Steele is a rising actor gaining recognition in thrillers and action films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-11-04', 'FEMALE', 7, 3, 'Michael', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Уотсон', 'Майкл Уотсон — актриса с богатым опытом в театре и кино, известная глубокими драматическими ролями.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Watson', 'Michael Watson is an actress with extensive theater and film experience, known for profound dramatic roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-09-19', 'FEMALE', 7, 5, 'Timothy', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тимоти', 'Уильямс', 'Тимоти Уильямс — актриса старой школы, чья карьера охватывает десятилетия работы в кино и на сцене.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Timothy', 'Williams', 'Timothy Williams is a veteran actress whose career spans decades of film and stage work.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-10-13', 'FEMALE', 9, 5, 'Christopher', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кристофер', 'Уильямс', 'Кристофер Уильямс — юная актриса, уже проявившая себя в современных драматических сериалах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Christopher', 'Williams', 'Christopher Williams is a young actress already making waves in contemporary dramatic series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-03-26', 'MALE', 14, 1, 'Casey', 'Stokes', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кейси', 'Стокс', 'Кейси Стокс — актёр, известный своими работами в независимом кино и на театральной сцене.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Casey', 'Stokes', 'Casey Stokes is an actor known for his work in independent cinema and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1970-07-08', 'MALE', 11, 1, 'Nancy', 'Hurst', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Нэнси', 'Хёрст', 'Нэнси Хёрст — актёр, специализирующийся на характерных ролях в криминальных драмах и детективах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Nancy', 'Hurst', 'Nancy Hurst is an actor specializing in character roles in crime dramas and detective series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-02-02', 'MALE', 8, 5, 'Michelle', 'Horne', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мишель', 'Хорн', 'Мишель Хорн — актёр, чьи работы часто затрагивают социальные и политические темы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michelle', 'Horne', 'Michelle Horne is an actor whose work often explores social and political themes.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-04-29', 'FEMALE', 12, 5, 'Amanda', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Мюррей', 'Аманда Мюррей — молодая актриса, известная своими ролями в романтических комедиях и драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Murray', 'Amanda Murray is a young actress known for her roles in romantic comedies and dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-03-30', 'MALE', 11, 3, 'Linda', 'Hampton', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Линда', 'Хэмптон', 'Линда Хэмптон — актёр с многолетним опытом в телевизионных драмах и исторических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Linda', 'Hampton', 'Linda Hampton is an actor with decades of experience in TV dramas and historical films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1985-03-24', 'MALE', 12, 5, 'Joanne', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джоанн', 'Смит', 'Джоанн Смит — актёр, известный своими ролями в психологических триллерах и драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Joanne', 'Smith', 'Joanne Smith is an actor known for roles in psychological thrillers and dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-04-07', 'FEMALE', 13, 4, 'David', 'Mathis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дэвид', 'Мэтис', 'Дэвид Мэтис — актриса, чьи работы отмечены глубоким эмоциональным посылом и выразительностью.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'David', 'Mathis', 'David Mathis is an actress noted for emotionally resonant and expressive performances.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1996-03-24', 'MALE', 8, 2, 'Angela', 'Burgess', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Анджела', 'Бёрджесс', 'Анджела Бёрджесс — актёр, известный своими ролями в молодёжных драмах и веб-сериалах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Angela', 'Burgess', 'Angela Burgess is an actor known for roles in youth dramas and web series.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-10-07', 'FEMALE', 15, 1, 'Robin', 'Harvey', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Робин', 'Харви', 'Робин Харви — актриса, специализирующаяся на сильных и независимых женских образах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Robin', 'Harvey', 'Robin Harvey is an actress specializing in strong, independent female characters.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1982-04-10', 'MALE', 6, 3, 'Kimberly', 'Jackson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кимберли', 'Джексон', 'Кимберли Джексон — актёр, чьи работы охватывают как комедии, так и социальные драмы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Jackson', 'Kimberly Jackson is an actor whose work spans comedy and social drama.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-05-04', 'FEMALE', 9, 5, 'Amanda', 'House', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Хаус', 'Аманда Хаус — актриса с богатой карьерой в телевизионных сериалах и независимом кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'House', 'Amanda House is an actress with a rich career in TV series and independent cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-09-08', 'MALE', 12, 4, 'Carolyn', 'Norris', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кэролайн', 'Норрис', 'Кэролайн Норрис — актёр, известный своими ролями в детективных и мистических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Carolyn', 'Norris', 'Carolyn Norris is an actor known for roles in detective and mystery projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-04-09', 'MALE', 4, 2, 'Andrew', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эндрю', 'Уильямс', 'Эндрю Уильямс — актёр, чьи работы включают как комедийные, так и драматические проекты.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Andrew', 'Williams', 'Andrew Williams is an actor whose work includes both comedic and dramatic projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-08-02', 'FEMALE', 15, 4, 'Shirley', 'Dennis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ширли', 'Деннис', 'Ширли Деннис — актриса, известная своими ролями в семейных драмах и исторических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shirley', 'Dennis', 'Shirley Dennis is an actress known for roles in family dramas and historical films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1972-11-01', 'MALE', 14, 2, 'Mathew', 'Contreras', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мэтью', 'Контрерас', 'Мэтью Контрерас — актёр, снимающийся в международных проектах на нескольких языках.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Mathew', 'Contreras', 'Mathew Contreras is an actor appearing in multilingual international productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1987-09-03', 'MALE', 4, 5, 'Brenda', 'Morales', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бренда', 'Моралес', 'Бренда Моралес — актёр, известный своими ролями в латиноамериканских теленовеллах и драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brenda', 'Morales', 'Brenda Morales is an actor known for roles in Latin American telenovelas and dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-01-16', 'FEMALE', 4, 1, 'Karen', 'Mason', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Карен', 'Мейсон', 'Карен Мейсон — актриса, чьи работы часто затрагивают темы семьи и личных отношений.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Karen', 'Mason', 'Karen Mason is an actress whose work often explores themes of family and personal relationships.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1974-03-31', 'MALE', 12, 5, 'Charles', 'Drake', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Чарльз', 'Дрейк', 'Чарльз Дрейк — актёр, известный своими ролями в исторических и военных драмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Charles', 'Drake', 'Charles Drake is an actor known for roles in historical and war dramas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-03-24', 'FEMALE', 4, 2, 'Gregory', 'Long', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Грегори', 'Лонг', 'Грегори Лонг — актриса с многолетней карьерой в классическом и современном театре.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Gregory', 'Long', 'Gregory Long is an actress with a long-standing career in both classic and contemporary theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1961-02-27', 'FEMALE', 10, 2, 'Rhonda', 'Martinez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Ронда', 'Мартинес', 'Ронда Мартинес — актриса, известная своими ролями в драматических сериалах и независимом кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Rhonda', 'Martinez', 'Rhonda Martinez is an actress known for her roles in dramatic series and independent cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1986-02-18', 'FEMALE', 1, 2, 'Cody', 'Kelley', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Коди', 'Келли', 'Коди Келли — актриса, чьи работы включают как комедии, так и психологические драмы.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Cody', 'Kelley', 'Cody Kelley is an actress whose work spans comedy and psychological drama.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1999-07-01', 'MALE', 1, 4, 'Alexis', 'Wells', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Алексис', 'Уэллс', 'Алексис Уэллс — молодой актёр, быстро завоевавший признание за счёт ярких ролей в молодёжных проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Alexis', 'Wells', 'Alexis Wells is a young actor quickly gaining recognition for vivid roles in youth-oriented projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-08-27', 'FEMALE', 6, 2, 'Janice', 'Johnson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженис', 'Джонсон', 'Дженис Джонсон — актриса старой школы, чьи работы стали классикой национального кинематографа.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Janice', 'Johnson', 'Janice Johnson is a veteran actress whose work has become a classic of national cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1965-12-29', 'MALE', 9, 4, 'Kimberly', 'Hooper', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Кимберли', 'Хупер', 'Кимберли Хупер — актёр, известный своими ролями в криминальных драмах и триллерах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Kimberly', 'Hooper', 'Kimberly Hooper is an actor known for roles in crime dramas and thrillers.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-01-20', 'MALE', 10, 3, 'Betty', 'Soto', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Бетти', 'Сото', 'Бетти Сото — актёр, специализирующийся на социальных драмах и молодёжных проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Betty', 'Soto', 'Betty Soto is an actor specializing in social dramas and youth-oriented projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-06-02', 'FEMALE', 7, 4, 'Melanie', 'Barr', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Мелани', 'Барр', 'Мелани Барр — юная актриса, уже успевшая проявить себя в нескольких заметных кинопроектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Melanie', 'Barr', 'Melanie Barr is a young actress already making her mark in several notable film projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1967-09-24', 'MALE', 6, 5, 'Brandi', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Брэнди', 'Уотсон', 'Брэнди Уотсон — актёр, известный своими нестандартными ролями в артхаусном кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Brandi', 'Watson', 'Brandi Watson is an actor known for unconventional roles in arthouse cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1950-02-13', 'MALE', 1, 4, 'William', 'Rose', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Уильям', 'Роуз', 'Уильям Роуз — актёр с богатой карьерой в классических драмах и исторических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'William', 'Rose', 'William Rose is an actor with a distinguished career in classic dramas and historical films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1958-05-23', 'MALE', 6, 4, 'Stephen', 'Cox', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Стивен', 'Кокс', 'Стивен Кокс — актёр, чьи работы охватывают как телевидение, так и театр.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Stephen', 'Cox', 'Stephen Cox is an actor whose work spans television and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-12-02', 'MALE', 15, 1, 'John', 'Valencia', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Джон', 'Валенсия', 'Джон Валенсия — актёр, известный своими ролями в европейском и латиноамериканском кино.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'John', 'Valencia', 'John Valencia is an actor known for roles in European and Latin American cinema.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1994-11-10', 'MALE', 7, 3, 'Raymond', 'Harrell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Рэймонд', 'Харрелл', 'Рэймонд Харрелл — молодой актёр, специализирующийся на драматических и психологических ролях.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Raymond', 'Harrell', 'Raymond Harrell is a young actor specializing in dramatic and psychological roles.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1995-08-26', 'MALE', 7, 1, 'Elizabeth', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Элизабет', 'Смит', 'Элизабет Смит — актёр, известный своими ролями в исторических драмах и биографических фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Elizabeth', 'Smith', 'Elizabeth Smith is an actor known for roles in historical dramas and biographical films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2001-10-02', 'FEMALE', 5, 1, 'Edward', 'Rodriguez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Эдвард', 'Родригес', 'Эдвард Родригес — юная актриса, уже проявившая себя в современных драматических проектах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Edward', 'Rodriguez', 'Edward Rodriguez is a young actress already making an impression in contemporary dramatic projects.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-05-06', 'MALE', 5, 3, 'Michael', 'Lewis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Майкл', 'Льюис', 'Майкл Льюис — актёр с многолетним опытом в классическом кино и на театральной сцене.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Michael', 'Lewis', 'Michael Lewis is an actor with decades of experience in classic cinema and theater.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1959-07-26', 'MALE', 13, 2, 'Jennifer', 'Adams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Дженнифер', 'Адамс', 'Дженнифер Адамс — актёр, известный своими ролями в социальных драмах и триллерах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Jennifer', 'Adams', 'Jennifer Adams is an actor known for roles in social dramas and thrillers.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1963-05-07', 'FEMALE', 12, 5, 'Amanda', 'Gonzalez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Аманда', 'Гонсалес', 'Аманда Гонсалес — актриса, чьи работы часто подчёркивают силу и независимость женских персонажей.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Amanda', 'Gonzalez', 'Amanda Gonzalez is an actress whose work often highlights the strength and independence of female characters.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-05-05', 'FEMALE', 1, 3, 'Patrick', 'Ellis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Патрик', 'Эллис', 'Патрик Эллис — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Patrick', 'Ellis', 'Patrick Ellis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1953-05-24', 'MALE', 10, 3, 'Craig', 'Russell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Крейг', 'Расселл', 'Крейг Расселл — актёр, прославившийся своими ролями в детективных сериалах и триллерах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Craig', 'Russell', 'Craig Russell is an actor renowned for his roles in detective series and thrillers.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-06-24', 'MALE', 8, 4, 'Shannon', 'Cox', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Шеннон', 'Кокс', 'Шеннон Кокс — актёр, чьи работы включают как комедии, так и драматические проекты.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Shannon', 'Cox', 'Shannon Cox is an actor whose work spans comedy and dramatic productions.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-12-17', 'MALE', 9, 1, 'Timothy', 'Hawkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Тимоти', 'Хокинс', 'Тимоти Хокинс — актёр, известный своими ролями в молодёжных драмах и приключенческих фильмах.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Timothy', 'Hawkins', 'Timothy Hawkins is an actor known for roles in youth dramas and adventure films.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1971-02-07', 'MALE', 7, 4, 'TEST', 'Brown', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'ТЕСТ', 'Браун', 'ТЕСТ Браун — актёр (тестовая запись).', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Brown', 'TEST Brown is an actor (test entry).', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-02-02', 'FEMALE', 3, 5, 'TEST', 'Wong', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Wong', 'TEST Wong — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Wong', 'TEST Wong is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-09-30', 'MALE', 10, 3, 'TEST', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Miller', 'TEST Miller — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Miller', 'TEST Miller is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1984-12-27', 'MALE', 12, 1, 'TEST', 'Ortiz', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Ortiz', 'TEST Ortiz — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Ortiz', 'TEST Ortiz is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1983-06-03', 'FEMALE', 7, 4, 'TEST', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Williams', 'TEST Williams — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Williams', 'TEST Williams is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-07-28', 'MALE', 6, 2, 'TEST', 'Williams', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Williams', 'TEST Williams — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Williams', 'TEST Williams is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-08-25', 'MALE', 1, 2, 'TEST', 'Simmons', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Simmons', 'TEST Simmons — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Simmons', 'TEST Simmons is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1942-11-24', 'MALE', 12, 4, 'TEST', 'Cowan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Cowan', 'TEST Cowan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Cowan', 'TEST Cowan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1992-03-10', 'MALE', 15, 3, 'TEST', 'Tanner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Tanner', 'TEST Tanner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Tanner', 'TEST Tanner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-04-30', 'FEMALE', 6, 1, 'TEST', 'Chavez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Chavez', 'TEST Chavez — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Chavez', 'TEST Chavez is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2000-06-15', 'MALE', 9, 3, 'TEST', 'Campbell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Campbell', 'TEST Campbell — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Campbell', 'TEST Campbell is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1973-12-15', 'MALE', 9, 5, 'TEST', 'Ramos', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Ramos', 'TEST Ramos — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Ramos', 'TEST Ramos is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-03-16', 'MALE', 2, 3, 'TEST', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Reed', 'TEST Reed — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Reed', 'TEST Reed is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-10-05', 'FEMALE', 15, 1, 'TEST', 'Ellis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Ellis', 'TEST Ellis — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Ellis', 'TEST Ellis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1981-09-03', 'MALE', 10, 4, 'TEST', 'Stewart', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Stewart', 'TEST Stewart — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Stewart', 'TEST Stewart is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-09-08', 'MALE', 1, 4, 'TEST', 'Duncan', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Duncan', 'TEST Duncan — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Duncan', 'TEST Duncan is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1988-03-06', 'MALE', 6, 5, 'TEST', 'Salinas', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Salinas', 'TEST Salinas — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Salinas', 'TEST Salinas is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-08-28', 'FEMALE', 9, 1, 'TEST', 'Howell', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Howell', 'TEST Howell — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Howell', 'TEST Howell is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1951-12-28', 'MALE', 13, 3, 'TEST', 'Richardson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Richardson', 'TEST Richardson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Richardson', 'TEST Richardson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1952-02-11', 'FEMALE', 2, 5, 'TEST', 'Miller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Miller', 'TEST Miller — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Miller', 'TEST Miller is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-12-19', 'MALE', 2, 3, 'TEST', 'Thompson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Thompson', 'TEST Thompson — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Thompson', 'TEST Thompson is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1941-01-26', 'MALE', 8, 4, 'TEST', 'Griffin', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Griffin', 'TEST Griffin — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Griffin', 'TEST Griffin is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1976-11-26', 'FEMALE', 8, 4, 'TEST', 'Davis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Davis', 'TEST Davis — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Davis', 'TEST Davis is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-10-13', 'MALE', 12, 1, 'TEST', 'Wolf', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Wolf', 'TEST Wolf — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Wolf', 'TEST Wolf is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1975-02-06', 'MALE', 14, 5, 'TEST', 'Paul', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Paul', 'TEST Paul — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Paul', 'TEST Paul is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1945-06-23', 'FEMALE', 1, 5, 'TEST', 'White', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'White', 'TEST White — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'White', 'TEST White is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-01-26', 'MALE', 6, 4, 'TEST', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Smith', 'TEST Smith — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Smith', 'TEST Smith is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1947-04-06', 'FEMALE', 4, 5, 'TEST', 'Smith', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Smith', 'TEST Smith — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Smith', 'TEST Smith is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-07-02', 'MALE', 3, 1, 'TEST', 'Mills', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Mills', 'TEST Mills — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Mills', 'TEST Mills is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1948-08-18', 'MALE', 3, 1, 'TEST', 'Hale', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Hale', 'TEST Hale — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Hale', 'TEST Hale is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1940-04-10', 'MALE', 5, 2, 'TEST', 'Ward', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Ward', 'TEST Ward — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Ward', 'TEST Ward is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1954-01-02', 'MALE', 9, 4, 'TEST', 'Vasquez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Vasquez', 'TEST Vasquez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Vasquez', 'TEST Vasquez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1979-05-18', 'MALE', 12, 2, 'TEST', 'Willis', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Willis', 'TEST Willis — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Willis', 'TEST Willis is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-05-08', 'MALE', 6, 2, 'TEST', 'Peters', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'TEST', 'Peters', 'TEST Peters — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'TEST', 'Peters', 'TEST Peters is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1962-03-28', 'FEMALE', 5, 3, 'Actor001', 'Torres', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor001', 'Torres', 'Actor001 Torres — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor001', 'Torres', 'Actor001 Torres is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1966-08-10', 'FEMALE', 3, 3, 'Actor002', 'Hoffman', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor002', 'Hoffman', 'Actor002 Hoffman — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor002', 'Hoffman', 'Actor002 Hoffman is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1991-09-29', 'FEMALE', 15, 3, 'Actor003', 'Reed', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor003', 'Reed', 'Actor003 Reed — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor003', 'Reed', 'Actor003 Reed is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('2003-09-18', 'FEMALE', 9, 3, 'Actor004', 'Keller', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor004', 'Keller', 'Actor004 Keller — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor004', 'Keller', 'Actor004 Keller is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1980-01-07', 'FEMALE', 6, 5, 'Actor005', 'Peck', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor005', 'Peck', 'Actor005 Peck — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor005', 'Peck', 'Actor005 Peck is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1977-02-17', 'MALE', 10, 2, 'Actor006', 'Murray', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor006', 'Murray', 'Actor006 Murray — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor006', 'Murray', 'Actor006 Murray is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1969-08-06', 'FEMALE', 11, 2, 'Actor007', 'Harrison', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor007', 'Harrison', 'Actor007 Harrison — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor007', 'Harrison', 'Actor007 Harrison is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1978-06-17', 'MALE', 3, 5, 'Actor008', 'Wheeler', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor008', 'Wheeler', 'Actor008 Wheeler — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor008', 'Wheeler', 'Actor008 Wheeler is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1990-06-07', 'MALE', 10, 1, 'Actor009', 'Hawkins', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor009', 'Hawkins', 'Actor009 Hawkins — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor009', 'Hawkins', 'Actor009 Hawkins is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor010', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor010', 'Bowers', 'Actor010 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor010', 'Bowers', 'Actor010 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor011', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor011', 'Henry', 'Actor011 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor011', 'Henry', 'Actor011 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor012', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor012', 'Alvarez', 'Actor012 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor012', 'Alvarez', 'Actor012 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor013', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor013', 'Skinner', 'Actor013 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor013', 'Skinner', 'Actor013 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor014', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor014', 'Sanders', 'Actor014 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor014', 'Sanders', 'Actor014 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor015', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor015', 'Watson', 'Actor015 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor015', 'Watson', 'Actor015 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor016', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor016', 'Bowers', 'Actor016 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor016', 'Bowers', 'Actor016 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor017', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor017', 'Henry', 'Actor017 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor017', 'Henry', 'Actor017 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor018', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor018', 'Alvarez', 'Actor018 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor018', 'Alvarez', 'Actor018 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor019', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor019', 'Skinner', 'Actor019 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor019', 'Skinner', 'Actor019 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor020', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor020', 'Sanders', 'Actor020 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor020', 'Sanders', 'Actor020 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor021', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor021', 'Watson', 'Actor021 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor021', 'Watson', 'Actor021 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor022', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor022', 'Bowers', 'Actor022 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor022', 'Bowers', 'Actor022 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor023', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor023', 'Henry', 'Actor023 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor023', 'Henry', 'Actor023 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor024', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor024', 'Alvarez', 'Actor024 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor024', 'Alvarez', 'Actor024 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor025', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor025', 'Skinner', 'Actor025 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor025', 'Skinner', 'Actor025 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor026', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor026', 'Sanders', 'Actor026 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor026', 'Sanders', 'Actor026 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor027', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor027', 'Watson', 'Actor027 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor027', 'Watson', 'Actor027 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor028', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor028', 'Bowers', 'Actor028 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor028', 'Bowers', 'Actor028 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor029', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor029', 'Henry', 'Actor029 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor029', 'Henry', 'Actor029 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor030', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor030', 'Alvarez', 'Actor030 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor030', 'Alvarez', 'Actor030 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor031', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor031', 'Skinner', 'Actor031 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor031', 'Skinner', 'Actor031 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor032', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor032', 'Sanders', 'Actor032 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor032', 'Sanders', 'Actor032 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor033', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor033', 'Watson', 'Actor033 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor033', 'Watson', 'Actor033 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor034', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor034', 'Bowers', 'Actor034 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor034', 'Bowers', 'Actor034 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor035', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor035', 'Henry', 'Actor035 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor035', 'Henry', 'Actor035 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor036', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor036', 'Alvarez', 'Actor036 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor036', 'Alvarez', 'Actor036 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor037', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor037', 'Skinner', 'Actor037 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor037', 'Skinner', 'Actor037 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor038', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor038', 'Sanders', 'Actor038 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor038', 'Sanders', 'Actor038 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor039', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor039', 'Watson', 'Actor039 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor039', 'Watson', 'Actor039 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor040', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor040', 'Sanders', 'Actor040 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor040', 'Sanders', 'Actor040 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1949-08-30', 'FEMALE', 15, 3, 'Actor041', 'Watson', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor041', 'Watson', 'Actor041 Watson — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor041', 'Watson', 'Actor041 Watson is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-06-18', 'MALE', 7, 2, 'Actor042', 'Bowers', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor042', 'Bowers', 'Actor042 Bowers — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor042', 'Bowers', 'Actor042 Bowers is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1955-02-20', 'FEMALE', 1, 4, 'Actor043', 'Henry', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor043', 'Henry', 'Actor043 Henry — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor043', 'Henry', 'Actor043 Henry is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1946-05-18', 'MALE', 13, 2, 'Actor044', 'Alvarez', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor044', 'Alvarez', 'Actor044 Alvarez — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor044', 'Alvarez', 'Actor044 Alvarez is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1943-11-10', 'MALE', 7, 4, 'Actor045', 'Skinner', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor045', 'Skinner', 'Actor045 Skinner — актёр, известный своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor045', 'Skinner', 'Actor045 Skinner is an actor known for his work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;


-- migrated person (auto-generated)
WITH p AS (
    INSERT INTO content_service.persons (birth_date, gender, country_id, city_id, original_name, original_lastname, photo_url)
        VALUES ('1944-09-23', 'FEMALE', 13, 2, 'Actor046', 'Sanders', NULL)
        RETURNING id
)
INSERT INTO content_service.person_translations (person_id, locale, locale_name, locale_lastname, biography, created_at, updated_at)
SELECT id, 'ru_RU', 'Actor046', 'Sanders', 'Actor046 Sanders — актриса, известная своими работами в кино и на телевидении.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p
UNION ALL
SELECT id, 'en_US', 'Actor046', 'Sanders', 'Actor046 Sanders is an actress known for her work in film and television.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM p;

