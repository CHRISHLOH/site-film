--changeset author:1 runOnChange:false
--comment: Create schema if not exists
CREATE SCHEMA IF NOT EXISTS content_service;

-- ============================================
-- СПРАВОЧНИКИ (DICTIONARIES)
-- ============================================

--changeset author:2 runOnChange:false
--comment: Создание таблицы стран
CREATE TABLE IF NOT EXISTS content_service.countries (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         iso_code VARCHAR(2) NOT NULL UNIQUE,
                                                         created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                         updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_countries_iso_code ON content_service.countries(iso_code);

--changeset author:3 runOnChange:false
--comment: Create country_translations table
CREATE TABLE IF NOT EXISTS content_service.country_translations (
                                                                    id BIGSERIAL PRIMARY KEY,
                                                                    country_id BIGINT NOT NULL,
                                                                    locale VARCHAR(5) NOT NULL,
                                                                    name VARCHAR(100) NOT NULL,
                                                                    CONSTRAINT fk_country_translation_country FOREIGN KEY (country_id)
                                                                        REFERENCES content_service.countries(id) ,
                                                                    CONSTRAINT uk_country_translation UNIQUE (country_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_country_translations_locale ON content_service.country_translations(locale);
CREATE INDEX IF NOT EXISTS idx_country_translations_country_id ON content_service.country_translations(country_id);

--changeset author:4 runOnChange:false
--comment: Create cities table
CREATE TABLE IF NOT EXISTS content_service.cities (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      code VARCHAR(100) NOT NULL UNIQUE,
                                                      country_id BIGINT,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      CONSTRAINT fk_city_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id) ON DELETE SET NULL
);
CREATE INDEX IF NOT EXISTS idx_cities_country_id ON content_service.cities(country_id);
CREATE INDEX IF NOT EXISTS idx_cities_code ON content_service.cities(code);

--changeset author:5 runOnChange:false
--comment: Create city_translations table
CREATE TABLE IF NOT EXISTS content_service.city_translations (
                                                                 id BIGSERIAL PRIMARY KEY,
                                                                 city_id BIGINT NOT NULL,
                                                                 locale VARCHAR(5) NOT NULL,
                                                                 name VARCHAR(100) NOT NULL,
                                                                 CONSTRAINT fk_city_translation_city FOREIGN KEY (city_id)
                                                                     REFERENCES content_service.cities(id) ,
                                                                 CONSTRAINT uk_city_translation UNIQUE (city_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_city_translations_locale ON content_service.city_translations(locale);
CREATE INDEX IF NOT EXISTS idx_city_translations_city_id ON content_service.city_translations(city_id);

--changeset author:6 runOnChange:false
--comment: Create genres table
CREATE TABLE IF NOT EXISTS content_service.genres (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      genre VARCHAR(50) NOT NULL UNIQUE,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_genres_genre ON content_service.genres(genre);

--changeset author:7 runOnChange:false
--comment: Create genre_translations table
CREATE TABLE IF NOT EXISTS content_service.genre_translations (
                                                                  id BIGSERIAL PRIMARY KEY,
                                                                  genre_id BIGINT NOT NULL,
                                                                  locale VARCHAR(5) NOT NULL,
                                                                  name VARCHAR(50) NOT NULL,
                                                                  CONSTRAINT fk_genre_translation_genre FOREIGN KEY (genre_id)
                                                                      REFERENCES content_service.genres(id) ,
                                                                  CONSTRAINT uk_genre_translation UNIQUE (genre_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_genre_translations_locale ON content_service.genre_translations(locale);
CREATE INDEX IF NOT EXISTS idx_genre_translations_genre_id ON content_service.genre_translations(genre_id);

--changeset author:8 runOnChange:false
--comment: Create careers table
CREATE TABLE IF NOT EXISTS content_service.careers (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       career VARCHAR(255) NOT NULL UNIQUE,
                                                       display_order INTEGER DEFAULT 0,
                                                       created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                       updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_careers_career ON content_service.careers(career);

--changeset author:9 runOnChange:false
--comment: Create career_translations table
CREATE TABLE IF NOT EXISTS content_service.career_translations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   career_id BIGINT NOT NULL,
                                                                   locale VARCHAR(5) NOT NULL,
                                                                   name VARCHAR(255) NOT NULL,
                                                                   CONSTRAINT fk_career_translation_career FOREIGN KEY (career_id)
                                                                       REFERENCES content_service.careers(id) ,
                                                                   CONSTRAINT uk_career_translation UNIQUE (career_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_career_translations_locale ON content_service.career_translations(locale);
CREATE INDEX IF NOT EXISTS idx_career_translations_career_id ON content_service.career_translations(career_id);

--changeset author:10 runOnChange:false
--comment: Create languages table
CREATE TABLE IF NOT EXISTS content_service.languages (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         iso_code VARCHAR(3) NOT NULL,
                                                         native_name VARCHAR(100) NOT NULL,
                                                         created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                         updated_at TIMESTAMPTZ DEFAULT NOW()
);

--changeset author:11 runOnChange:false
--comment: Create language_translations table
CREATE TABLE IF NOT EXISTS content_service.language_translations (
                                                                     id BIGSERIAL PRIMARY KEY,
                                                                     language_id BIGINT NOT NULL,
                                                                     locale VARCHAR(5) NOT NULL,
                                                                     name VARCHAR(100) NOT NULL,
                                                                     CONSTRAINT fk_language_translation_language FOREIGN KEY (language_id)
                                                                         REFERENCES content_service.languages(id) ,
                                                                     CONSTRAINT uk_language_translation UNIQUE (language_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_language_translations_locale ON content_service.language_translations(locale);
CREATE INDEX IF NOT EXISTS idx_language_translations_language_id ON content_service.language_translations(language_id);

--changeset author:12 runOnChange:false
--comment: Create video_qualities table (справочник)
CREATE TABLE IF NOT EXISTS content_service.video_qualities (
                                                               id BIGSERIAL PRIMARY KEY,
                                                               code VARCHAR(20) NOT NULL UNIQUE, -- '4K', '1080p', '720p', 'SD'
                                                               width INTEGER, -- 1920
                                                               height INTEGER, -- 1080
                                                               display_order INTEGER DEFAULT 0,
                                                               created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_video_qualities_code ON content_service.video_qualities(code);


CREATE TABLE IF NOT EXISTS content_service.content_status (
                                                        id SMALLSERIAL PRIMARY KEY,
                                                        code VARCHAR(30) NOT NULL UNIQUE,
                                                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

CREATE TABLE IF NOT EXISTS content_service.content_status_localization(
                                                        id SMALLSERIAL PRIMARY KEY,
                                                        status_id SMALLINT NOT NULL,
                                                        locale VARCHAR(5) NOT NULL,
                                                        name VARCHAR (30),
                                                        CONSTRAINT fk_content_status_localization_content_status FOREIGN KEY (status_id)
                                                                      REFERENCES content_service.content_status(id),
                                                        CONSTRAINT uk_content_status_localization UNIQUE (status_id, locale)
);

-- ============================================
-- ОСНОВНЫЕ СУЩНОСТИ (CORE ENTITIES)
-- ============================================

--changeset author:13 runOnChange:false
--comment: Create movies table
CREATE TABLE IF NOT EXISTS content_service.content (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      original_title VARCHAR(255) NOT NULL,
                                                      poster_url VARCHAR(255),
                                                      release_date DATE,
                                                      status_id SMALLINT,
                                                      rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10), -- средний рейтинг
                                                      imdb_rating DECIMAL(3,2) CHECK (imdb_rating >= 0 AND imdb_rating <= 10),
                                                      kinopoisk_rating DECIMAL(3,2) CHECK (kinopoisk_rating >= 0 AND kinopoisk_rating <= 10),
                                                      votes_count INTEGER DEFAULT 0,
                                                      country_id BIGINT,
                                                      age_rating VARCHAR(3),
                                                      budget BIGINT,
                                                      box_office BIGINT,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      deleted_at TIMESTAMPTZ,
                                                      CONSTRAINT fk_content_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id),
                                                      CONSTRAINT fk_content_status_id FOREIGN KEY (status_id)
                                                           REFERENCES content_service.content_status(id)
);
CREATE INDEX IF NOT EXISTS idx_movies_original_title ON content_service.content (original_title) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON content_service.content (release_date) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_rating ON content_service.content (rating DESC) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_country_id ON content_service.content (country_id);


--changeset author:14 runOnChange:false
--comment: Create content_localizations table
CREATE TABLE IF NOT EXISTS content_service.content_localizations (
                                                                     id BIGSERIAL PRIMARY KEY,
                                                                     content_id BIGINT NOT NULL,
                                                                     locale VARCHAR(5) NOT NULL,
                                                                     title VARCHAR(255) NOT NULL,
                                                                     description TEXT,
                                                                     plot_summary TEXT,
                                                                     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                     updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                                     CONSTRAINT fk_movie_localization_movie FOREIGN KEY (content_id)
                                                                         REFERENCES content_service.content(id) ,
                                                                     CONSTRAINT uk_movie_localization UNIQUE (content_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_locale ON content_service.content_localizations(locale);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_movie_id ON content_service.content_localizations(content_id);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_title ON content_service.content_localizations(title);

-- ============================================
-- СПЕЦИФИЧНЫЕ ДАННЫЕ ДЛЯ ФИЛЬМОВ
-- ============================================

--changeset author:new4 runOnChange:false
--comment: Create movie_details table
CREATE TABLE IF NOT EXISTS content_service.movie_details (
                                                             content_id BIGINT PRIMARY KEY,
                                                             duration_minutes INTEGER NOT NULL, -- длительность фильма
                                                             digital_release_date DATE, -- дата цифрового релиза
                                                             CONSTRAINT fk_movie_details_content FOREIGN KEY (content_id)
                                                                 REFERENCES content_service.content(id) 
);

-- ============================================
-- СПЕЦИФИЧНЫЕ ДАННЫЕ ДЛЯ СЕРИАЛОВ
-- ============================================

--changeset author:new5 runOnChange:false
--comment: Create series_details table
CREATE TABLE IF NOT EXISTS content_service.series_details (
                                                              content_id BIGINT PRIMARY KEY,
                                                              total_seasons INTEGER DEFAULT 0,
                                                              total_episodes INTEGER DEFAULT 0,
                                                              average_episode_duration INTEGER, -- средняя длительность эпизода в минутах
                                                              end_date DATE,
                                                              CONSTRAINT fk_series_details_content FOREIGN KEY (content_id)
                                                                  REFERENCES content_service.content(id) );


--changeset author:new6 runOnChange:false
--comment: Create seasons table
CREATE TABLE IF NOT EXISTS content_service.seasons (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       content_id BIGINT NOT NULL,
                                                       season_number INTEGER NOT NULL,
                                                       poster_url TEXT,
                                                       release_date DATE,
                                                       episodes_count INTEGER DEFAULT 0,
                                                       created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                       updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                       CONSTRAINT fk_season_content FOREIGN KEY (content_id)
                                                           REFERENCES content_service.content(id) ,
                                                       CONSTRAINT uk_season UNIQUE (content_id, season_number)
);
CREATE INDEX IF NOT EXISTS idx_seasons_content ON content_service.seasons(content_id);
CREATE INDEX IF NOT EXISTS idx_seasons_number ON content_service.seasons(content_id, season_number);

--changeset author:new7 runOnChange:false
--comment: Create season_localizations table
CREATE TABLE IF NOT EXISTS content_service.season_localizations (
                                                                    id BIGSERIAL PRIMARY KEY,
                                                                    season_id BIGINT NOT NULL,
                                                                    locale VARCHAR(5) NOT NULL,
                                                                    title VARCHAR(255),
                                                                    description TEXT,
                                                                    CONSTRAINT fk_season_localization_season FOREIGN KEY (season_id)
                                                                        REFERENCES content_service.seasons(id) ,
                                                                    CONSTRAINT uk_season_localization UNIQUE (season_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_season_localizations_season ON content_service.season_localizations(season_id);
CREATE INDEX IF NOT EXISTS idx_season_localizations_locale ON content_service.season_localizations(locale);

--changeset author:new8 runOnChange:false
--comment: Create episodes table
CREATE TABLE IF NOT EXISTS content_service.episodes (
                                                        id BIGSERIAL PRIMARY KEY,
                                                        season_id BIGINT NOT NULL,
                                                        episode_number INTEGER NOT NULL,
                                                        poster_url TEXT,
                                                        duration_minutes INTEGER,
                                                        air_date DATE,
                                                        rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10),
                                                        votes_count INTEGER DEFAULT 0,
                                                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                        updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                        CONSTRAINT fk_episode_season FOREIGN KEY (season_id)
                                                            REFERENCES content_service.seasons(id) ,
                                                        CONSTRAINT uk_episode UNIQUE (season_id, episode_number)
);
CREATE INDEX IF NOT EXISTS idx_episodes_season ON content_service.episodes(season_id);
CREATE INDEX IF NOT EXISTS idx_episodes_number ON content_service.episodes(season_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_episodes_air_date ON content_service.episodes(air_date);

--changeset author:new9 runOnChange:false
--comment: Create episode_localizations table
CREATE TABLE IF NOT EXISTS content_service.episode_localizations (
                                                                     id BIGSERIAL PRIMARY KEY,
                                                                     episode_id BIGINT NOT NULL,
                                                                     locale VARCHAR(5) NOT NULL,
                                                                     title VARCHAR(255) NOT NULL,
                                                                     description TEXT,
                                                                     plot_summary TEXT,
                                                                     CONSTRAINT fk_episode_localization_episode FOREIGN KEY (episode_id)
                                                                         REFERENCES content_service.episodes(id) ,
                                                                     CONSTRAINT uk_episode_localization UNIQUE (episode_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_episode_localizations_episode ON content_service.episode_localizations(episode_id);
CREATE INDEX IF NOT EXISTS idx_episode_localizations_locale ON content_service.episode_localizations(locale);


--changeset author:15 runOnChange:false
--comment: Create persons table
CREATE TABLE IF NOT EXISTS content_service.persons (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       original_name VARCHAR(100) NOT NULL,
                                                       original_lastname VARCHAR(100),
                                                       birth_date DATE,
                                                       death_date DATE,
                                                       gender VARCHAR(10), -- 'male', 'female', 'other'
                                                       country_id BIGINT,
                                                       city_id BIGINT,
                                                       photo_url TEXT,
                                                       created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                       updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                       deleted_at TIMESTAMPTZ,
                                                       CONSTRAINT fk_person_country FOREIGN KEY (country_id)
                                                           REFERENCES content_service.countries(id) ON DELETE SET NULL,
                                                       CONSTRAINT fk_person_city FOREIGN KEY (city_id)
                                                           REFERENCES content_service.cities(id) ON DELETE SET NULL
);
CREATE INDEX IF NOT EXISTS idx_persons_country_id ON content_service.persons(country_id);
CREATE INDEX IF NOT EXISTS idx_persons_city_id ON content_service.persons(city_id);
CREATE INDEX IF NOT EXISTS idx_persons_name ON content_service.persons(original_name, original_lastname) WHERE deleted_at IS NULL;

--changeset author:16 runOnChange:false
--comment: Create person_translations table
CREATE TABLE IF NOT EXISTS content_service.person_translations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   person_id BIGINT NOT NULL,
                                                                   locale VARCHAR(10) NOT NULL,
                                                                   locale_name VARCHAR(100),
                                                                   locale_lastname VARCHAR(100),
                                                                   biography TEXT,
                                                                   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                   updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                                   CONSTRAINT fk_person_translation FOREIGN KEY (person_id)
                                                                       REFERENCES content_service.persons(id) ,
                                                                   UNIQUE (person_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_person_translations_locale ON content_service.person_translations(locale);
CREATE INDEX IF NOT EXISTS idx_person_translations_person_id ON content_service.person_translations(person_id);


-- ============================================
-- ОЗВУЧКА (АУДИОДОРОЖКИ)
-- ============================================

--changeset author:23 runOnChange:false
--comment: Create movie_audio_tracks table
CREATE TABLE IF NOT EXISTS content_service.audio_tracks (
                                                                  id BIGSERIAL PRIMARY KEY,
                                                                  language_id BIGINT NOT NULL, -- язык озвучки
                                                                  studio_name VARCHAR(255) NOT NULL, -- "Кинопоиск", "LostFilm", "Original"
                                                                  track_type VARCHAR(50), -- 'original', 'dubbing', 'multi_voice', 'single_voice'
                                                                  display_order INTEGER DEFAULT 0,
                                                                  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                  updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                                  CONSTRAINT fk_audio_track_language FOREIGN KEY (language_id)
                                                                      REFERENCES content_service.languages(id),
                                                                  CONSTRAINT uk_audio_tracks_display_orders UNIQUE (display_order)
);
CREATE INDEX IF NOT EXISTS idx_audio_tracks_language_id ON content_service.audio_tracks(language_id);

-- ============================================
-- СВЯЗИ (RELATIONSHIPS)
-- ============================================

--changeset author:17 runOnChange:false
--comment: Create movie_persons table
CREATE TABLE IF NOT EXISTS content_service.content_persons (
                                                             id BIGSERIAL PRIMARY KEY,
                                                             content_id BIGINT NOT NULL,
                                                             person_id BIGINT NOT NULL,
                                                             career_id BIGINT NOT NULL,
                                                             character_name VARCHAR(255), -- имя персонажа (для актеров)
                                                             display_order_in_content INTEGER DEFAULT 0, -- порядок на странице фильма
                                                             display_order_in_career INTEGER DEFAULT 0, -- порядок на странице актера
                                                             created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                             updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                             CONSTRAINT fk_content_person_content FOREIGN KEY (content_id)
                                                                 REFERENCES content_service.content(id) ,
                                                             CONSTRAINT fk_content_person_person FOREIGN KEY (person_id)
                                                                 REFERENCES content_service.persons(id) ,
                                                             CONSTRAINT fk_content_person_career FOREIGN KEY (career_id)
                                                                 REFERENCES content_service.careers(id),
                                                             CONSTRAINT uk_content_person UNIQUE (content_id, person_id, career_id)
);
CREATE INDEX IF NOT EXISTS idx_content_persons_content_id ON content_service.content_persons(content_id);
CREATE INDEX IF NOT EXISTS idx_content_persons_person_id ON content_service.content_persons(person_id);
CREATE INDEX IF NOT EXISTS idx_content_persons_career_id ON content_service.content_persons(career_id);
CREATE INDEX IF NOT EXISTS idx_content_persons_content_order ON content_service.content_persons(content_id, display_order_in_content);
CREATE INDEX IF NOT EXISTS idx_content_persons_career_order ON content_service.content_persons(person_id, display_order_in_career);

--changeset author:18 runOnChange:false
--comment: Create movie_genres table
CREATE TABLE IF NOT EXISTS content_service.content_genres (
                                                            content_id BIGINT NOT NULL,
                                                            genre_id BIGINT NOT NULL,
                                                            display_order INTEGER DEFAULT 0,
                                                            PRIMARY KEY (content_id, genre_id),
                                                            CONSTRAINT fk_content_genre_content FOREIGN KEY (content_id)
                                                                REFERENCES content_service.content(id) ,
                                                            CONSTRAINT fk_content_genre_genre FOREIGN KEY (genre_id)
                                                                REFERENCES content_service.genres(id) 
);
CREATE INDEX IF NOT EXISTS idx_movie_genres_genre_id ON content_service.content_genres(genre_id);

--changeset author:19 runOnChange:false
--comment: Create person_genres table
CREATE TABLE IF NOT EXISTS content_service.person_genres (
                                                             person_id BIGINT NOT NULL,
                                                             genre_id BIGINT NOT NULL,
                                                             display_order INTEGER DEFAULT 0,
                                                             PRIMARY KEY (person_id, genre_id),
                                                             CONSTRAINT fk_person_genre_person FOREIGN KEY (person_id)
                                                                 REFERENCES content_service.persons(id) ,
                                                             CONSTRAINT fk_person_genre_genre FOREIGN KEY (genre_id)
                                                                 REFERENCES content_service.genres(id) 
);
CREATE INDEX IF NOT EXISTS idx_person_genres_genre_id ON content_service.person_genres(genre_id);

--changeset author:20 runOnChange:false
--comment: Create person_careers table
CREATE TABLE IF NOT EXISTS content_service.person_careers (
                                                              person_id BIGINT NOT NULL,
                                                              career_id BIGINT NOT NULL,
                                                              display_order INTEGER DEFAULT 0,
                                                              PRIMARY KEY (person_id, career_id),
                                                              CONSTRAINT fk_person_career_person FOREIGN KEY (person_id)
                                                                  REFERENCES content_service.persons(id) ,
                                                              CONSTRAINT fk_person_career_career FOREIGN KEY (career_id)
                                                                  REFERENCES content_service.careers(id) 
);
CREATE INDEX IF NOT EXISTS idx_person_careers_career_id ON content_service.person_careers(career_id);


--changeset author:23b runOnChange:false
--comment: Create movie_audio_tracks join table
CREATE TABLE IF NOT EXISTS content_service.content_audio_tracks (
                                                                  content_id BIGINT NOT NULL,
                                                                  audio_track_id BIGINT NOT NULL,
                                                                  PRIMARY KEY (content_id, audio_track_id),
                                                                  CONSTRAINT fk_content_audio_track_content FOREIGN KEY (content_id)
                                                                      REFERENCES content_service.content(id) ,
                                                                  CONSTRAINT fk_content_audio_track_audio FOREIGN KEY (audio_track_id)
                                                                      REFERENCES content_service.audio_tracks(id) 
);
CREATE INDEX IF NOT EXISTS idx_content_audio_track_content_id ON content_service.content_audio_tracks(content_id);
CREATE INDEX IF NOT EXISTS idx_content_audio_track_audio_id ON content_service.content_audio_tracks(audio_track_id);


-- ============================================
-- ВИДЕО-ФАЙЛЫ И КАЧЕСТВО
-- ============================================

--changeset author:21 runOnChange:false
--comment: Create content_video_files table
CREATE TABLE IF NOT EXISTS content_service.content_video_files (
                                                                 id BIGSERIAL PRIMARY KEY,
                                                                 content_id BIGINT NOT NULL,
                                                                 manifest_url TEXT NOT NULL, -- URL манифеста (HLS/DASH)
                                                                 duration_seconds INTEGER,
                                                                 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                 updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                 CONSTRAINT fk_content_video_files_content FOREIGN KEY (content_id)
                                                                     REFERENCES content_service.content(id) 
);
CREATE INDEX IF NOT EXISTS idx_content_video_files_content_id ON content_service.content_video_files(content_id);

--changeset author:22 runOnChange:false
--comment: Create content_video_qualities table (связь видео-файлов с качеством)
CREATE TABLE IF NOT EXISTS content_service.content_video_qualities (
                                                                     video_id BIGINT NOT NULL,
                                                                     quality_id BIGINT NOT NULL,
                                                                     PRIMARY KEY (video_id, quality_id),
                                                                     CONSTRAINT fk_video_quality_video FOREIGN KEY (video_id)
                                                                         REFERENCES content_service.content_video_files(id) ,
                                                                     CONSTRAINT fk_video_quality_quality FOREIGN KEY (quality_id)
                                                                         REFERENCES content_service.video_qualities(id) 
);
CREATE INDEX IF NOT EXISTS idx_content_video_qualities_quality_id ON content_service.content_video_qualities(quality_id);


-- ============================================
-- СУБТИТРЫ
-- ============================================

--changeset author:24 runOnChange:false
--comment: Create content_subtitles table
CREATE TABLE IF NOT EXISTS content_service.video_file_subtitles (
                                                               id            BIGSERIAL PRIMARY KEY,
                                                               video_file_id      BIGINT       NOT NULL,
                                                               language_id   BIGINT       NOT NULL, -- язык субтитров
                                                               author_name   VARCHAR(255) NOT NULL, -- "Netflix", "OpenSubtitles"
                                                               subtitle_type VARCHAR(50), -- 'regular', 'sdh', 'forced'
                                                               url           TEXT         NOT NULL, -- URL файла субтитров
                                                               format        VARCHAR(10)  NOT NULL DEFAULT 'vtt', -- 'vtt', 'srt', 'ass'
                                                               display_order INTEGER DEFAULT 0,
                                                               is_default    BOOLEAN DEFAULT FALSE,
                                                               created_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
                                                               updated_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
                                                               CONSTRAINT fk_subtitle_video_file FOREIGN KEY (video_file_id)
                                                                   REFERENCES content_service.content_video_files(id),
                                                               CONSTRAINT fk_subtitle_language FOREIGN KEY (language_id)
                                                                   REFERENCES content_service.languages(id)
);
CREATE INDEX IF NOT EXISTS idx_subtitles_video_file_id ON content_service.video_file_subtitles(video_file_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_language_id ON content_service.video_file_subtitles(language_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_video_file_lang ON content_service.video_file_subtitles(video_file_id, language_id);
CREATE UNIQUE INDEX IF NOT EXISTS uk_subtitle ON content_service.video_file_subtitles(video_file_id, language_id, author_name);