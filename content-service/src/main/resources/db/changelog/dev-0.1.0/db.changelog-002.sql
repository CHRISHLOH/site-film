--changeset seed:001 runOnChange:false
--comment: Seed countries
INSERT INTO content_service.countries (iso_code)
VALUES
    ('US'),
    ('GB'),
    ('FR'),
    ('DE'),
    ('IT'),
    ('ES'),
    ('RU'),
    ('JP'),
    ('CN'),
    ('KR'),
    ('IN'),
    ('CA'),
    ('BR'),
    ('AU'),
    ('MX'),
    ('NL'),
    ('SE'),
    ('CH'),
    ('PL'),
    ('UA');

--changeset seed:002 runOnChange:false
--comment: Seed country translations (en_US / ru_RU)
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES
    ((SELECT id FROM content_service.countries WHERE iso_code='US'), 'en_US', 'United States'),
    ((SELECT id FROM content_service.countries WHERE iso_code='US'), 'ru_RU', 'США'),

    ((SELECT id FROM content_service.countries WHERE iso_code='GB'), 'en_US', 'United Kingdom'),
    ((SELECT id FROM content_service.countries WHERE iso_code='GB'), 'ru_RU', 'Великобритания'),

    ((SELECT id FROM content_service.countries WHERE iso_code='FR'), 'en_US', 'France'),
    ((SELECT id FROM content_service.countries WHERE iso_code='FR'), 'ru_RU', 'Франция'),

    ((SELECT id FROM content_service.countries WHERE iso_code='DE'), 'en_US', 'Germany'),
    ((SELECT id FROM content_service.countries WHERE iso_code='DE'), 'ru_RU', 'Германия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='IT'), 'en_US', 'Italy'),
    ((SELECT id FROM content_service.countries WHERE iso_code='IT'), 'ru_RU', 'Италия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='ES'), 'en_US', 'Spain'),
    ((SELECT id FROM content_service.countries WHERE iso_code='ES'), 'ru_RU', 'Испания'),

    ((SELECT id FROM content_service.countries WHERE iso_code='RU'), 'en_US', 'Russia'),
    ((SELECT id FROM content_service.countries WHERE iso_code='RU'), 'ru_RU', 'Россия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='JP'), 'en_US', 'Japan'),
    ((SELECT id FROM content_service.countries WHERE iso_code='JP'), 'ru_RU', 'Япония'),

    ((SELECT id FROM content_service.countries WHERE iso_code='CN'), 'en_US', 'China'),
    ((SELECT id FROM content_service.countries WHERE iso_code='CN'), 'ru_RU', 'Китай'),

    ((SELECT id FROM content_service.countries WHERE iso_code='KR'), 'en_US', 'South Korea'),
    ((SELECT id FROM content_service.countries WHERE iso_code='KR'), 'ru_RU', 'Южная Корея'),

    ((SELECT id FROM content_service.countries WHERE iso_code='IN'), 'en_US', 'India'),
    ((SELECT id FROM content_service.countries WHERE iso_code='IN'), 'ru_RU', 'Индия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='CA'), 'en_US', 'Canada'),
    ((SELECT id FROM content_service.countries WHERE iso_code='CA'), 'ru_RU', 'Канада'),

    ((SELECT id FROM content_service.countries WHERE iso_code='BR'), 'en_US', 'Brazil'),
    ((SELECT id FROM content_service.countries WHERE iso_code='BR'), 'ru_RU', 'Бразилия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='AU'), 'en_US', 'Australia'),
    ((SELECT id FROM content_service.countries WHERE iso_code='AU'), 'ru_RU', 'Австралия'),

    ((SELECT id FROM content_service.countries WHERE iso_code='MX'), 'en_US', 'Mexico'),
    ((SELECT id FROM content_service.countries WHERE iso_code='MX'), 'ru_RU', 'Мексика'),

    ((SELECT id FROM content_service.countries WHERE iso_code='NL'), 'en_US', 'Netherlands'),
    ((SELECT id FROM content_service.countries WHERE iso_code='NL'), 'ru_RU', 'Нидерланды'),

    ((SELECT id FROM content_service.countries WHERE iso_code='SE'), 'en_US', 'Sweden'),
    ((SELECT id FROM content_service.countries WHERE iso_code='SE'), 'ru_RU', 'Швеция'),

    ((SELECT id FROM content_service.countries WHERE iso_code='CH'), 'en_US', 'Switzerland'),
    ((SELECT id FROM content_service.countries WHERE iso_code='CH'), 'ru_RU', 'Швейцария'),

    ((SELECT id FROM content_service.countries WHERE iso_code='PL'), 'en_US', 'Poland'),
    ((SELECT id FROM content_service.countries WHERE iso_code='PL'), 'ru_RU', 'Польша'),

    ((SELECT id FROM content_service.countries WHERE iso_code='UA'), 'en_US', 'Ukraine'),
    ((SELECT id FROM content_service.countries WHERE iso_code='UA'), 'ru_RU', 'Украина');

--changeset seed:003 runOnChange:false
--comment: Seed cities
INSERT INTO content_service.cities (code, country_id)
VALUES
    ('NYC', (SELECT id FROM content_service.countries WHERE iso_code='US')),
    ('LON', (SELECT id FROM content_service.countries WHERE iso_code='GB')),
    ('PAR', (SELECT id FROM content_service.countries WHERE iso_code='FR')),
    ('BER', (SELECT id FROM content_service.countries WHERE iso_code='DE')),
    ('ROM', (SELECT id FROM content_service.countries WHERE iso_code='IT')),
    ('MAD', (SELECT id FROM content_service.countries WHERE iso_code='ES')),
    ('MOS', (SELECT id FROM content_service.countries WHERE iso_code='RU')),
    ('TOK', (SELECT id FROM content_service.countries WHERE iso_code='JP')),
    ('BEI', (SELECT id FROM content_service.countries WHERE iso_code='CN')),
    ('SEO', (SELECT id FROM content_service.countries WHERE iso_code='KR')),
    ('DEL', (SELECT id FROM content_service.countries WHERE iso_code='IN')),
    ('TOR', (SELECT id FROM content_service.countries WHERE iso_code='CA')),
    ('RIO', (SELECT id FROM content_service.countries WHERE iso_code='BR')),
    ('SYD', (SELECT id FROM content_service.countries WHERE iso_code='AU')),
    ('MEX', (SELECT id FROM content_service.countries WHERE iso_code='MX')),
    ('AMS', (SELECT id FROM content_service.countries WHERE iso_code='NL')),
    ('STO', (SELECT id FROM content_service.countries WHERE iso_code='SE')),
    ('ZUR', (SELECT id FROM content_service.countries WHERE iso_code='CH')),
    ('WAR', (SELECT id FROM content_service.countries WHERE iso_code='PL')),
    ('KIE', (SELECT id FROM content_service.countries WHERE iso_code='UA'));

--changeset seed:004 runOnChange:false
--comment: Seed city translations (en_US / ru_RU)
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES
    ((SELECT id FROM content_service.cities WHERE code='NYC'), 'en_US', 'New York'),
    ((SELECT id FROM content_service.cities WHERE code='NYC'), 'ru_RU', 'Нью-Йорк'),

    ((SELECT id FROM content_service.cities WHERE code='LON'), 'en_US', 'London'),
    ((SELECT id FROM content_service.cities WHERE code='LON'), 'ru_RU', 'Лондон'),

    ((SELECT id FROM content_service.cities WHERE code='PAR'), 'en_US', 'Paris'),
    ((SELECT id FROM content_service.cities WHERE code='PAR'), 'ru_RU', 'Париж'),

    ((SELECT id FROM content_service.cities WHERE code='BER'), 'en_US', 'Berlin'),
    ((SELECT id FROM content_service.cities WHERE code='BER'), 'ru_RU', 'Берлин'),

    ((SELECT id FROM content_service.cities WHERE code='ROM'), 'en_US', 'Rome'),
    ((SELECT id FROM content_service.cities WHERE code='ROM'), 'ru_RU', 'Рим'),

    ((SELECT id FROM content_service.cities WHERE code='MAD'), 'en_US', 'Madrid'),
    ((SELECT id FROM content_service.cities WHERE code='MAD'), 'ru_RU', 'Мадрид'),

    ((SELECT id FROM content_service.cities WHERE code='MOS'), 'en_US', 'Moscow'),
    ((SELECT id FROM content_service.cities WHERE code='MOS'), 'ru_RU', 'Москва'),

    ((SELECT id FROM content_service.cities WHERE code='TOK'), 'en_US', 'Tokyo'),
    ((SELECT id FROM content_service.cities WHERE code='TOK'), 'ru_RU', 'Токио'),

    ((SELECT id FROM content_service.cities WHERE code='BEI'), 'en_US', 'Beijing'),
    ((SELECT id FROM content_service.cities WHERE code='BEI'), 'ru_RU', 'Пекин'),

    ((SELECT id FROM content_service.cities WHERE code='SEO'), 'en_US', 'Seoul'),
    ((SELECT id FROM content_service.cities WHERE code='SEO'), 'ru_RU', 'Сеул'),

    ((SELECT id FROM content_service.cities WHERE code='DEL'), 'en_US', 'Delhi'),
    ((SELECT id FROM content_service.cities WHERE code='DEL'), 'ru_RU', 'Дели'),

    ((SELECT id FROM content_service.cities WHERE code='TOR'), 'en_US', 'Toronto'),
    ((SELECT id FROM content_service.cities WHERE code='TOR'), 'ru_RU', 'Торонто'),

    ((SELECT id FROM content_service.cities WHERE code='RIO'), 'en_US', 'Rio de Janeiro'),
    ((SELECT id FROM content_service.cities WHERE code='RIO'), 'ru_RU', 'Рио-де-Жанейро'),

    ((SELECT id FROM content_service.cities WHERE code='SYD'), 'en_US', 'Sydney'),
    ((SELECT id FROM content_service.cities WHERE code='SYD'), 'ru_RU', 'Сидней'),

    ((SELECT id FROM content_service.cities WHERE code='MEX'), 'en_US', 'Mexico City'),
    ((SELECT id FROM content_service.cities WHERE code='MEX'), 'ru_RU', 'Мехико'),

    ((SELECT id FROM content_service.cities WHERE code='AMS'), 'en_US', 'Amsterdam'),
    ((SELECT id FROM content_service.cities WHERE code='AMS'), 'ru_RU', 'Амстердам'),

    ((SELECT id FROM content_service.cities WHERE code='STO'), 'en_US', 'Stockholm'),
    ((SELECT id FROM content_service.cities WHERE code='STO'), 'ru_RU', 'Стокгольм'),

    ((SELECT id FROM content_service.cities WHERE code='ZUR'), 'en_US', 'Zurich'),
    ((SELECT id FROM content_service.cities WHERE code='ZUR'), 'ru_RU', 'Цюрих'),

    ((SELECT id FROM content_service.cities WHERE code='WAR'), 'en_US', 'Warsaw'),
    ((SELECT id FROM content_service.cities WHERE code='WAR'), 'ru_RU', 'Варшава'),

    ((SELECT id FROM content_service.cities WHERE code='KIE'), 'en_US', 'Kyiv'),
    ((SELECT id FROM content_service.cities WHERE code='KIE'), 'ru_RU', 'Киев');

--changeset seed:005 runOnChange:false
--comment: Seed genres
INSERT INTO content_service.genres (genre)
VALUES
    ('action'),
    ('adventure'),
    ('animation'),
    ('biography'),
    ('comedy'),
    ('crime'),
    ('documentary'),
    ('drama'),
    ('family'),
    ('fantasy'),
    ('history'),
    ('horror'),
    ('music'),
    ('mystery'),
    ('romance'),
    ('sci_fi'),
    ('sport'),
    ('thriller'),
    ('war'),
    ('western');

--changeset seed:006 runOnChange:false
--comment: Seed genre translations (en_US / ru_RU)
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES
    ((SELECT id FROM content_service.genres WHERE genre='action'), 'en_US', 'Action'),
    ((SELECT id FROM content_service.genres WHERE genre='action'), 'ru_RU', 'Боевик'),

    ((SELECT id FROM content_service.genres WHERE genre='adventure'), 'en_US', 'Adventure'),
    ((SELECT id FROM content_service.genres WHERE genre='adventure'), 'ru_RU', 'Приключения'),

    ((SELECT id FROM content_service.genres WHERE genre='animation'), 'en_US', 'Animation'),
    ((SELECT id FROM content_service.genres WHERE genre='animation'), 'ru_RU', 'Анимация'),

    ((SELECT id FROM content_service.genres WHERE genre='biography'), 'en_US', 'Biography'),
    ((SELECT id FROM content_service.genres WHERE genre='biography'), 'ru_RU', 'Биография'),

    ((SELECT id FROM content_service.genres WHERE genre='comedy'), 'en_US', 'Comedy'),
    ((SELECT id FROM content_service.genres WHERE genre='comedy'), 'ru_RU', 'Комедия'),

    ((SELECT id FROM content_service.genres WHERE genre='crime'), 'en_US', 'Crime'),
    ((SELECT id FROM content_service.genres WHERE genre='crime'), 'ru_RU', 'Криминал'),

    ((SELECT id FROM content_service.genres WHERE genre='documentary'), 'en_US', 'Documentary'),
    ((SELECT id FROM content_service.genres WHERE genre='documentary'), 'ru_RU', 'Документальный'),

    ((SELECT id FROM content_service.genres WHERE genre='drama'), 'en_US', 'Drama'),
    ((SELECT id FROM content_service.genres WHERE genre='drama'), 'ru_RU', 'Драма'),

    ((SELECT id FROM content_service.genres WHERE genre='family'), 'en_US', 'Family'),
    ((SELECT id FROM content_service.genres WHERE genre='family'), 'ru_RU', 'Семейный'),

    ((SELECT id FROM content_service.genres WHERE genre='fantasy'), 'en_US', 'Fantasy'),
    ((SELECT id FROM content_service.genres WHERE genre='fantasy'), 'ru_RU', 'Фэнтези'),

    ((SELECT id FROM content_service.genres WHERE genre='history'), 'en_US', 'History'),
    ((SELECT id FROM content_service.genres WHERE genre='history'), 'ru_RU', 'История'),

    ((SELECT id FROM content_service.genres WHERE genre='horror'), 'en_US', 'Horror'),
    ((SELECT id FROM content_service.genres WHERE genre='horror'), 'ru_RU', 'Ужасы'),

    ((SELECT id FROM content_service.genres WHERE genre='music'), 'en_US', 'Music'),
    ((SELECT id FROM content_service.genres WHERE genre='music'), 'ru_RU', 'Музыка'),

    ((SELECT id FROM content_service.genres WHERE genre='mystery'), 'en_US', 'Mystery'),
    ((SELECT id FROM content_service.genres WHERE genre='mystery'), 'ru_RU', 'Мистика'),

    ((SELECT id FROM content_service.genres WHERE genre='romance'), 'en_US', 'Romance'),
    ((SELECT id FROM content_service.genres WHERE genre='romance'), 'ru_RU', 'Мелодрама'),

    ((SELECT id FROM content_service.genres WHERE genre='sci_fi'), 'en_US', 'Science Fiction'),
    ((SELECT id FROM content_service.genres WHERE genre='sci_fi'), 'ru_RU', 'Научная фантастика'),

    ((SELECT id FROM content_service.genres WHERE genre='sport'), 'en_US', 'Sport'),
    ((SELECT id FROM content_service.genres WHERE genre='sport'), 'ru_RU', 'Спорт'),

    ((SELECT id FROM content_service.genres WHERE genre='thriller'), 'en_US', 'Thriller'),
    ((SELECT id FROM content_service.genres WHERE genre='thriller'), 'ru_RU', 'Триллер'),

    ((SELECT id FROM content_service.genres WHERE genre='war'), 'en_US', 'War'),
    ((SELECT id FROM content_service.genres WHERE genre='war'), 'ru_RU', 'Военный'),

    ((SELECT id FROM content_service.genres WHERE genre='western'), 'en_US', 'Western'),
    ((SELECT id FROM content_service.genres WHERE genre='western'), 'ru_RU', 'Вестерн');


--changeset seed:007 runOnChange:false
--comment: Seed careers
INSERT INTO content_service.careers (career, display_order)
VALUES
    ('actor', 1),
    ('actress', 2),
    ('director', 3),
    ('producer', 4),
    ('writer', 5),
    ('composer', 6),
    ('cinematographer', 7),
    ('editor', 8),
    ('designer', 9),
    ('voice_actor', 10);

--changeset seed:008 runOnChange:false
--comment: Seed career translations (en_US / ru_RU)
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES
    ((SELECT id FROM content_service.careers WHERE career='actor'), 'en_US', 'Actor'),
    ((SELECT id FROM content_service.careers WHERE career='actor'), 'ru_RU', 'Актёр'),

    ((SELECT id FROM content_service.careers WHERE career='actress'), 'en_US', 'Actress'),
    ((SELECT id FROM content_service.careers WHERE career='actress'), 'ru_RU', 'Актриса'),

    ((SELECT id FROM content_service.careers WHERE career='director'), 'en_US', 'Director'),
    ((SELECT id FROM content_service.careers WHERE career='director'), 'ru_RU', 'Режиссёр'),

    ((SELECT id FROM content_service.careers WHERE career='producer'), 'en_US', 'Producer'),
    ((SELECT id FROM content_service.careers WHERE career='producer'), 'ru_RU', 'Продюсер'),

    ((SELECT id FROM content_service.careers WHERE career='writer'), 'en_US', 'Writer'),
    ((SELECT id FROM content_service.careers WHERE career='writer'), 'ru_RU', 'Сценарист'),

    ((SELECT id FROM content_service.careers WHERE career='composer'), 'en_US', 'Composer'),
    ((SELECT id FROM content_service.careers WHERE career='composer'), 'ru_RU', 'Композитор'),

    ((SELECT id FROM content_service.careers WHERE career='cinematographer'), 'en_US', 'Cinematographer'),
    ((SELECT id FROM content_service.careers WHERE career='cinematographer'), 'ru_RU', 'Оператор'),

    ((SELECT id FROM content_service.careers WHERE career='editor'), 'en_US', 'Editor'),
    ((SELECT id FROM content_service.careers WHERE career='editor'), 'ru_RU', 'Монтажёр'),

    ((SELECT id FROM content_service.careers WHERE career='designer'), 'en_US', 'Designer'),
    ((SELECT id FROM content_service.careers WHERE career='designer'), 'ru_RU', 'Художник-постановщик'),

    ((SELECT id FROM content_service.careers WHERE career='voice_actor'), 'en_US', 'Voice Actor'),
    ((SELECT id FROM content_service.careers WHERE career='voice_actor'), 'ru_RU', 'Актёр озвучки');


--changeset seed:009 runOnChange:false
--comment: Seed languages (spoken / interface)
INSERT INTO content_service.languages (iso_code, native_name)
VALUES
    ('en', 'English'),
    ('ru', 'Русский'),
    ('es', 'Español'),
    ('fr', 'Français'),
    ('de', 'Deutsch'),
    ('ja', '日本語'),
    ('zh', '中文'),
    ('ko', '한국어'),
    ('pt', 'Português'),
    ('it', 'Italiano'),
    ('hi', 'हिन्दी'),
    ('ar', 'العربية'),
    ('tr', 'Türkçe');

--changeset seed:010 runOnChange:false
--comment: Seed language translations (en_US / ru_RU)
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES
    ((SELECT id FROM content_service.languages WHERE iso_code='en'), 'en_US', 'English'),
    ((SELECT id FROM content_service.languages WHERE iso_code='en'), 'ru_RU', 'Английский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='ru'), 'en_US', 'Russian'),
    ((SELECT id FROM content_service.languages WHERE iso_code='ru'), 'ru_RU', 'Русский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='es'), 'en_US', 'Spanish'),
    ((SELECT id FROM content_service.languages WHERE iso_code='es'), 'ru_RU', 'Испанский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='fr'), 'en_US', 'French'),
    ((SELECT id FROM content_service.languages WHERE iso_code='fr'), 'ru_RU', 'Французский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='de'), 'en_US', 'German'),
    ((SELECT id FROM content_service.languages WHERE iso_code='de'), 'ru_RU', 'Немецкий'),

    ((SELECT id FROM content_service.languages WHERE iso_code='ja'), 'en_US', 'Japanese'),
    ((SELECT id FROM content_service.languages WHERE iso_code='ja'), 'ru_RU', 'Японский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='zh'), 'en_US', 'Chinese'),
    ((SELECT id FROM content_service.languages WHERE iso_code='zh'), 'ru_RU', 'Китайский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='ko'), 'en_US', 'Korean'),
    ((SELECT id FROM content_service.languages WHERE iso_code='ko'), 'ru_RU', 'Корейский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='pt'), 'en_US', 'Portuguese'),
    ((SELECT id FROM content_service.languages WHERE iso_code='pt'), 'ru_RU', 'Португальский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='it'), 'en_US', 'Italian'),
    ((SELECT id FROM content_service.languages WHERE iso_code='it'), 'ru_RU', 'Итальянский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='hi'), 'en_US', 'Hindi'),
    ((SELECT id FROM content_service.languages WHERE iso_code='hi'), 'ru_RU', 'Хинди'),

    ((SELECT id FROM content_service.languages WHERE iso_code='ar'), 'en_US', 'Arabic'),
    ((SELECT id FROM content_service.languages WHERE iso_code='ar'), 'ru_RU', 'Арабский'),

    ((SELECT id FROM content_service.languages WHERE iso_code='tr'), 'en_US', 'Turkish'),
    ((SELECT id FROM content_service.languages WHERE iso_code='tr'), 'ru_RU', 'Турецкий');


--changeset seed:011 runOnChange:false
--comment: Seed video_qualities (распространённые форматы видео)
INSERT INTO content_service.video_qualities (code, name, width, height, display_order)
VALUES
    ('8K',     '8K Ultra HD',      7680, 4320, 1),
    ('4K',     '4K Ultra HD',      3840, 2160, 2),
    ('2K',     '2K Quad HD',       2560, 1440, 3),
    ('1080p',  'Full HD 1080p',    1920, 1080, 4),
    ('720p',   'HD 720p',          1280, 720,  5),
    ('480p',   'SD 480p',          854,  480,  6),
    ('360p',   'Low 360p',         640,  360,  7),
    ('240p',   'Very Low 240p',    426,  240,  8);

--changeset seed:012 runOnChange:false
--comment: Ensure unique video_qualities code index
CREATE UNIQUE INDEX IF NOT EXISTS uq_video_qualities_code ON content_service.video_qualities(code);


--changeset seed:23 runOnChange:false
--comment: Seed movie_audio_tracks (языки озвучки и студии)

-- Английский (оригинал)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'en'),
           'Original',
           'original',
           1
       );

-- Русский (дубляж)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'ru'),
           'Кинопоиск',
           'dubbing',
           2
       );

-- Русский (многоголосый)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'ru'),
           'LostFilm',
           'multi_voice',
           3
       );

-- Японский (оригинал)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'ja'),
           'Original JP',
           'original',
           4
       );

-- Испанский (дубляж Netflix)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'es'),
           'Netflix',
           'dubbing',
           5
       );

-- Немецкий (одноголосый)
INSERT INTO content_service.audio_tracks(language_id, studio_name, track_type, display_order )
VALUES (
           (SELECT id FROM content_service.languages WHERE iso_code = 'de'),
           'German Studio',
           'single_voice',
           6
       );
