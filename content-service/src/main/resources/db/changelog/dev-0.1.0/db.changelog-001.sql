--liquibase formatted sql

--changeset author:1 runOnChange:false
--comment: Create schema if not exists
CREATE SCHEMA IF NOT EXISTS content_service;

--changeset author:2 runOnChange:false
--comment: Create countries table
CREATE TABLE IF NOT EXISTS content_service.countries (
                                                         id BIGSERIAL PRIMARY KEY,
                                                         iso_code VARCHAR(2) NOT NULL UNIQUE
);

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
                                                      CONSTRAINT fk_city_country FOREIGN KEY (country_id) REFERENCES content_service.countries(id)
);

--changeset author:5 runOnChange:false
--comment: Create city_translations table
CREATE TABLE IF NOT EXISTS content_service.city_translations (
                                                                 id BIGSERIAL PRIMARY KEY,
                                                                 city_id BIGINT NOT NULL,
                                                                 locale VARCHAR(5) NOT NULL,
                                                                 name VARCHAR(100) NOT NULL,
                                                                 CONSTRAINT fk_city_translation_city FOREIGN KEY (city_id) REFERENCES content_service.cities(id),
                                                                 CONSTRAINT uk_city_translation UNIQUE (city_id, locale)
);

--changeset author:6 runOnChange:false
--comment: Create genres table
CREATE TABLE IF NOT EXISTS content_service.genres (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      genre VARCHAR(100) NOT NULL UNIQUE
);

--changeset author:7 runOnChange:false
--comment: Create genre_translations table
CREATE TABLE IF NOT EXISTS content_service.genre_translations (
                                                                  id BIGSERIAL PRIMARY KEY,
                                                                  genre_id BIGINT NOT NULL,
                                                                  locale VARCHAR(5) NOT NULL,
                                                                  name VARCHAR(100) NOT NULL,
                                                                  CONSTRAINT fk_genre_translation_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id),
                                                                  CONSTRAINT uk_genre_translation UNIQUE (genre_id, locale)
);

--changeset author:8 runOnChange:false
--comment: Create careers table
CREATE TABLE IF NOT EXISTS content_service.careers (
                                                       id BIGSERIAL PRIMARY KEY,
                                                       career VARCHAR(255) NOT NULL UNIQUE
);

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

--changeset author:10 runOnChange:false
--comment: Create audio_language table
CREATE TABLE IF NOT EXISTS content_service.audio_language (
                                                              id BIGSERIAL PRIMARY KEY,
                                                              code VARCHAR(10) NOT NULL UNIQUE,
                                                              native_name VARCHAR(50)

);

--changeset author:11 runOnChange:false
--comment: Create language_translations table (for MovieAudioLanguageTranslation)
CREATE TABLE IF NOT EXISTS content_service.language_translations (
                                                                     id BIGSERIAL PRIMARY KEY,
                                                                     language_id BIGINT NOT NULL,
                                                                     locale VARCHAR(5) NOT NULL,
                                                                     name VARCHAR(255) NOT NULL,
                                                                     CONSTRAINT fk_language_translation_language FOREIGN KEY (language_id) REFERENCES content_service.audio_language(id),
                                                                     CONSTRAINT uk_language_translation UNIQUE (language_id, locale)
);

--changeset author:12 runOnChange:false
--comment: Create video_quality table
CREATE TABLE IF NOT EXISTS content_service.video_quality (
                                                             id BIGINT PRIMARY KEY,
                                                             movie_quality VARCHAR(255)
);


--changeset author:14 runOnChange:false
--comment: Create movies table
CREATE TABLE IF NOT EXISTS content_service.movies (
                                                      id BIGSERIAL PRIMARY KEY,
                                                      original_title VARCHAR(255),
                                                      release_date DATE NOT NULL,
                                                      duration BIGINT, -- stored as seconds for Duration
                                                      rating DECIMAL(3,1),
                                                      country_id BIGINT NOT NULL,
                                                      created_at DATE NOT NULL DEFAULT CURRENT_DATE,
                                                      updated_at DATE DEFAULT CURRENT_DATE,
                                                      CONSTRAINT fk_movie_country FOREIGN KEY (country_id) REFERENCES content_service.countries(id)
);

--changeset author:15 runOnChange:false
--comment: Create movie_localizations table
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
                                                       birth_date DATE NOT NULL,
                                                       gender VARCHAR(10) NOT NULL,
                                                       country_id BIGINT NOT NULL,
                                                       city_id BIGINT NOT NULL,
                                                       original_name VARCHAR(50),
                                                       original_lastname VARCHAR(50),
                                                       photo_url TEXT,
                                                       CONSTRAINT fk_person_country FOREIGN KEY (country_id) REFERENCES content_service.countries(id),
                                                       CONSTRAINT fk_person_city FOREIGN KEY (city_id) REFERENCES content_service.cities(id)
);

-- translations
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



--changeset author:17 runOnChange:false
--comment: Create movie_persons table
CREATE TABLE IF NOT EXISTS content_service.movie_persons (
                                                             id BIGSERIAL PRIMARY KEY,
                                                             movie_id BIGINT NOT NULL,
                                                             person_id BIGINT NOT NULL,
                                                             career_id BIGINT NOT NULL,
                                                             persons_priority INTEGER NOT NULL,
                                                             movie_priority INTEGER NOT NULL,
                                                             CONSTRAINT fk_movie_person_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                             CONSTRAINT fk_movie_person_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                             CONSTRAINT fk_movie_person_career FOREIGN KEY (career_id) REFERENCES content_service.careers(id)
);

--changeset author:18 runOnChange:false
--comment: Create movie_genres join table
CREATE TABLE IF NOT EXISTS content_service.movie_genres (
                                                            movie_id BIGINT NOT NULL,
                                                            genre_id BIGINT NOT NULL,
                                                            PRIMARY KEY (movie_id, genre_id),
                                                            CONSTRAINT fk_movie_genre_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                            CONSTRAINT fk_movie_genre_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id)
);

--changeset author:19 runOnChange:false
--comment: Create movie_audio join table
CREATE TABLE IF NOT EXISTS content_service.movie_audio (
                                                           movie_id BIGINT NOT NULL,
                                                           audio_id BIGINT NOT NULL,
                                                           PRIMARY KEY (movie_id, audio_id),
                                                           CONSTRAINT fk_movie_audio_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                           CONSTRAINT fk_movie_audio_audio FOREIGN KEY (audio_id) REFERENCES content_service.audio_language(id)
);

--changeset author:20 runOnChange:false
--comment: Create movie_quality join table
CREATE TABLE IF NOT EXISTS content_service.movie_quality (
                                                             movie_id BIGINT NOT NULL,
                                                             quality_id BIGINT NOT NULL,
                                                             PRIMARY KEY (movie_id, quality_id),
                                                             CONSTRAINT fk_movie_quality_movie FOREIGN KEY (movie_id) REFERENCES content_service.movies(id),
                                                             CONSTRAINT fk_movie_quality_quality FOREIGN KEY (quality_id) REFERENCES content_service.video_quality(id)
);

--changeset author:21 runOnChange:false
--comment: Create person_genres join table
CREATE TABLE IF NOT EXISTS content_service.person_genres (
                                                             person_id BIGINT NOT NULL,
                                                             genre_id BIGINT NOT NULL,
                                                             PRIMARY KEY (person_id, genre_id),
                                                             CONSTRAINT fk_person_genre_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                             CONSTRAINT fk_person_genre_genre FOREIGN KEY (genre_id) REFERENCES content_service.genres(id)
);

--changeset author:22 runOnChange:false
--comment: Create person_careers join table
CREATE TABLE IF NOT EXISTS content_service.person_careers (
                                                              person_id BIGINT NOT NULL,
                                                              career_id BIGINT NOT NULL,
                                                              PRIMARY KEY (person_id, career_id),
                                                              CONSTRAINT fk_person_career_person FOREIGN KEY (person_id) REFERENCES content_service.persons(id),
                                                              CONSTRAINT fk_person_career_career FOREIGN KEY (career_id) REFERENCES content_service.careers(id)
);