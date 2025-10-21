--changeset author:23 runOnChange:false
--comment: Create indexes for foreign keys
CREATE INDEX IF NOT EXISTS idx_country_translations_country_id ON content_service.country_translations(country_id);
CREATE INDEX IF NOT EXISTS idx_city_country_id ON content_service.cities(country_id);
CREATE INDEX IF NOT EXISTS idx_city_translations_city_id ON content_service.city_translations(city_id);
CREATE INDEX IF NOT EXISTS idx_genre_translations_genre_id ON content_service.genre_translations(genre_id);
CREATE INDEX IF NOT EXISTS idx_career_translations_career_id ON content_service.career_translations(career_id);
CREATE INDEX IF NOT EXISTS idx_language_translations_language_id ON content_service.language_translations(language_id);
CREATE INDEX IF NOT EXISTS idx_movies_country_id ON content_service.movies(country_id);
CREATE INDEX IF NOT EXISTS idx_movie_localizations_movie_id ON content_service.movie_localizations(movie_id);
CREATE INDEX IF NOT EXISTS idx_persons_country_id ON content_service.persons(country_id);
CREATE INDEX IF NOT EXISTS idx_persons_city_id ON content_service.persons(city_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_movie_id ON content_service.movie_persons(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_person_id ON content_service.movie_persons(person_id);
CREATE INDEX IF NOT EXISTS idx_movie_persons_career_id ON content_service.movie_persons(career_id);

--changeset author:24 runOnChange:false
--comment: Create indexes for join tables
CREATE INDEX IF NOT EXISTS idx_movie_genres_movie_id ON content_service.movie_genres(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_genres_genre_id ON content_service.movie_genres(genre_id);
CREATE INDEX IF NOT EXISTS idx_movie_audio_movie_id ON content_service.movie_audio(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_audio_audio_id ON content_service.movie_audio(audio_id);
CREATE INDEX IF NOT EXISTS idx_movie_quality_movie_id ON content_service.movie_quality(movie_id);
CREATE INDEX IF NOT EXISTS idx_movie_quality_quality_id ON content_service.movie_quality(quality_id);
CREATE INDEX IF NOT EXISTS idx_person_genres_person_id ON content_service.person_genres(person_id);
CREATE INDEX IF NOT EXISTS idx_person_genres_genre_id ON content_service.person_genres(genre_id);
CREATE INDEX IF NOT EXISTS idx_person_careers_person_id ON content_service.person_careers(person_id);
CREATE INDEX IF NOT EXISTS idx_person_careers_career_id ON content_service.person_careers(career_id);