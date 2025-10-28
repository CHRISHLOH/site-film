--liquibase formatted sql

--changeset author:1 runOnChange:false
--comment: Create schema if not exists
CREATE SCHEMA IF NOT EXISTS content_service;

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
                                                                    CONSTRAINT fk_country_translation_country FOREIGN KEY (country_id) REFERENCES content_service.countries(id),
                                                                    CONSTRAINT uk_country_translation UNIQUE (country_id, locale)
);

--changeset author:4 runOnChange:false
--comment: Create cities table
CREATE TABLE IF NOT EXISTS content_service.cities (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      code VARCHAR(100) NOT NULL UNIQUE,
                                                      country_id BIGINT,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      CONSTRAINT fk_city_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id)
);
CREATE INDEX IF NOT EXISTS idx_cities_country_id ON content_service.cities(country_id);
CREATE INDEX IF NOT EXISTS idx_cities_code ON content_service.cities(code);

--changeset author:5 runOnChange:false
--comment: Create city_translations table
--changeset author:5 runOnChange:false
CREATE TABLE IF NOT EXISTS content_service.city_translations (
                                                                 id BIGSERIAL PRIMARY KEY,
                                                                 city_id BIGINT NOT NULL,
                                                                 locale VARCHAR(5) NOT NULL,
                                                                 name VARCHAR(100) NOT NULL,
                                                                 CONSTRAINT fk_city_translation_city FOREIGN KEY (city_id)
                                                                     REFERENCES content_service.cities(id),
                                                                 CONSTRAINT uk_city_translation UNIQUE (city_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_city_translations_locale ON content_service.city_translations(locale);

CREATE TABLE IF NOT EXISTS content_service.genres (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      genre VARCHAR(50) NOT NULL UNIQUE,
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_genres_slug ON content_service.genres(genre);


--changeset author:7 runOnChange:false
--comment: Create genre_translations table
CREATE TABLE IF NOT EXISTS content_service.genre_translations (
                                                                  id BIGSERIAL PRIMARY KEY,
                                                                  genre_id BIGINT NOT NULL,
                                                                  locale VARCHAR(5) NOT NULL,
                                                                  name VARCHAR(50) NOT NULL,
                                                                  CONSTRAINT fk_genre_translation_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id),
                                                                  CONSTRAINT uk_genre_translation UNIQUE (genre_id, locale)
);

--changeset author:8 runOnChange:false
--comment: Create careers table
CREATE TABLE IF NOT EXISTS content_service.careers (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       career VARCHAR(255) NOT NULL UNIQUE,
                                                       display_order INTEGER DEFAULT 0,
                                                       created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                       updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_careers ON content_service.careers(career);

--changeset author:9 runOnChange:false
--comment: Create career_translations table
CREATE TABLE IF NOT EXISTS content_service.career_translations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   career_id BIGINT NOT NULL,
                                                                   locale VARCHAR(5) NOT NULL,
                                                                   name VARCHAR(255) NOT NULL,
                                                                   CONSTRAINT fk_career_translation_career FOREIGN KEY (career_id) REFERENCES content_service.careers(id),
                                                                   CONSTRAINT uk_career_translation UNIQUE (career_id, locale)
);
CREATE INDEX IF NOT EXISTS idx_career_translations_locale ON content_service.career_translations(locale);


CREATE TABLE IF NOT EXISTS content_service.language (
                                                              id BIGSERIAL PRIMARY KEY,
                                                              code VARCHAR(10) NOT NULL UNIQUE,
                                                              native_name VARCHAR(50)

);

CREATE TABLE IF NOT EXISTS content_service.language_translations (
                                                                     id BIGSERIAL PRIMARY KEY,
                                                                     language_id BIGINT NOT NULL,
                                                                     locale VARCHAR(5) NOT NULL,
                                                                     name VARCHAR(255) NOT NULL,
                                                                     CONSTRAINT fk_language_translation_language FOREIGN KEY (language_id) REFERENCES content_service.language(id),
                                                                     CONSTRAINT uk_language_translation UNIQUE (language_id, locale)
);

CREATE TABLE IF NOT EXISTS content_service.voice_acting
(
    id          BIGSERIAL PRIMARY KEY,
    language_id BIGINT       NOT NULL,
    name        VARCHAR(100) NOT NULL,
    created_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMPTZ           DEFAULT NOW(),
    CONSTRAINT fk_voice_acting_language FOREIGN KEY (language_id) REFERENCES content_service.language (id)
);

CREATE TABLE content_service.subtitle_files (
                                                id BIGSERIAL PRIMARY KEY,
                                                movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
                                                language_id BIGINT NOT NULL,
                                                url TEXT NOT NULL,
                                                format VARCHAR(10) NOT NULL DEFAULT 'vtt',
                                                created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                                                updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                                                CONSTRAINT fk_subtitle_files_language FOREIGN KEY (language_id) REFERENCES content_service.language(id)
);


CREATE TABLE IF NOT EXISTS content_service.video_quality (
                                                             id BIGINT PRIMARY KEY,
                                                             movie_quality VARCHAR(255),
                                                             display_order INTEGER DEFAULT 0
);

-- видео-версии / файлы
CREATE TABLE content_service.movie_video_files (
                                             id BIGSERIAL PRIMARY KEY,
                                             movie_id BIGINT NOT NULL,
                                             manifest_url TEXT NOT NULL,
                                             duration_seconds INT,
                                             created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                                             updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                                             CONSTRAINT fk_movie_video_files_movies FOREIGN KEY (movie_id) REFERENCES content_service.movies(id)
);


CREATE TABLE IF NOT EXISTS content_service.movies (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      original_title VARCHAR(255) NOT NULL,
                                                      release_date DATE NOT NULL,
                                                      duration INTEGER, -- в секундах
                                                      rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10),
                                                      imdb_rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10),
                                                      konopoisk_rating DECIMAL(3,2) CHECK (rating >= 0 AND rating <= 10),
                                                      votes_count INTEGER DEFAULT 0,
                                                      country_id BIGINT NOT NULL,
                                                      budget BIGINT,
                                                      box_office BIGINT,
                                                      movie_status VARCHAR(20) DEFAULT 'Released',
                                                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                      updated_at TIMESTAMPTZ DEFAULT NOW(),
                                                      CONSTRAINT fk_movie_country FOREIGN KEY (country_id)
                                                          REFERENCES content_service.countries(id)

);
CREATE INDEX IF NOT EXISTS idx_original_title ON content_service.movies(original_title);
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON content_service.movies(release_date);
CREATE INDEX IF NOT EXISTS idx_movies_rating ON content_service.movies(rating DESC);
CREATE INDEX IF NOT EXISTS idx_movies_country_id ON content_service.movies(country_id);
CREATE INDEX IF NOT EXISTS idx_movies_status ON content_service.movies(movie_status);


CREATE TABLE IF NOT EXISTS content_service.movie_localizations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   movie_id BIGINT NOT NULL,
                                                                   locale VARCHAR(5) NOT NULL,
                                                                   title VARCHAR(255) NOT NULL,
                                                                   description TEXT,
                                                                   plot_summary TEXT,
                                                                   created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                                   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                                   CONSTRAINT fk_movie_localization_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id)
);

--changeset author:16 runOnChange:false
--comment: Create persons table
CREATE TABLE IF NOT EXISTS content_service.persons (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       original_name VARCHAR(100) NOT NULL,
                                                       original_lastname VARCHAR(100),
                                                       birth_date DATE,
                                                       death_date DATE,
                                                       gender VARCHAR(10),
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

CREATE TABLE IF NOT EXISTS content_service.person_translations (
                                                                   id BIGSERIAL PRIMARY KEY,
                                                                   person_id BIGINT NOT NULL REFERENCES content_service.persons(id),
                                                                   locale VARCHAR(10) NOT NULL,
                                                                   locale_name VARCHAR(50),
                                                                   locale_lastname VARCHAR(50),
                                                                   biography TEXT,
                                                                   created_at timestamptz DEFAULT now() NOT NULL,
                                                                   updated_at timestamptz,
                                                                   UNIQUE (person_id, locale)
);



CREATE TABLE IF NOT EXISTS content_service.movie_persons (
                                                             id BIGSERIAL PRIMARY KEY,
                                                             movie_id BIGINT NOT NULL,
                                                             person_id BIGINT NOT NULL,
                                                             career_id BIGINT NOT NULL,
                                                             character_name VARCHAR(255),
                                                             display_order_person_in_movie INTEGER NOT NULL,
                                                             display_order_movie_in_career INTEGER NOT NULL,
                                                             CONSTRAINT fk_movie_person_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                             CONSTRAINT fk_movie_person_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                             CONSTRAINT fk_movie_person_career FOREIGN KEY (career_id) REFERENCES content_service.careers(id),
                                                             created_at timestamptz DEFAULT now() NOT NULL,
                                                             updated_at timestamptz DEFAULT now() NOT NULL
);


CREATE TABLE IF NOT EXISTS content_service.movie_genres (
                                                            movie_id BIGINT NOT NULL,
                                                            genre_id BIGINT NOT NULL,
                                                            PRIMARY KEY (movie_id, genre_id),
                                                            CONSTRAINT fk_movie_genre_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                            CONSTRAINT fk_movie_genre_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id)
);



CREATE TABLE IF NOT EXISTS content_service.video_quality (
                                                             video_id BIGINT NOT NULL,
                                                             quality_id BIGINT NOT NULL,
                                                             PRIMARY KEY (video_id, quality_id),
                                                             CONSTRAINT fk_movie_quality_movie_video_files FOREIGN KEY (video_id) REFERENCES content_service.movie_video_files(id),
                                                             CONSTRAINT fk_movie_quality_quality FOREIGN KEY (quality_id) REFERENCES content_service.video_quality(id)
);

CREATE TABLE IF NOT EXISTS content_service.movie_voice_acting (
    movie_id BIGINT NOT NULL,
    voice_acting_id BIGINT NOT NULL,
    PRIMARY KEY (movie_id, voice_acting_id),
    CONSTRAINT fk_movie_audio_cast_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
    CONSTRAINT fk_movie_audio_cast_audio_cast FOREIGN KEY (voice_acting_id) REFERENCES content_service.voice_acting(id)
);

CREATE TABLE IF NOT EXISTS content_service.person_genres (
                                                             person_id BIGINT NOT NULL,
                                                             genre_id BIGINT NOT NULL,
                                                             PRIMARY KEY (person_id, genre_id),
                                                             CONSTRAINT fk_person_genre_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                             CONSTRAINT fk_person_genre_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id)
);


CREATE TABLE IF NOT EXISTS content_service.person_careers (
                                                              person_id BIGINT NOT NULL,
                                                              career_id BIGINT NOT NULL,
                                                              PRIMARY KEY (person_id, career_id),
                                                              CONSTRAINT fk_person_career_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                              CONSTRAINT fk_person_career_career FOREIGN KEY (career_id) REFERENCES content_service.careers(id)
);