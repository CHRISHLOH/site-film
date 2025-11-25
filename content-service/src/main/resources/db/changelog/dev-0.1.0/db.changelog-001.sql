--changeset author:1 runOnChange:false
--comment: Create schema if not exists
CREATE SCHEMA IF NOT EXISTS content_service;

-- ============================================
-- СПРАВОЧНИКИ (DICTIONARIES)
-- ============================================

CREATE TABLE IF NOT EXISTS content_service.countries (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         iso_code VARCHAR(2) NOT NULL UNIQUE,
                                                         translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object')
);
CREATE INDEX IF NOT EXISTS idx_countries_iso_code ON content_service.countries(iso_code);



CREATE TABLE IF NOT EXISTS content_service.cities (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      code VARCHAR(100) NOT NULL UNIQUE,
                                                      country_id BIGINT,
                                                      translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object'),
                                                      CONSTRAINT fk_city_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id)
);
CREATE INDEX IF NOT EXISTS idx_cities_country_id ON content_service.cities(country_id);
CREATE INDEX IF NOT EXISTS idx_cities_code ON content_service.cities(code);



CREATE TABLE IF NOT EXISTS content_service.genres (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      genre VARCHAR(50) NOT NULL UNIQUE,
                                                      translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object')
);
CREATE INDEX IF NOT EXISTS idx_genres_genre ON content_service.genres(genre);
CREATE INDEX idx_genres_translations ON content_service.genres USING gin(translations);


CREATE TABLE IF NOT EXISTS content_service.careers (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       career VARCHAR(255) NOT NULL UNIQUE,
                                                       translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object')
);
CREATE INDEX IF NOT EXISTS idx_careers_career ON content_service.careers(career);
CREATE INDEX idx_careers_translations ON content_service.careers USING gin(translations);



CREATE TABLE IF NOT EXISTS content_service.languages (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         iso_code VARCHAR(3) NOT NULL,
                                                         native_name VARCHAR(100) NOT NULL,
                                                         translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object')
);
CREATE INDEX idx_languages_translations ON content_service.languages USING gin(translations);



--changeset author:21 runOnChange:false
--comment: Create video_files table
CREATE TABLE IF NOT EXISTS content_service.video_files (
                                                           id BIGSERIAL PRIMARY KEY,
                                                           manifest_url TEXT NOT NULL, -- URL манифеста (HLS/DASH)
                                                           duration_seconds INTEGER,
                                                           created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


-- ============================================
-- ОСНОВНЫЕ СУЩНОСТИ (CORE ENTITIES)
-- ============================================

--changeset author:13 runOnChange:false
--comment: Create movies table
CREATE TABLE IF NOT EXISTS content_service.content (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      original_title VARCHAR(255) NOT NULL,
                                                      content_type VARCHAR(50),
                                                      poster_url VARCHAR(255),
                                                      release_date DATE,
                                                      status VARCHAR(50),
                                                      votes_count INTEGER DEFAULT 0,
                                                      country_id BIGINT,
                                                      age_rating VARCHAR(3),
                                                      budget BIGINT,
                                                      box_office BIGINT,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      CONSTRAINT fk_content_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id)
);
CREATE INDEX IF NOT EXISTS idx_movies_original_title ON content_service.content (original_title);
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON content_service.content (release_date);
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
                                                             video_file_id BIGINT,
                                                             duration_minutes INTEGER NOT NULL, -- длительность фильма
                                                             cinema_release_date DATE, -- дата цифрового релиза
                                                             digital_release_date DATE, -- дата цифрового релиза
                                                             created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                             updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                             CONSTRAINT fk_movie_details_content FOREIGN KEY (content_id)
                                                                 REFERENCES content_service.content(id),
                                                             CONSTRAINT fk_movie_details_video_file FOREIGN KEY (video_file_id)
                                                                 REFERENCES  content_service.video_files
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
                                                              created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                              updated_at TIMESTAMPTZ DEFAULT NOW(),
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
                                                                    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                    updated_at TIMESTAMPTZ DEFAULT NOW(),
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
                                                        video_file_id BIGINT,
                                                        duration_minutes INTEGER,
                                                        air_date DATE,
                                                        average_rating DECIMAL(3,2) CHECK (average_rating >= 0 AND average_rating <= 10),
                                                        votes_count INTEGER DEFAULT 0,
                                                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                        updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                        CONSTRAINT fk_episode_season FOREIGN KEY (season_id)
                                                            REFERENCES content_service.seasons(id) ,
                                                        CONSTRAINT fk_episode_video_file FOREIGN KEY (video_file_id)
                                                            REFERENCES content_service.video_files(id),
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
                                                                     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                     updated_at TIMESTAMPTZ DEFAULT NOW(),
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
                                                       gender VARCHAR(10), -- 'male', 'female'
                                                       country_id BIGINT,
                                                       city_id BIGINT,
                                                       photo_url TEXT,
                                                       created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                       updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                       CONSTRAINT fk_person_country FOREIGN KEY (country_id)
                                                           REFERENCES content_service.countries(id) ON DELETE SET NULL,
                                                       CONSTRAINT fk_person_city FOREIGN KEY (city_id)
                                                           REFERENCES content_service.cities(id) ON DELETE SET NULL
);
CREATE INDEX IF NOT EXISTS idx_persons_country_id ON content_service.persons(country_id);
CREATE INDEX IF NOT EXISTS idx_persons_city_id ON content_service.persons(city_id);
CREATE INDEX IF NOT EXISTS idx_persons_name ON content_service.persons(original_name, original_lastname);

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
                                                                      REFERENCES content_service.languages(id)
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
CREATE INDEX IF NOT EXISTS idx_content_persons_person_id ON content_service.content_persons(person_id);
CREATE INDEX IF NOT EXISTS idx_content_persons_career_id ON content_service.content_persons(career_id);
CREATE INDEX IF NOT EXISTS idx_content_persons_content_order ON content_service.content_persons(content_id, display_order_in_content);
CREATE INDEX IF NOT EXISTS idx_content_persons_career_order ON content_service.content_persons(person_id, display_order_in_career);

--changeset author:18 runOnChange:false
--comment: Create movie_genres table
CREATE TABLE IF NOT EXISTS content_service.content_genres (
                                                            content_id BIGINT NOT NULL,
                                                            genre_id BIGINT NOT NULL,
                                                            display_order SMALLINT DEFAULT 0,
                                                            PRIMARY KEY (content_id, genre_id),
                                                            CONSTRAINT fk_content_genre_content FOREIGN KEY (content_id)
                                                                REFERENCES content_service.content(id) ,
                                                            CONSTRAINT fk_content_genre_genre FOREIGN KEY (genre_id)
                                                                REFERENCES content_service.genres(id) 
);
CREATE INDEX IF NOT EXISTS idx_movie_genres_genre_id ON content_service.content_genres(genre_id);


--changeset author:20 runOnChange:false
--comment: Create person_careers table
CREATE TABLE IF NOT EXISTS content_service.person_careers (
                                                              person_id BIGINT NOT NULL,
                                                              career_id BIGINT NOT NULL,
                                                              display_order SMALLINT DEFAULT 0,
                                                              PRIMARY KEY (person_id, career_id),
                                                              CONSTRAINT fk_person_career_person FOREIGN KEY (person_id)
                                                                  REFERENCES content_service.persons(id) ,
                                                              CONSTRAINT fk_person_career_career FOREIGN KEY (career_id)
                                                                  REFERENCES content_service.careers(id) 
);
CREATE INDEX IF NOT EXISTS idx_person_careers_career_id ON content_service.person_careers(career_id);


-- ============================================
-- ВИДЕО-ФАЙЛЫ И КАЧЕСТВО
-- ============================================

CREATE TABLE content_service.video_file_audio_tracks (
                                                         video_file_id BIGINT NOT NULL,
                                                         audio_track_id BIGINT NOT NULL,
                                                         PRIMARY KEY (video_file_id, audio_track_id),
                                                         CONSTRAINT fk_vfat_video FOREIGN KEY (video_file_id)
                                                             REFERENCES content_service.video_files(id) ON DELETE CASCADE,
                                                         CONSTRAINT fk_vfat_audio FOREIGN KEY (audio_track_id)
                                                             REFERENCES content_service.audio_tracks(id) ON DELETE CASCADE
);


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
                                                               is_default    BOOLEAN DEFAULT FALSE,
                                                               created_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
                                                               CONSTRAINT fk_subtitle_video_file FOREIGN KEY (video_file_id)
                                                                   REFERENCES content_service.video_files(id),
                                                               CONSTRAINT fk_subtitle_language FOREIGN KEY (language_id)
                                                                   REFERENCES content_service.languages(id)
);
CREATE INDEX IF NOT EXISTS idx_subtitles_video_file_id ON content_service.video_file_subtitles(video_file_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_language_id ON content_service.video_file_subtitles(language_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_video_file_lang ON content_service.video_file_subtitles(video_file_id, language_id);
CREATE UNIQUE INDEX IF NOT EXISTS uk_subtitle ON content_service.video_file_subtitles(video_file_id, language_id, author_name);


-- ============================================
-- COLLECTIONS (БЕЗ ИЗМЕНЕНИЙ В СТРУКТУРЕ)
-- ============================================

CREATE TABLE content_service.collections (
                                             id BIGSERIAL PRIMARY KEY,
                                             code VARCHAR(100) NOT NULL UNIQUE,
                                             poster_url TEXT,
                                             display_order SMALLINT DEFAULT 0,
                                             created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                             updated_at TIMESTAMPTZ DEFAULT NOW()
);


CREATE TABLE content_service.collection_translations (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         collection_id BIGINT NOT NULL,
                                                         locale VARCHAR(5) NOT NULL,
                                                         name VARCHAR(255) NOT NULL,
                                                         description TEXT,
                                                         created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                         updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                         CONSTRAINT fk_collection_translation FOREIGN KEY (collection_id)
                                                             REFERENCES content_service.collections(id) ON DELETE CASCADE,
                                                         UNIQUE (collection_id, locale)
);

CREATE INDEX idx_collection_translations_locale ON content_service.collection_translations(locale);
CREATE INDEX idx_collection_translations_collection ON content_service.collection_translations(collection_id);


CREATE TABLE content_service.collection_items (
                                                  collection_id BIGINT NOT NULL,
                                                  content_id BIGINT NOT NULL,
                                                  display_order INTEGER NOT NULL,
                                                  added_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                  PRIMARY KEY (collection_id, content_id),
                                                  CONSTRAINT fk_collection_item_collection FOREIGN KEY (collection_id)
                                                      REFERENCES content_service.collections(id) ON DELETE CASCADE,
                                                  CONSTRAINT fk_collection_item_content FOREIGN KEY (content_id)
                                                      REFERENCES content_service.content(id) ON DELETE CASCADE
);

CREATE INDEX idx_collection_items_order ON content_service.collection_items(collection_id, display_order);
CREATE INDEX idx_collection_items_content ON content_service.collection_items(content_id); -- для обратного поиска


-- ============================================
-- FRANCHISES (УЛУЧШЕННАЯ ВЕРСИЯ)
-- ============================================

CREATE TABLE content_service.franchises (
                                            id BIGSERIAL PRIMARY KEY,
                                            code VARCHAR(100) NOT NULL UNIQUE,-- Простой стабильный код: "mcu", "star_wars", "middle_earth"
                                            parent_franchise_id BIGINT,-- Поддержка вложенности: Infinity Saga внутри MCU
                                            sort_order INTEGER, -- порядок внутри родительской франшизы
                                            poster_url TEXT,
                                            created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                            updated_at TIMESTAMPTZ DEFAULT NOW(),
                                            CONSTRAINT fk_parent_franchise FOREIGN KEY (parent_franchise_id)
                                                REFERENCES content_service.franchises(id) ON DELETE SET NULL
);

CREATE INDEX idx_franchises_parent ON content_service.franchises(parent_franchise_id);
CREATE INDEX idx_franchises_sort_order ON content_service.franchises(parent_franchise_id, sort_order);



CREATE TABLE content_service.franchise_translations (
                                                        id BIGSERIAL PRIMARY KEY,
                                                        franchise_id BIGINT NOT NULL,
                                                        locale VARCHAR(5) NOT NULL,
                                                        name VARCHAR(255) NOT NULL, -- ИЗМЕНЕНИЕ: просто name вместо franchise_name_translation
                                                        description TEXT,
                                                        tagline VARCHAR(255), -- ДОБАВЛЕНО: для крутых слоганов
                                                        CONSTRAINT fk_franchise_translation FOREIGN KEY (franchise_id)
                                                            REFERENCES content_service.franchises(id) ON DELETE CASCADE,
                                                        UNIQUE (franchise_id, locale)
);

CREATE INDEX idx_franchise_translations_locale ON content_service.franchise_translations(locale);
CREATE INDEX idx_franchise_translations_franchise ON content_service.franchise_translations(franchise_id);


CREATE TABLE content_service.franchise_watch_orders (
                                                        id BIGSERIAL PRIMARY KEY,
                                                        franchise_id BIGINT NOT NULL,
                                                        code VARCHAR(100) NOT NULL,    -- стабильный код:
                                                        name VARCHAR(255),    -- "release_order", "chronological", "infinity_saga", "phase_3"
                                                        description TEXT,
                                                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                        CONSTRAINT fk_watch_order_franchise FOREIGN KEY (franchise_id)
                                                            REFERENCES content_service.franchises(id) ON DELETE CASCADE,
                                                        UNIQUE (franchise_id, code)
);
CREATE INDEX idx_franchise_watch_orders_franchise
    ON content_service.franchise_watch_orders(franchise_id);

CREATE TABLE content_service.franchise_watch_order_items (
                                                             id BIGSERIAL PRIMARY KEY,
                                                             watch_order_id BIGINT NOT NULL,
                                                             content_id BIGINT NOT NULL,
                                                             position INTEGER NOT NULL,   -- порядок показа (1 → 2 → 3)
                                                             is_optional BOOLEAN DEFAULT false,
                                                             notes TEXT,
                                                             CONSTRAINT fk_watch_order FOREIGN KEY (watch_order_id)
                                                                 REFERENCES content_service.franchise_watch_orders(id) ON DELETE CASCADE,
                                                             CONSTRAINT fk_watch_order_content FOREIGN KEY (content_id)
                                                                 REFERENCES content_service.content(id) ON DELETE CASCADE
);

CREATE INDEX idx_watch_order_items_order
    ON content_service.franchise_watch_order_items (watch_order_id, position);

CREATE INDEX idx_watch_order_items_content
    ON content_service.franchise_watch_order_items (content_id);




CREATE TABLE content_service.awards (
                                        id BIGSERIAL PRIMARY KEY,
                                        machine_name VARCHAR(100) NOT NULL UNIQUE,  -- oscar, golden_globe, bafta
                                        logo_url TEXT,
                                        country_id BIGINT REFERENCES content_service.countries(id) ON DELETE SET NULL,
                                        founded_year INTEGER,
                                        translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object'),
                                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX idx_awards_translations ON content_service.awards USING gin(translations);

CREATE TABLE content_service.award_categories (
                                                  id BIGSERIAL PRIMARY KEY,
                                                  award_id BIGINT NOT NULL REFERENCES content_service.awards(id) ON DELETE CASCADE,
                                                  machine_name VARCHAR(100) NOT NULL,  -- best_picture, best_actor, best_director
                                                  translations JSONB NOT NULL CHECK (jsonb_typeof(translations) = 'object'),
                                                  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                  UNIQUE (award_id, machine_name)
);
CREATE INDEX idx_award_categories_translations ON content_service.award_categories USING gin(translations);

-- Номинации (общая информация)
CREATE TABLE content_service.award_nominations (
                                                   id BIGSERIAL PRIMARY KEY,
                                                   content_id BIGINT NOT NULL, -- фильм ВСЕГДА есть
                                                   category_id BIGINT NOT NULL,
                                                   work_title VARCHAR(255),
                                                   year INTEGER NOT NULL,
                                                   edition_number INTEGER,
                                                   is_winner BOOLEAN DEFAULT false,
                                                   ceremony_date DATE,
                                                   notes TEXT,
                                                   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                   CONSTRAINT fk_award_nomination_content FOREIGN KEY (content_id)
                                                       REFERENCES content_service.content(id) ON DELETE CASCADE,
                                                   CONSTRAINT fk_award_nomination_category FOREIGN KEY (category_id)
                                                       REFERENCES content_service.award_categories(id) ON DELETE CASCADE
);
CREATE INDEX idx_award_nominations_content ON content_service.award_nominations(content_id);
CREATE INDEX idx_award_nominations_category ON content_service.award_nominations(category_id);
CREATE INDEX idx_award_nominations_year ON content_service.award_nominations(year DESC);
CREATE INDEX idx_award_nominations_winner ON content_service.award_nominations(is_winner) WHERE is_winner = true;

-- Для переводов
CREATE TABLE content_service.award_nomination_translations (
                                                               nomination_id BIGINT NOT NULL,
                                                               locale VARCHAR(5) NOT NULL,
                                                               work_title VARCHAR(255),
                                                               notes TEXT,
                                                               PRIMARY KEY (nomination_id, locale),
                                                               CONSTRAINT fk_nomination_translation FOREIGN KEY (nomination_id)
                                                                   REFERENCES content_service.award_nominations(id) ON DELETE CASCADE
);


-- Персоны, связанные с номинацией (если есть)
CREATE TABLE content_service.award_nomination_persons (
                                                          nomination_id BIGINT NOT NULL,
                                                          person_id BIGINT NOT NULL,
                                                          career_id SMALLINT,
                                                          display_order INTEGER DEFAULT 0, -- порядок отображения
                                                          PRIMARY KEY (nomination_id, person_id),
                                                          CONSTRAINT fk_award_nomination_person_nomination FOREIGN KEY (nomination_id)
                                                              REFERENCES content_service.award_nominations(id) ON DELETE CASCADE,
                                                          CONSTRAINT fk_award_nomination_person_person FOREIGN KEY (person_id)
                                                              REFERENCES content_service.persons(id) ON DELETE CASCADE
);
CREATE INDEX idx_award_nomination_persons_person ON content_service.award_nomination_persons(person_id);


CREATE TABLE content_service.content_statistics (
                                                    content_id BIGINT PRIMARY KEY,
                                                    votes_count BIGINT NOT NULL DEFAULT 0,
                                                    rating_sum BIGINT NOT NULL DEFAULT 0,   -- store integer sum to avoid float drift
                                                    average_rating NUMERIC(4,2) NOT NULL DEFAULT 0, -- computed
                                                    last_updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                                                    last_processed_kafka_offset BIGINT DEFAULT NULL, -- idempotency / watermark
                                                    calculation_version BIGINT DEFAULT 1,
                                                    CONSTRAINT fk_stats_content FOREIGN KEY (content_id) REFERENCES content_service.content (id) ON DELETE CASCADE
);
CREATE INDEX ON content_service.content_statistics (average_rating DESC);