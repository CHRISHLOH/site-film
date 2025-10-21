--changeset seed:01 runOnChange:false
--comment: Seed countries (iso_code)
INSERT INTO content_service.countries (iso_code) VALUES ('US');
INSERT INTO content_service.countries (iso_code) VALUES ('GB');
INSERT INTO content_service.countries (iso_code) VALUES ('FR');
INSERT INTO content_service.countries (iso_code) VALUES ('DE');
INSERT INTO content_service.countries (iso_code) VALUES ('IT');
INSERT INTO content_service.countries (iso_code) VALUES ('ES');
INSERT INTO content_service.countries (iso_code) VALUES ('RU');
INSERT INTO content_service.countries (iso_code) VALUES ('CN');
INSERT INTO content_service.countries (iso_code) VALUES ('JP');
INSERT INTO content_service.countries (iso_code) VALUES ('KR');
INSERT INTO content_service.countries (iso_code) VALUES ('IN');
INSERT INTO content_service.countries (iso_code) VALUES ('BR');
INSERT INTO content_service.countries (iso_code) VALUES ('MX');
INSERT INTO content_service.countries (iso_code) VALUES ('CA');
INSERT INTO content_service.countries (iso_code) VALUES ('AU');
INSERT INTO content_service.countries (iso_code) VALUES ('NL');
INSERT INTO content_service.countries (iso_code) VALUES ('SE');
INSERT INTO content_service.countries (iso_code) VALUES ('NO');
INSERT INTO content_service.countries (iso_code) VALUES ('TR');
INSERT INTO content_service.countries (iso_code) VALUES ('AR');

--changeset seed:02 runOnChange:false
--comment: Seed country_translations (en_EN, ru_RU)
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='US'), 'en_EN', 'United States');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='US'), 'ru_RU', 'США');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='GB'), 'en_EN', 'United Kingdom');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='GB'), 'ru_RU', 'Великобритания');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='FR'), 'en_EN', 'France');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='FR'), 'ru_RU', 'Франция');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='DE'), 'en_EN', 'Germany');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='DE'), 'ru_RU', 'Германия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='IT'), 'en_EN', 'Italy');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='IT'), 'ru_RU', 'Италия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='ES'), 'en_EN', 'Spain');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='ES'), 'ru_RU', 'Испания');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='RU'), 'en_EN', 'Russia');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='RU'), 'ru_RU', 'Россия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='CN'), 'en_EN', 'China');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='CN'), 'ru_RU', 'Китай');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='JP'), 'en_EN', 'Japan');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='JP'), 'ru_RU', 'Япония');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='KR'), 'en_EN', 'South Korea');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='KR'), 'ru_RU', 'Южная Корея');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='IN'), 'en_EN', 'India');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='IN'), 'ru_RU', 'Индия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='BR'), 'en_EN', 'Brazil');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='BR'), 'ru_RU', 'Бразилия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='MX'), 'en_EN', 'Mexico');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='MX'), 'ru_RU', 'Мексика');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='CA'), 'en_EN', 'Canada');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='CA'), 'ru_RU', 'Канада');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='AU'), 'en_EN', 'Australia');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='AU'), 'ru_RU', 'Австралия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='NL'), 'en_EN', 'Netherlands');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='NL'), 'ru_RU', 'Нидерланды');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='SE'), 'en_EN', 'Sweden');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='SE'), 'ru_RU', 'Швеция');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='NO'), 'en_EN', 'Norway');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='NO'), 'ru_RU', 'Норвегия');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='TR'), 'en_EN', 'Turkey');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='TR'), 'ru_RU', 'Турция');

INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='AR'), 'en_EN', 'Argentina');
INSERT INTO content_service.country_translations (country_id, language_code, name)
VALUES ((SELECT id FROM content_service.countries WHERE iso_code='AR'), 'ru_RU', 'Аргентина');

--changeset seed:03 runOnChange:false
--comment: Seed cities (major cities for selected countries)
INSERT INTO content_service.cities (code, country_id) VALUES ('NYC', (SELECT id FROM content_service.countries WHERE iso_code='US'));
INSERT INTO content_service.cities (code, country_id) VALUES ('LA', (SELECT id FROM content_service.countries WHERE iso_code='US'));
INSERT INTO content_service.cities (code, country_id) VALUES ('LDN', (SELECT id FROM content_service.countries WHERE iso_code='GB'));
INSERT INTO content_service.cities (code, country_id) VALUES ('PAR', (SELECT id FROM content_service.countries WHERE iso_code='FR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('BER', (SELECT id FROM content_service.countries WHERE iso_code='DE'));
INSERT INTO content_service.cities (code, country_id) VALUES ('ROM', (SELECT id FROM content_service.countries WHERE iso_code='IT'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MAD', (SELECT id FROM content_service.countries WHERE iso_code='ES'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MOW', (SELECT id FROM content_service.countries WHERE iso_code='RU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SPB', (SELECT id FROM content_service.countries WHERE iso_code='RU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('TKY', (SELECT id FROM content_service.countries WHERE iso_code='JP'));
INSERT INTO content_service.cities (code, country_id) VALUES ('BJS', (SELECT id FROM content_service.countries WHERE iso_code='CN'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SEO', (SELECT id FROM content_service.countries WHERE iso_code='KR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MUM', (SELECT id FROM content_service.countries WHERE iso_code='IN'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SP', (SELECT id FROM content_service.countries WHERE iso_code='BR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MEX', (SELECT id FROM content_service.countries WHERE iso_code='MX'));
INSERT INTO content_service.cities (code, country_id) VALUES ('TOR', (SELECT id FROM content_service.countries WHERE iso_code='CA'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SYD', (SELECT id FROM content_service.countries WHERE iso_code='AU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('AMS', (SELECT id FROM content_service.countries WHERE iso_code='NL'));
INSERT INTO content_service.cities (code, country_id) VALUES ('STO', (SELECT id FROM content_service.countries WHERE iso_code='SE'));
INSERT INTO content_service.cities (code, country_id) VALUES ('ANK', (SELECT id FROM content_service.countries WHERE iso_code='TR'));

--changeset seed:04 runOnChange:false
--comment: Seed city_translations (en_EN, ru_RU)
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='NYC'), 'en_EN', 'New York');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='NYC'), 'ru_RU', 'Нью-Йорк');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LA'), 'en_EN', 'Los Angeles');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LA'), 'ru_RU', 'Лос-Анджелес');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LDN'), 'en_EN', 'London');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LDN'), 'ru_RU', 'Лондон');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='PAR'), 'en_EN', 'Paris');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='PAR'), 'ru_RU', 'Париж');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BER'), 'en_EN', 'Berlin');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BER'), 'ru_RU', 'Берлин');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ROM'), 'en_EN', 'Rome');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ROM'), 'ru_RU', 'Рим');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MAD'), 'en_EN', 'Madrid');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MAD'), 'ru_RU', 'Мадрид');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MOW'), 'en_EN', 'Moscow');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MOW'), 'ru_RU', 'Москва');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SPB'), 'en_EN', 'Saint Petersburg');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SPB'), 'ru_RU', 'Санкт-Петербург');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TKY'), 'en_EN', 'Tokyo');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TKY'), 'ru_RU', 'Токио');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BJS'), 'en_EN', 'Beijing');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BJS'), 'ru_RU', 'Пекин');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SEO'), 'en_EN', 'Seoul');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SEO'), 'ru_RU', 'Сеул');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MUM'), 'en_EN', 'Mumbai');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MUM'), 'ru_RU', 'Мумбаи');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SP'), 'en_EN', 'São Paulo');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SP'), 'ru_RU', 'Сан-Паулу');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MEX'), 'en_EN', 'Mexico City');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MEX'), 'ru_RU', 'Мехико');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TOR'), 'en_EN', 'Toronto');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TOR'), 'ru_RU', 'Торонто');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SYD'), 'en_EN', 'Sydney');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SYD'), 'ru_RU', 'Сидней');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='AMS'), 'en_EN', 'Amsterdam');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='AMS'), 'ru_RU', 'Амстердам');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='STO'), 'en_EN', 'Stockholm');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='STO'), 'ru_RU', 'Стокгольм');

INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ANK'), 'en_EN', 'Ankara');
INSERT INTO content_service.city_translations (city_id, language_code, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ANK'), 'ru_RU', 'Анкара');

--changeset seed:05 runOnChange:false
--comment: Seed genres (code)
INSERT INTO content_service.genres (code) VALUES ('ACTION');
INSERT INTO content_service.genres (code) VALUES ('COMEDY');
INSERT INTO content_service.genres (code) VALUES ('DRAMA');
INSERT INTO content_service.genres (code) VALUES ('THRILLER');
INSERT INTO content_service.genres (code) VALUES ('HORROR');
INSERT INTO content_service.genres (code) VALUES ('ROMANCE');
INSERT INTO content_service.genres (code) VALUES ('SCI_FI');
INSERT INTO content_service.genres (code) VALUES ('FANTASY');
INSERT INTO content_service.genres (code) VALUES ('DOCUMENTARY');
INSERT INTO content_service.genres (code) VALUES ('ANIMATION');
INSERT INTO content_service.genres (code) VALUES ('CRIME');
INSERT INTO content_service.genres (code) VALUES ('ADVENTURE');
INSERT INTO content_service.genres (code) VALUES ('MYSTERY');
INSERT INTO content_service.genres (code) VALUES ('FAMILY');
INSERT INTO content_service.genres (code) VALUES ('BIOGRAPHY');
INSERT INTO content_service.genres (code) VALUES ('MUSICAL');
INSERT INTO content_service.genres (code) VALUES ('HISTORY');
INSERT INTO content_service.genres (code) VALUES ('SPORT');
INSERT INTO content_service.genres (code) VALUES ('WAR');
INSERT INTO content_service.genres (code) VALUES ('WESTERN');

--changeset seed:06 runOnChange:false
--comment: Seed genre_translations (en_EN, ru_RU)
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ACTION'), 'en_EN', 'Action');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ACTION'), 'ru_RU', 'Боевик');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='COMEDY'), 'en_EN', 'Comedy');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='COMEDY'), 'ru_RU', 'Комедия');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='DRAMA'), 'en_EN', 'Drama');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='DRAMA'), 'ru_RU', 'Драма');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='THRILLER'), 'en_EN', 'Thriller');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='THRILLER'), 'ru_RU', 'Триллер');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='HORROR'), 'en_EN', 'Horror');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='HORROR'), 'ru_RU', 'Ужасы');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ROMANCE'), 'en_EN', 'Romance');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ROMANCE'), 'ru_RU', 'Романтика');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='SCI_FI'), 'en_EN', 'Science Fiction');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='SCI_FI'), 'ru_RU', 'Научная фантастика');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='FANTASY'), 'en_EN', 'Fantasy');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='FANTASY'), 'ru_RU', 'Фэнтези');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='DOCUMENTARY'), 'en_EN', 'Documentary');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='DOCUMENTARY'), 'ru_RU', 'Документальный');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ANIMATION'), 'en_EN', 'Animation');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ANIMATION'), 'ru_RU', 'Анимация');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='CRIME'), 'en_EN', 'Crime');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='CRIME'), 'ru_RU', 'Криминал');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ADVENTURE'), 'en_EN', 'Adventure');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='ADVENTURE'), 'ru_RU', 'Приключения');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='MYSTERY'), 'en_EN', 'Mystery');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='MYSTERY'), 'ru_RU', 'Мистика');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='FAMILY'), 'en_EN', 'Family');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='FAMILY'), 'ru_RU', 'Семейный');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='BIOGRAPHY'), 'en_EN', 'Biography');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='BIOGRAPHY'), 'ru_RU', 'Биография');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='MUSICAL'), 'en_EN', 'Musical');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='MUSICAL'), 'ru_RU', 'Мюзикл');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='HISTORY'), 'en_EN', 'History');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='HISTORY'), 'ru_RU', 'Исторический');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='SPORT'), 'en_EN', 'Sport');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='SPORT'), 'ru_RU', 'Спортивный');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='WAR'), 'en_EN', 'War');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='WAR'), 'ru_RU', 'Военный');

INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='WESTERN'), 'en_EN', 'Western');
INSERT INTO content_service.genre_translations (genre_id, language_code, name)
VALUES ((SELECT id FROM content_service.genres WHERE code='WESTERN'), 'ru_RU', 'Вестерн');

--changeset seed:07 runOnChange:false
--comment: Seed careers (code)
INSERT INTO content_service.careers (code) VALUES ('ACTOR');
INSERT INTO content_service.careers (code) VALUES ('DIRECTOR');
INSERT INTO content_service.careers (code) VALUES ('WRITER');
INSERT INTO content_service.careers (code) VALUES ('PRODUCER');
INSERT INTO content_service.careers (code) VALUES ('CINEMATOGRAPHER');
INSERT INTO content_service.careers (code) VALUES ('EDITOR');
INSERT INTO content_service.careers (code) VALUES ('COMPOSER');
INSERT INTO content_service.careers (code) VALUES ('PRODUCTION_DESIGNER');
INSERT INTO content_service.careers (code) VALUES ('SOUND_DESIGNER');
INSERT INTO content_service.careers (code) VALUES ('COSTUME_DESIGNER');
INSERT INTO content_service.careers (code) VALUES ('VFX_SUPERVISOR');

--changeset seed:08 runOnChange:false
--comment: Seed career_translations (en_EN, ru_RU)
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='ACTOR'), 'en_EN', 'Actor');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='ACTOR'), 'ru_RU', 'Актёр');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='DIRECTOR'), 'en_EN', 'Director');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='DIRECTOR'), 'ru_RU', 'Режиссёр');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='WRITER'), 'en_EN', 'Writer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='WRITER'), 'ru_RU', 'Сценарист');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='PRODUCER'), 'en_EN', 'Producer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='PRODUCER'), 'ru_RU', 'Продюсер');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='CINEMATOGRAPHER'), 'en_EN', 'Cinematographer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='CINEMATOGRAPHER'), 'ru_RU', 'Оператор');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='EDITOR'), 'en_EN', 'Editor');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='EDITOR'), 'ru_RU', 'Монтажёр');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='COMPOSER'), 'en_EN', 'Composer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='COMPOSER'), 'ru_RU', 'Композитор');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='PRODUCTION_DESIGNER'), 'en_EN', 'Production Designer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='PRODUCTION_DESIGNER'), 'ru_RU', 'Художник-постановщик');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='SOUND_DESIGNER'), 'en_EN', 'Sound Designer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='SOUND_DESIGNER'), 'ru_RU', 'Звуковой дизайнер');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='COSTUME_DESIGNER'), 'en_EN', 'Costume Designer');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='COSTUME_DESIGNER'), 'ru_RU', 'Костюмер');

INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='VFX_SUPERVISOR'), 'en_EN', 'VFX Supervisor');
INSERT INTO content_service.career_translations (career_id, language_code, name)
VALUES ((SELECT id FROM content_service.careers WHERE code='VFX_SUPERVISOR'), 'ru_RU', 'Супервайзер визуальных эффектов');

--changeset seed:09 runOnChange:false
--comment: Seed audio_language (iso_code)
INSERT INTO content_service.audio_language (iso_code) VALUES ('en_EN');
INSERT INTO content_service.audio_language (iso_code) VALUES ('ru_RU');
INSERT INTO content_service.audio_language (iso_code) VALUES ('fr_FR');
INSERT INTO content_service.audio_language (iso_code) VALUES ('es_ES');
INSERT INTO content_service.audio_language (iso_code) VALUES ('de_DE');
INSERT INTO content_service.audio_language (iso_code) VALUES ('ja_JA');
INSERT INTO content_service.audio_language (iso_code) VALUES ('zh_ZH');
INSERT INTO content_service.audio_language (iso_code) VALUES ('ko_KO');
INSERT INTO content_service.audio_language (iso_code) VALUES ('pt_PT');
INSERT INTO content_service.audio_language (iso_code) VALUES ('it_IT');
INSERT INTO content_service.audio_language (iso_code) VALUES ('hi_HI');
INSERT INTO content_service.audio_language (iso_code) VALUES ('ar_AR');

--changeset seed:10 runOnChange:false
--comment: Seed language_translations (for audio_language) - en_EN and ru_RU names
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='en_EN'), 'en_EN', 'English');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='en_EN'), 'ru_RU', 'Английский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ru_RU'), 'en_EN', 'Russian');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ru_RU'), 'ru_RU', 'Русский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='fr_FR'), 'en_EN', 'French');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='fr_FR'), 'ru_RU', 'Французский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='es_ES'), 'en_EN', 'Spanish');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='es_ES'), 'ru_RU', 'Испанский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='de_DE'), 'en_EN', 'German');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='de_DE'), 'ru_RU', 'Немецкий');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ja_JA'), 'en_EN', 'Japanese');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ja_JA'), 'ru_RU', 'Японский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='zh_ZH'), 'en_EN', 'Chinese');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='zh_ZH'), 'ru_RU', 'Китайский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ko_KO'), 'en_EN', 'Korean');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ko_KO'), 'ru_RU', 'Корейский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='pt_PT'), 'en_EN', 'Portuguese');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='pt_PT'), 'ru_RU', 'Португальский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='it_IT'), 'en_EN', 'Italian');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='it_IT'), 'ru_RU', 'Итальянский');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='hi_HI'), 'en_EN', 'Hindi');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='hi_HI'), 'ru_RU', 'Хинди');

INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ar_AR'), 'en_EN', 'Arabic');
INSERT INTO content_service.language_translations (language_id, language_code, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE iso_code='ar_AR'), 'ru_RU', 'Арабский');

--changeset seed:11 runOnChange:false
--comment: Small convenience: ensure common indexes exist for faster lookup (country_id, language_code etc.)
CREATE INDEX IF NOT EXISTS idx_country_translations_country_lang ON content_service.country_translations(country_id, language_code);
CREATE INDEX IF NOT EXISTS idx_city_translations_city_lang ON content_service.city_translations(city_id, language_code);
CREATE INDEX IF NOT EXISTS idx_genre_translations_genre_lang ON content_service.genre_translations(genre_id, language_code);
CREATE INDEX IF NOT EXISTS idx_career_translations_career_lang ON content_service.career_translations(career_id, language_code);
CREATE INDEX IF NOT EXISTS idx_language_translations_lang ON content_service.language_translations(language_id, language_code);
