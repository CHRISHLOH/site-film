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
                                                                        REFERENCES content_service.countries(id) ON DELETE CASCADE,
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
                                                                     REFERENCES content_service.cities(id) ON DELETE CASCADE,
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
                                                                      REFERENCES content_service.genres(id) ON DELETE CASCADE,
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
                                                                       REFERENCES content_service.careers(id) ON DELETE CASCADE,
                                                                   CONSTRAINT uk_career_translation UNIQUE (career_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_career_translations_locale ON content_service.career_translations(locale);
CREATE INDEX IF NOT EXISTS idx_career_translations_career_id ON content_service.career_translations(career_id);

--changeset author:10 runOnChange:false
--comment: Create languages table
CREATE TABLE IF NOT EXISTS content_service.languages (
                                                         id BIGSERIAL PRIMARY KEY,
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
                                                                         REFERENCES content_service.languages(id) ON DELETE CASCADE,
                                                                     CONSTRAINT uk_language_translation UNIQUE (language_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_language_translations_locale ON content_service.language_translations(locale);
CREATE INDEX IF NOT EXISTS idx_language_translations_language_id ON content_service.language_translations(language_id);

--changeset author:12 runOnChange:false
--comment: Create video_qualities table (справочник)
CREATE TABLE IF NOT EXISTS content_service.video_qualities (
                                                               id BIGSERIAL PRIMARY KEY,
                                                               code VARCHAR(20) NOT NULL UNIQUE, -- '4K', '1080p', '720p', 'SD'
                                                               name VARCHAR(50) NOT NULL, -- "Full HD 1080p", "4K Ultra HD"
                                                               width INTEGER, -- 1920
                                                               height INTEGER, -- 1080
                                                               display_order INTEGER DEFAULT 0,
                                                               created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_video_qualities_code ON content_service.video_qualities(code);

-- ============================================
-- ОСНОВНЫЕ СУЩНОСТИ (CORE ENTITIES)
-- ============================================

--changeset author:13 runOnChange:false
--comment: Create movies table
CREATE TABLE IF NOT EXISTS content_service.movies (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      original_title VARCHAR(255) NOT NULL,
                                                      release_date DATE NOT NULL,
                                                      duration INTEGER, -- в секундах
                                                      rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10), -- средний рейтинг
                                                      imdb_rating DECIMAL(3,2) CHECK (imdb_rating >= 0 AND imdb_rating <= 10),
                                                      kinopoisk_rating DECIMAL(3,2) CHECK (kinopoisk_rating >= 0 AND kinopoisk_rating <= 10),
                                                      votes_count INTEGER DEFAULT 0,
                                                      country_id BIGINT NOT NULL,
                                                      budget BIGINT, -- в центах
                                                      box_office BIGINT, -- в центах
                                                      movie_status VARCHAR(20) DEFAULT 'Released', -- 'Announced', 'Production', 'Released'
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      deleted_at TIMESTAMPTZ, -- soft delete
                                                      CONSTRAINT fk_movie_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id)
);
CREATE INDEX IF NOT EXISTS idx_movies_original_title ON content_service.movies(original_title) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON content_service.movies(release_date) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_rating ON content_service.movies(rating DESC) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_movies_country_id ON content_service.movies(country_id);
CREATE INDEX IF NOT EXISTS idx_movies_status ON content_service.movies(movie_status) WHERE deleted_at IS NULL;

--changeset author:14 runOnChange:false
--comment: Create movie_localizations table
CREATE TABLE IF NOT EXISTS content_service.movie_localizations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   movie_id BIGINT NOT NULL,
                                                                   locale VARCHAR(5) NOT NULL,
                                                                   title VARCHAR(255) NOT NULL,
                                                                   description TEXT,
                                                                   plot_summary TEXT,
                                                                   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                   updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                                   CONSTRAINT fk_movie_localization_movie FOREIGN KEY (movie_id)
                                                                       REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                                   CONSTRAINT uk_movie_localization UNIQUE (movie_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_locale ON content_service.movie_localizations(locale);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_movie_id ON content_service.movie_localizations(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_title ON content_service.movie_localizations(title);

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
                                                                       REFERENCES content_service.persons(id) ON DELETE CASCADE,
                                                                   UNIQUE (person_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_person_translations_locale ON content_service.person_translations(locale);
CREATE INDEX IF NOT EXISTS idx_person_translations_person_id ON content_service.person_translations(person_id);

-- ============================================
-- СВЯЗИ (RELATIONSHIPS)
-- ============================================

--changeset author:17 runOnChange:false
--comment: Create movie_persons table
CREATE TABLE IF NOT EXISTS content_service.movie_persons (
                                                             id BIGSERIAL PRIMARY KEY,
                                                             movie_id BIGINT NOT NULL,
                                                             person_id BIGINT NOT NULL,
                                                             career_id BIGINT NOT NULL,
                                                             character_name VARCHAR(255), -- имя персонажа (для актеров)
                                                             display_order_in_movie INTEGER DEFAULT 0, -- порядок на странице фильма
                                                             display_order_in_career INTEGER DEFAULT 0, -- порядок на странице актера
                                                             created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                             updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                             CONSTRAINT fk_movie_person_movie FOREIGN KEY (movie_id)
                                                                 REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                             CONSTRAINT fk_movie_person_person FOREIGN KEY (person_id)
                                                                 REFERENCES content_service.persons(id) ON DELETE CASCADE,
                                                             CONSTRAINT fk_movie_person_career FOREIGN KEY (career_id)
                                                                 REFERENCES content_service.careers(id),
                                                             CONSTRAINT uk_movie_person UNIQUE (movie_id, person_id, career_id)
);
CREATE INDEX IF NOT EXISTS idx_movie_persons_movie_id ON content_service.movie_persons(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_person_id ON content_service.movie_persons(person_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_career_id ON content_service.movie_persons(career_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_movie_order ON content_service.movie_persons(movie_id, display_order_in_movie);
CREATE INDEX IF NOT EXISTS idx_movie_persons_career_order ON content_service.movie_persons(person_id, display_order_in_career);

--changeset author:18 runOnChange:false
--comment: Create movie_genres table
CREATE TABLE IF NOT EXISTS content_service.movie_genres (
                                                            movie_id BIGINT NOT NULL,
                                                            genre_id BIGINT NOT NULL,
                                                            PRIMARY KEY (movie_id, genre_id),
                                                            CONSTRAINT fk_movie_genre_movie FOREIGN KEY (movie_id)
                                                                REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                            CONSTRAINT fk_movie_genre_genre FOREIGN KEY (genre_id)
                                                                REFERENCES content_service.genres(id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_movie_genres_genre_id ON content_service.movie_genres(genre_id);

--changeset author:19 runOnChange:false
--comment: Create person_genres table
CREATE TABLE IF NOT EXISTS content_service.person_genres (
                                                             person_id BIGINT NOT NULL,
                                                             genre_id BIGINT NOT NULL,
                                                             PRIMARY KEY (person_id, genre_id),
                                                             CONSTRAINT fk_person_genre_person FOREIGN KEY (person_id)
                                                                 REFERENCES content_service.persons(id) ON DELETE CASCADE,
                                                             CONSTRAINT fk_person_genre_genre FOREIGN KEY (genre_id)
                                                                 REFERENCES content_service.genres(id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_person_genres_genre_id ON content_service.person_genres(genre_id);

--changeset author:20 runOnChange:false
--comment: Create person_careers table
CREATE TABLE IF NOT EXISTS content_service.person_careers (
                                                              person_id BIGINT NOT NULL,
                                                              career_id BIGINT NOT NULL,
                                                              PRIMARY KEY (person_id, career_id),
                                                              CONSTRAINT fk_person_career_person FOREIGN KEY (person_id)
                                                                  REFERENCES content_service.persons(id) ON DELETE CASCADE,
                                                              CONSTRAINT fk_person_career_career FOREIGN KEY (career_id)
                                                                  REFERENCES content_service.careers(id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_person_careers_career_id ON content_service.person_careers(career_id);

-- ============================================
-- ВИДЕО-ФАЙЛЫ И КАЧЕСТВО
-- ============================================

--changeset author:21 runOnChange:false
--comment: Create movie_video_files table
CREATE TABLE IF NOT EXISTS content_service.movie_video_files (
                                                                 id BIGSERIAL PRIMARY KEY,
                                                                 movie_id BIGINT NOT NULL,
                                                                 manifest_url TEXT NOT NULL, -- URL манифеста (HLS/DASH)
                                                                 duration_seconds INTEGER,
                                                                 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                 updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                 CONSTRAINT fk_movie_video_files_movie FOREIGN KEY (movie_id)
                                                                     REFERENCES content_service.movies(id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_movie_video_files_movie_id ON content_service.movie_video_files(movie_id);

--changeset author:22 runOnChange:false
--comment: Create movie_video_qualities table (связь видео-файлов с качеством)
CREATE TABLE IF NOT EXISTS content_service.movie_video_qualities (
                                                                     video_id BIGINT NOT NULL,
                                                                     quality_id BIGINT NOT NULL,
                                                                     PRIMARY KEY (video_id, quality_id),
                                                                     CONSTRAINT fk_video_quality_video FOREIGN KEY (video_id)
                                                                         REFERENCES content_service.movie_video_files(id) ON DELETE CASCADE,
                                                                     CONSTRAINT fk_video_quality_quality FOREIGN KEY (quality_id)
                                                                         REFERENCES content_service.video_qualities(id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_movie_video_qualities_quality_id ON content_service.movie_video_qualities(quality_id);

-- ============================================
-- ОЗВУЧКА (АУДИОДОРОЖКИ)
-- ============================================

--changeset author:23 runOnChange:false
--comment: Create movie_audio_tracks table
CREATE TABLE IF NOT EXISTS content_service.movie_audio_tracks (
                                                                  id BIGSERIAL PRIMARY KEY,
                                                                  movie_id BIGINT NOT NULL,
                                                                  language_id BIGINT NOT NULL, -- язык озвучки
                                                                  studio_name VARCHAR(255) NOT NULL, -- "Кинопоиск", "LostFilm", "Original"
                                                                  track_type VARCHAR(50), -- 'original', 'dubbing', 'multi_voice', 'single_voice'
                                                                  display_order INTEGER DEFAULT 0,
                                                                  is_default BOOLEAN DEFAULT FALSE,
                                                                  is_original BOOLEAN DEFAULT FALSE,
                                                                  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                                  updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                                  CONSTRAINT fk_audio_track_movie FOREIGN KEY (movie_id)
                                                                      REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                                  CONSTRAINT fk_audio_track_language FOREIGN KEY (language_id)
                                                                      REFERENCES content_service.languages(id)
);
CREATE INDEX IF NOT EXISTS idx_audio_tracks_movie_id ON content_service.movie_audio_tracks(movie_id);
CREATE INDEX IF NOT EXISTS idx_audio_tracks_language_id ON content_service.movie_audio_tracks(language_id);
CREATE INDEX IF NOT EXISTS idx_audio_tracks_movie_lang ON content_service.movie_audio_tracks(movie_id, language_id);
CREATE UNIQUE INDEX IF NOT EXISTS uk_audio_track ON content_service.movie_audio_tracks(movie_id, language_id, studio_name);

-- ============================================
-- СУБТИТРЫ
-- ============================================

--changeset author:24 runOnChange:false
--comment: Create movie_subtitles table
CREATE TABLE IF NOT EXISTS content_service.movie_subtitles (
                                                               id BIGSERIAL PRIMARY KEY,
                                                               movie_id BIGINT NOT NULL,
                                                               language_id BIGINT NOT NULL, -- язык субтитров
                                                               author_name VARCHAR(255) NOT NULL, -- "Netflix", "OpenSubtitles"
                                                               subtitle_type VARCHAR(50), -- 'regular', 'sdh', 'forced'
                                                               url TEXT NOT NULL, -- URL файла субтитров
                                                               format VARCHAR(10) NOT NULL DEFAULT 'vtt', -- 'vtt', 'srt', 'ass'
                                                               display_order INTEGER DEFAULT 0,
                                                               is_default BOOLEAN DEFAULT FALSE,
                                                               created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                               updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                               CONSTRAINT fk_subtitle_movie FOREIGN KEY (movie_id)
                                                                   REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                               CONSTRAINT fk_subtitle_language FOREIGN KEY (language_id)
                                                                   REFERENCES content_service.languages(id)
);
CREATE INDEX IF NOT EXISTS idx_subtitles_movie_id ON content_service.movie_subtitles(movie_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_language_id ON content_service.movie_subtitles(language_id);
CREATE INDEX IF NOT EXISTS idx_subtitles_movie_lang ON content_service.movie_subtitles(movie_id, language_id);
CREATE UNIQUE INDEX IF NOT EXISTS uk_subtitle ON content_service.movie_subtitles(movie_id, language_id, author_name);