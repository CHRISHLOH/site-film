-- changeset galion:db_changelog_006 runOnChange:false
-- cleaned by script: normalized locales, fixed dollar-quote/parenthesis issues
--changeset seed:01 runOnChange:false
--comment: Seed countries (code)
INSERT INTO content_service.countries (code) VALUES ('US');
INSERT INTO content_service.countries (code) VALUES ('GB');
INSERT INTO content_service.countries (code) VALUES ('FR');
INSERT INTO content_service.countries (code) VALUES ('DE');
INSERT INTO content_service.countries (code) VALUES ('IT');
INSERT INTO content_service.countries (code) VALUES ('ES');
INSERT INTO content_service.countries (code) VALUES ('RU');
INSERT INTO content_service.countries (code) VALUES ('CN');
INSERT INTO content_service.countries (code) VALUES ('JP');
INSERT INTO content_service.countries (code) VALUES ('KR');
INSERT INTO content_service.countries (code) VALUES ('IN');
INSERT INTO content_service.countries (code) VALUES ('BR');
INSERT INTO content_service.countries (code) VALUES ('MX');
INSERT INTO content_service.countries (code) VALUES ('CA');
INSERT INTO content_service.countries (code) VALUES ('AU');
INSERT INTO content_service.countries (code) VALUES ('NL');
INSERT INTO content_service.countries (code) VALUES ('SE');
INSERT INTO content_service.countries (code) VALUES ('NO');
INSERT INTO content_service.countries (code) VALUES ('TR');
INSERT INTO content_service.countries (code) VALUES ('AR');

--changeset seed:02 runOnChange:false
--comment: Seed country_translations (en_US, ru_RU)
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='US'), 'en_US', 'United States');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='US'), 'ru_RU', 'США');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='GB'), 'en_US', 'United Kingdom');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='GB'), 'ru_RU', 'Великобритания');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='FR'), 'en_US', 'France');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='FR'), 'ru_RU', 'Франция');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='DE'), 'en_US', 'Germany');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='DE'), 'ru_RU', 'Германия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='IT'), 'en_US', 'Italy');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='IT'), 'ru_RU', 'Италия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='ES'), 'en_US', 'Spain');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='ES'), 'ru_RU', 'Испания');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='RU'), 'en_US', 'Russia');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='RU'), 'ru_RU', 'Россия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='CN'), 'en_US', 'China');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='CN'), 'ru_RU', 'Китай');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='JP'), 'en_US', 'Japan');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='JP'), 'ru_RU', 'Япония');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='KR'), 'en_US', 'South Korea');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='KR'), 'ru_RU', 'Южная Корея');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='IN'), 'en_US', 'India');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='IN'), 'ru_RU', 'Индия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='BR'), 'en_US', 'Brazil');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='BR'), 'ru_RU', 'Бразилия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='MX'), 'en_US', 'Mexico');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='MX'), 'ru_RU', 'Мексика');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='CA'), 'en_US', 'Canada');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='CA'), 'ru_RU', 'Канада');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='AU'), 'en_US', 'Australia');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='AU'), 'ru_RU', 'Австралия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='NL'), 'en_US', 'Netherlands');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='NL'), 'ru_RU', 'Нидерланды');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='SE'), 'en_US', 'Sweden');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='SE'), 'ru_RU', 'Швеция');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='NO'), 'en_US', 'Norway');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='NO'), 'ru_RU', 'Норвегия');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='TR'), 'en_US', 'Turkey');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='TR'), 'ru_RU', 'Турция');

INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='AR'), 'en_US', 'Argentina');
INSERT INTO content_service.country_translations (country_id, locale, name)
VALUES ((SELECT id FROM content_service.countries WHERE code='AR'), 'ru_RU', 'Аргентина');

--changeset seed:03 runOnChange:false
--comment: Seed cities (major cities for selected countries)
INSERT INTO content_service.cities (code, country_id) VALUES ('NYC', (SELECT id FROM content_service.countries WHERE code='US'));
INSERT INTO content_service.cities (code, country_id) VALUES ('LA', (SELECT id FROM content_service.countries WHERE code='US'));
INSERT INTO content_service.cities (code, country_id) VALUES ('LDN', (SELECT id FROM content_service.countries WHERE code='GB'));
INSERT INTO content_service.cities (code, country_id) VALUES ('PAR', (SELECT id FROM content_service.countries WHERE code='FR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('BER', (SELECT id FROM content_service.countries WHERE code='DE'));
INSERT INTO content_service.cities (code, country_id) VALUES ('ROM', (SELECT id FROM content_service.countries WHERE code='IT'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MAD', (SELECT id FROM content_service.countries WHERE code='ES'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MOW', (SELECT id FROM content_service.countries WHERE code='RU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SPB', (SELECT id FROM content_service.countries WHERE code='RU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('TKY', (SELECT id FROM content_service.countries WHERE code='JP'));
INSERT INTO content_service.cities (code, country_id) VALUES ('BJS', (SELECT id FROM content_service.countries WHERE code='CN'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SEO', (SELECT id FROM content_service.countries WHERE code='KR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MUM', (SELECT id FROM content_service.countries WHERE code='IN'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SP', (SELECT id FROM content_service.countries WHERE code='BR'));
INSERT INTO content_service.cities (code, country_id) VALUES ('MEX', (SELECT id FROM content_service.countries WHERE code='MX'));
INSERT INTO content_service.cities (code, country_id) VALUES ('TOR', (SELECT id FROM content_service.countries WHERE code='CA'));
INSERT INTO content_service.cities (code, country_id) VALUES ('SYD', (SELECT id FROM content_service.countries WHERE code='AU'));
INSERT INTO content_service.cities (code, country_id) VALUES ('AMS', (SELECT id FROM content_service.countries WHERE code='NL'));
INSERT INTO content_service.cities (code, country_id) VALUES ('STO', (SELECT id FROM content_service.countries WHERE code='SE'));
INSERT INTO content_service.cities (code, country_id) VALUES ('ANK', (SELECT id FROM content_service.countries WHERE code='TR'));

--changeset seed:04 runOnChange:false
--comment: Seed city_translations (en_US, ru_RU)
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='NYC'), 'en_US', 'New York');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='NYC'), 'ru_RU', 'Нью-Йорк');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LA'), 'en_US', 'Los Angeles');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LA'), 'ru_RU', 'Лос-Анджелес');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LDN'), 'en_US', 'London');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='LDN'), 'ru_RU', 'Лондон');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='PAR'), 'en_US', 'Paris');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='PAR'), 'ru_RU', 'Париж');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BER'), 'en_US', 'Berlin');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BER'), 'ru_RU', 'Берлин');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ROM'), 'en_US', 'Rome');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ROM'), 'ru_RU', 'Рим');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MAD'), 'en_US', 'Madrid');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MAD'), 'ru_RU', 'Мадрид');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MOW'), 'en_US', 'Moscow');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MOW'), 'ru_RU', 'Москва');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SPB'), 'en_US', 'Saint Petersburg');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SPB'), 'ru_RU', 'Санкт-Петербург');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TKY'), 'en_US', 'Tokyo');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TKY'), 'ru_RU', 'Токио');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BJS'), 'en_US', 'Beijing');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='BJS'), 'ru_RU', 'Пекин');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SEO'), 'en_US', 'Seoul');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SEO'), 'ru_RU', 'Сеул');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MUM'), 'en_US', 'Mumbai');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MUM'), 'ru_RU', 'Мумбаи');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SP'), 'en_US', 'São Paulo');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SP'), 'ru_RU', 'Сан-Паулу');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MEX'), 'en_US', 'Mexico City');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='MEX'), 'ru_RU', 'Мехико');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TOR'), 'en_US', 'Toronto');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='TOR'), 'ru_RU', 'Торонто');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SYD'), 'en_US', 'Sydney');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='SYD'), 'ru_RU', 'Сидней');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='AMS'), 'en_US', 'Amsterdam');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='AMS'), 'ru_RU', 'Амстердам');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='STO'), 'en_US', 'Stockholm');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='STO'), 'ru_RU', 'Стокгольм');

INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ANK'), 'en_US', 'Ankara');
INSERT INTO content_service.city_translations (city_id, locale, name)
VALUES ((SELECT id FROM content_service.cities WHERE code='ANK'), 'ru_RU', 'Анкара');

--changeset seed:05 runOnChange:false
--comment: Seed genres (code)
INSERT INTO content_service.genres (genre) VALUES ('ACTION');
INSERT INTO content_service.genres (genre) VALUES ('COMEDY');
INSERT INTO content_service.genres (genre) VALUES ('DRAMA');
INSERT INTO content_service.genres (genre) VALUES ('THRILLER');
INSERT INTO content_service.genres (genre) VALUES ('HORROR');
INSERT INTO content_service.genres (genre) VALUES ('ROMANCE');
INSERT INTO content_service.genres (genre) VALUES ('SCI_FI');
INSERT INTO content_service.genres (genre) VALUES ('FANTASY');
INSERT INTO content_service.genres (genre) VALUES ('DOCUMENTARY');
INSERT INTO content_service.genres (genre) VALUES ('ANIMATION');
INSERT INTO content_service.genres (genre) VALUES ('CRIME');
INSERT INTO content_service.genres (genre) VALUES ('ADVENTURE');
INSERT INTO content_service.genres (genre) VALUES ('MYSTERY');
INSERT INTO content_service.genres (genre) VALUES ('FAMILY');
INSERT INTO content_service.genres (genre) VALUES ('BIOGRAPHY');
INSERT INTO content_service.genres (genre) VALUES ('MUSICAL');
INSERT INTO content_service.genres (genre) VALUES ('HISTORY');
INSERT INTO content_service.genres (genre) VALUES ('SPORT');
INSERT INTO content_service.genres (genre) VALUES ('WAR');
INSERT INTO content_service.genres (genre) VALUES ('WESTERN');

--changeset seed:06 runOnChange:false
--comment: Seed genre_translations (en_US, ru_RU)
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ACTION'), 'en_US', 'Action');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ACTION'), 'ru_RU', 'Боевик');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='COMEDY'), 'en_US', 'Comedy');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='COMEDY'), 'ru_RU', 'Комедия');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='DRAMA'), 'en_US', 'Drama');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='DRAMA'), 'ru_RU', 'Драма');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='THRILLER'), 'en_US', 'Thriller');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='THRILLER'), 'ru_RU', 'Триллер');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='HORROR'), 'en_US', 'Horror');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='HORROR'), 'ru_RU', 'Ужасы');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ROMANCE'), 'en_US', 'Romance');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ROMANCE'), 'ru_RU', 'Романтика');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='SCI_FI'), 'en_US', 'Science Fiction');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='SCI_FI'), 'ru_RU', 'Научная фантастика');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='FANTASY'), 'en_US', 'Fantasy');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='FANTASY'), 'ru_RU', 'Фэнтези');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='DOCUMENTARY'), 'en_US', 'Documentary');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='DOCUMENTARY'), 'ru_RU', 'Документальный');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ANIMATION'), 'en_US', 'Animation');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ANIMATION'), 'ru_RU', 'Анимация');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='CRIME'), 'en_US', 'Crime');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='CRIME'), 'ru_RU', 'Криминал');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ADVENTURE'), 'en_US', 'Adventure');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='ADVENTURE'), 'ru_RU', 'Приключения');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='MYSTERY'), 'en_US', 'Mystery');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='MYSTERY'), 'ru_RU', 'Мистика');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='FAMILY'), 'en_US', 'Family');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='FAMILY'), 'ru_RU', 'Семейный');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='BIOGRAPHY'), 'en_US', 'Biography');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='BIOGRAPHY'), 'ru_RU', 'Биография');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='MUSICAL'), 'en_US', 'Musical');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='MUSICAL'), 'ru_RU', 'Мюзикл');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='HISTORY'), 'en_US', 'History');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='HISTORY'), 'ru_RU', 'Исторический');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='SPORT'), 'en_US', 'Sport');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='SPORT'), 'ru_RU', 'Спортивный');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='WAR'), 'en_US', 'War');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='WAR'), 'ru_RU', 'Военный');

INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='WESTERN'), 'en_US', 'Western');
INSERT INTO content_service.genre_translations (genre_id, locale, name)
VALUES ((SELECT id FROM content_service.genres WHERE genre='WESTERN'), 'ru_RU', 'Вестерн');

--changeset seed:07 runOnChange:false
--comment: Seed careers (code)
INSERT INTO content_service.careers (career) VALUES ('ACTOR');
INSERT INTO content_service.careers (career) VALUES ('DIRECTOR');
INSERT INTO content_service.careers (career) VALUES ('WRITER');
INSERT INTO content_service.careers (career) VALUES ('PRODUCER');
INSERT INTO content_service.careers (career) VALUES ('CINEMATOGRAPHER');
INSERT INTO content_service.careers (career) VALUES ('EDITOR');
INSERT INTO content_service.careers (career) VALUES ('COMPOSER');
INSERT INTO content_service.careers (career) VALUES ('PRODUCTION_DESIGNER');
INSERT INTO content_service.careers (career) VALUES ('SOUND_DESIGNER');
INSERT INTO content_service.careers (career) VALUES ('COSTUME_DESIGNER');
INSERT INTO content_service.careers (career) VALUES ('VFX_SUPERVISOR');

--changeset seed:08 runOnChange:false
--comment: Seed career_translations (en_US, ru_RU)
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='ACTOR'), 'en_US', 'Actor');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='ACTOR'), 'ru_RU', 'Актёр');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='DIRECTOR'), 'en_US', 'Director');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='DIRECTOR'), 'ru_RU', 'Режиссёр');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='WRITER'), 'en_US', 'Writer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='WRITER'), 'ru_RU', 'Сценарист');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='PRODUCER'), 'en_US', 'Producer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='PRODUCER'), 'ru_RU', 'Продюсер');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='CINEMATOGRAPHER'), 'en_US', 'Cinematographer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='CINEMATOGRAPHER'), 'ru_RU', 'Оператор');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='EDITOR'), 'en_US', 'Editor');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='EDITOR'), 'ru_RU', 'Монтажёр');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='COMPOSER'), 'en_US', 'Composer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='COMPOSER'), 'ru_RU', 'Композитор');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='PRODUCTION_DESIGNER'), 'en_US', 'Production Designer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='PRODUCTION_DESIGNER'), 'ru_RU', 'Художник-постановщик');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='SOUND_DESIGNER'), 'en_US', 'Sound Designer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='SOUND_DESIGNER'), 'ru_RU', 'Звуковой дизайнер');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='COSTUME_DESIGNER'), 'en_US', 'Costume Designer');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='COSTUME_DESIGNER'), 'ru_RU', 'Костюмер');

INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='VFX_SUPERVISOR'), 'en_US', 'VFX Supervisor');
INSERT INTO content_service.career_translations (career_id, locale, name)
VALUES ((SELECT id FROM content_service.careers WHERE career='VFX_SUPERVISOR'), 'ru_RU', 'Супервайзер визуальных эффектов');

--changeset seed:09 runOnChange:false
--comment: Seed audio_language (code)
INSERT INTO audio_languages (code, native_name) VALUES
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

--changeset seed:10 runOnChange:false
--comment: Seed language_translations (for audio_language) - en_US and ru_RU names
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='en'), 'en_US', 'English');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='en'), 'ru_RU', 'Английский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ru'), 'en_US', 'Russian');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ru'), 'ru_RU', 'Русский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='fr'), 'en_US', 'French');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='fr'), 'ru_RU', 'Французский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='es'), 'en_US', 'Spanish');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='es'), 'ru_RU', 'Испанский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='de'), 'en_US', 'German');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='de'), 'ru_RU', 'Немецкий');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ja'), 'en_US', 'Japanese');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ja'), 'ru_RU', 'Японский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='zh'), 'en_US', 'Chinese');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='zh'), 'ru_RU', 'Китайский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ko'), 'en_US', 'Korean');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ko'), 'ru_RU', 'Корейский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='pt'), 'en_US', 'Portuguese');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='pt'), 'ru_RU', 'Португальский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='it'), 'en_US', 'Italian');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='it'), 'ru_RU', 'Итальянский');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='hi'), 'en_US', 'Hindi');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='hi'), 'ru_RU', 'Хинди');

INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ar'), 'en_US', 'Arabic');
INSERT INTO content_service.language_translations (language_id, locale, name)
VALUES ((SELECT id FROM content_service.audio_language WHERE code='ar'), 'ru_RU', 'Арабский');

--changeset seed:11 runOnChange:false
--comment: Small convenience: ensure common indexes exist for faster lookup (country_id, locale etc.)
CREATE INDEX IF NOT EXISTS idx_country_translations_country_lang ON content_service.country_translations(country_id, locale);
CREATE INDEX IF NOT EXISTS idx_city_translations_city_lang ON content_service.city_translations(city_id, locale);
CREATE INDEX IF NOT EXISTS idx_genre_translations_genre_lang ON content_service.genre_translations(genre_id, locale);
CREATE INDEX IF NOT EXISTS idx_career_translations_career_lang ON content_service.career_translations(career_id, locale);
CREATE INDEX IF NOT EXISTS idx_language_translations_lang ON content_service.language_translations(language_id, locale);
