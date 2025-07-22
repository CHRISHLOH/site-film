CREATE TABLE user_service.user_profile (
                              user_id       INT PRIMARY KEY
                                  REFERENCES user_service.users(id),
                              username      VARCHAR(50) UNIQUE NOT NULL,
                              first_name    VARCHAR(50),
                              last_name     VARCHAR(50),
                              birth_date    DATE,
                              gender        VARCHAR(10),
                              avatar_url    TEXT,
                              bio           TEXT,
                              created_at    TIMESTAMP NOT NULL DEFAULT NOW(),
                              updated_at    TIMESTAMP
);

CREATE TABLE user_service.comment (
                         id          SERIAL PRIMARY KEY,
                         user_id     INT NOT NULL
                             REFERENCES user_service.users(id),
                         movie_id    INT NOT NULL,
                         text        TEXT NOT NULL,
                         created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE user_service.bookmark (
                          user_id    INT NOT NULL
                              REFERENCES user_service.users(id),
                          movie_id   INT NOT NULL,
                          created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                          PRIMARY KEY (user_id)
);

CREATE TABLE user_service.rating (
                        user_id    INT NOT NULL
                            REFERENCES user_service.users(id),
                        movie_id   INT NOT NULL,
                        score      SMALLINT NOT NULL CHECK (score BETWEEN 1 AND 10),
                        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                        PRIMARY KEY (user_id)
);