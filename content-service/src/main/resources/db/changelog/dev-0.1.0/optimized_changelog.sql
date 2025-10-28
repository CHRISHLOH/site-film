--liquibase formatted sql
--changeset galion:001 runOnChange:false
--comment: Create schema
CREATE SCHEMA IF NOT EXISTS content_service;

--changeset galion:002 runOnChange:false
--comment: Locales table (centralized list of supported locales)
CREATE TABLE IF NOT EXISTS content_service.locales (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,            -- e.g. en_US, ru_RU
    language_code VARCHAR(5) NOT NULL,           -- e.g. en, ru
    country_code VARCHAR(2),                     -- e.g. US, RU
    name VARCHAR(100),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:003 runOnChange:false
--comment: Countries (ISO-3166 alpha-2 codes)
CREATE TABLE IF NOT EXISTS content_service.countries (
    id BIGSERIAL PRIMARY KEY,
    iso_code CHAR(2) NOT NULL UNIQUE,            -- e.g. US, RU
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:004 runOnChange:false
--comment: Country translations
CREATE TABLE IF NOT EXISTS content_service.country_translations (
    id BIGSERIAL PRIMARY KEY,
    country_id BIGINT NOT NULL REFERENCES content_service.countries(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    name VARCHAR(200) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_country_translation UNIQUE (country_id, locale_code)
);

--changeset galion:005 runOnChange:false
--comment: Cities
CREATE TABLE IF NOT EXISTS content_service.cities (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(100) NOT NULL UNIQUE,           -- internal code e.g. NYC, LON
    country_id BIGINT REFERENCES content_service.countries(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:006 runOnChange:false
--comment: City translations
CREATE TABLE IF NOT EXISTS content_service.city_translations (
    id BIGSERIAL PRIMARY KEY,
    city_id BIGINT NOT NULL REFERENCES content_service.cities(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    name VARCHAR(200) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_city_translation UNIQUE (city_id, locale_code)
);

--changeset galion:007 runOnChange:false
--comment: Genres (domain codes)
CREATE TABLE IF NOT EXISTS content_service.genres (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,            -- e.g. ACTION, DRAMA
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:008 runOnChange:false
--comment: Genre translations
CREATE TABLE IF NOT EXISTS content_service.genre_translations (
    id BIGSERIAL PRIMARY KEY,
    genre_id BIGINT NOT NULL REFERENCES content_service.genres(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    name VARCHAR(200) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_genre_translation UNIQUE (genre_id, locale_code)
);

--changeset galion:009 runOnChange:false
--comment: Careers (roles like ACTOR, DIRECTOR)
CREATE TABLE IF NOT EXISTS content_service.careers (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,            -- e.g. ACTOR, DIRECTOR
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:010 runOnChange:false
--comment: Career translations
CREATE TABLE IF NOT EXISTS content_service.career_translations (
    id BIGSERIAL PRIMARY KEY,
    career_id BIGINT NOT NULL REFERENCES content_service.careers(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_career_translation UNIQUE (career_id, locale_code)
);

--changeset galion:011 runOnChange:false
--comment: Audio languages (language codes for dubbing/subs)
CREATE TABLE IF NOT EXISTS content_service.audio_language (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,            -- ISO-639-1 e.g. en, ru
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:012 runOnChange:false
--comment: Language translations (names of languages per locale)
CREATE TABLE IF NOT EXISTS content_service.language_translations (
    id BIGSERIAL PRIMARY KEY,
    language_id BIGINT NOT NULL REFERENCES content_service.audio_language(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_language_translation UNIQUE (language_id, locale_code)
);

--changeset galion:013 runOnChange:false
--comment: Video quality lookup table
CREATE TABLE IF NOT EXISTS content_service.video_quality (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE,            -- e.g. SD, HD, 1080p, 4K
    name VARCHAR(100),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:014 runOnChange:false
--comment: Movies core table
CREATE TABLE IF NOT EXISTS content_service.movies (
    id BIGSERIAL PRIMARY KEY,
    original_title VARCHAR(255),
    slug VARCHAR(255) UNIQUE,                    -- SEO-friendly URL slug
    release_date DATE NOT NULL,
    duration_seconds INT,                        -- integer seconds
    rating DECIMAL(3,1),
    country_id BIGINT REFERENCES content_service.countries(id) ON DELETE SET NULL,
    imdb_id VARCHAR(32) UNIQUE,
    budget BIGINT,
    revenue BIGINT,
    age_rating VARCHAR(10),
    status VARCHAR(20) NOT NULL DEFAULT 'DRAFT', -- DRAFT, PUBLISHED, ARCHIVED
    poster_url TEXT,
    trailer_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:015 runOnChange:false
--comment: Movie localizations (localized title, descriptions, plot)
CREATE TABLE IF NOT EXISTS content_service.movie_localizations (
    id BIGSERIAL PRIMARY KEY,
    movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    plot_summary TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_movie_locale UNIQUE (movie_id, locale_code)
);

--changeset galion:016 runOnChange:false
--comment: Persons (actors, directors, etc.)
CREATE TABLE IF NOT EXISTS content_service.persons (
    id BIGSERIAL PRIMARY KEY,
    original_name VARCHAR(100),
    original_lastname VARCHAR(100),
    birth_date DATE,
    death_date DATE,
    gender VARCHAR(20),
    country_id BIGINT REFERENCES content_service.countries(id) ON DELETE SET NULL,
    city_id BIGINT REFERENCES content_service.cities(id) ON DELETE SET NULL,
    image_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

--changeset galion:017 runOnChange:false
--comment: Person translations / bios
CREATE TABLE IF NOT EXISTS content_service.person_translations (
    id BIGSERIAL PRIMARY KEY,
    person_id BIGINT NOT NULL REFERENCES content_service.persons(id) ON DELETE CASCADE,
    locale_code VARCHAR(10) NOT NULL REFERENCES content_service.locales(code),
    given_name VARCHAR(100),
    family_name VARCHAR(100),
    biography TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_person_translation UNIQUE (person_id, locale_code)
);

--changeset galion:018 runOnChange:false
--comment: Movie-person relation (who did what)
CREATE TABLE IF NOT EXISTS content_service.movie_persons (
    id BIGSERIAL PRIMARY KEY,
    movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
    person_id BIGINT NOT NULL REFERENCES content_service.persons(id) ON DELETE CASCADE,
    career_id BIGINT NOT NULL REFERENCES content_service.careers(id) ON DELETE RESTRICT,
    person_order INT DEFAULT 0,    -- ordering for credits
    role_name VARCHAR(255),        -- e.g. character name
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uk_movie_person UNIQUE (movie_id, person_id, career_id)
);

--changeset galion:019 runOnChange:false
--comment: Movie genres join table
CREATE TABLE IF NOT EXISTS content_service.movie_genres (
    movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
    genre_id BIGINT NOT NULL REFERENCES content_service.genres(id) ON DELETE RESTRICT,
    PRIMARY KEY (movie_id, genre_id)
);

--changeset galion:020 runOnChange:false
--comment: Movie audio languages (dubbing/subs)
CREATE TABLE IF NOT EXISTS content_service.movie_audio (
    movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
    audio_id BIGINT NOT NULL REFERENCES content_service.audio_language(id) ON DELETE RESTRICT,
    PRIMARY KEY (movie_id, audio_id)
);

--changeset galion:021 runOnChange:false
--comment: Movie quality mapping
CREATE TABLE IF NOT EXISTS content_service.movie_quality (
    movie_id BIGINT NOT NULL REFERENCES content_service.movies(id) ON DELETE CASCADE,
    quality_id BIGINT NOT NULL REFERENCES content_service.video_quality(id) ON DELETE RESTRICT,
    PRIMARY KEY (movie_id, quality_id)
);

--changeset galion:022 runOnChange:false
--comment: Person genres (for actor's genre association)
CREATE TABLE IF NOT EXISTS content_service.person_genres (
    person_id BIGINT NOT NULL REFERENCES content_service.persons(id) ON DELETE CASCADE,
    genre_id BIGINT NOT NULL REFERENCES content_service.genres(id) ON DELETE RESTRICT,
    PRIMARY KEY (person_id, genre_id)
);

--changeset galion:023 runOnChange:false
--comment: Person careers (person -> career set)
CREATE TABLE IF NOT EXISTS content_service.person_careers (
    person_id BIGINT NOT NULL REFERENCES content_service.persons(id) ON DELETE CASCADE,
    career_id BIGINT NOT NULL REFERENCES content_service.careers(id) ON DELETE RESTRICT,
    PRIMARY KEY (person_id, career_id)
);

--changeset galion:024 runOnChange:false
--comment: Useful indexes for queries
CREATE INDEX IF NOT EXISTS idx_movies_country_id ON content_service.movies(country_id);
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON content_service.movies(release_date);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_locale ON content_service.movie_localizations(locale_code);
CREATE INDEX IF NOT EXISTS idx_persons_country_id ON content_service.persons(country_id);
CREATE INDEX IF NOT EXISTS idx_person_translations_locale ON content_service.person_translations(locale_code);

--changeset galion:025 runOnChange:false
--comment: Seed locales (common ones)
INSERT INTO content_service.locales (code, language_code, country_code, name)
VALUES
  ('en_US','en','US','English (US)'),
  ('ru_RU','ru','RU','Русский (RU)'),
  ('es_ES','es','ES','Español (ES)'),
  ('fr_FR','fr','FR','Français (FR)')
ON CONFLICT (code) DO NOTHING;

--changeset galion:026 runOnChange:false
--comment: Seed audio languages
INSERT INTO content_service.audio_language (code)
VALUES ('en'),('ru'),('es'),('fr'),('de'),('ja'),('zh'),('ko'),('pt'),('it'),('hi'),('ar'),('tr')
ON CONFLICT (code) DO NOTHING;

--changeset galion:027 runOnChange:false
--comment: Seed language translations (compact insert)
INSERT INTO content_service.language_translations (language_id, locale_code, name)
SELECT a.id, t.locale_code, t.name FROM content_service.audio_language a
JOIN (VALUES
  ('en','en_US','English'),
  ('en','ru_RU','Английский'),
  ('ru','en_US','Russian'),
  ('ru','ru_RU','Русский'),
  ('es','en_US','Spanish'),
  ('es','ru_RU','Испанский'),
  ('fr','en_US','French'),
  ('fr','ru_RU','Французский')
) AS t(code, locale_code, name) ON a.code = t.code
ON CONFLICT (language_id, locale_code) DO NOTHING;

--changeset galion:028 runOnChange:false
--comment: Seed video qualities
INSERT INTO content_service.video_quality (code, name)
VALUES ('SD','Standard Definition'),('HD','High Definition'),('1080p','Full HD'),('4K','Ultra HD')
ON CONFLICT (code) DO NOTHING;

--changeset galion:029 runOnChange:false
--comment: Ensure constraints names and final cleanup (optional safe operations)
ALTER TABLE IF EXISTS content_service.cities ADD CONSTRAINT IF NOT EXISTS uk_city_code UNIQUE (code);

--changeset galion:030 runOnChange:false
--comment: Grant basic privileges to schema (optional)
-- GRANT USAGE ON SCHEMA content_service TO your_app_role;
-- GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA content_service TO your_app_role;

-- End of optimized changelog
