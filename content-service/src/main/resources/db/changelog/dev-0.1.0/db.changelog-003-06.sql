--changeset seed:movie_audio_tracks runAlways:true
--comment: Заполнение movie_audio_tracks случайными озвучками (2–4 на фильм)
DO $$
    DECLARE
        movie RECORD;
        selected_tracks BIGINT[];
    BEGIN
        FOR movie IN SELECT id FROM content_service.movies LOOP
                -- выбираем случайно от 2 до 4 аудиодорожек
                SELECT ARRAY(
                               SELECT id
                               FROM content_service.audio_tracks
                               ORDER BY RANDOM()
                               LIMIT (2 + floor(random() * 3)::INT)
                       )
                INTO selected_tracks;

                -- вставляем связи с фильмом
                INSERT INTO content_service.movie_audio_tracks (movie_id, audio_track_id)
                SELECT movie.id, tid
                FROM unnest(selected_tracks) AS tid
                ON CONFLICT (movie_id, audio_track_id) DO NOTHING;
            END LOOP;
    END $$;

