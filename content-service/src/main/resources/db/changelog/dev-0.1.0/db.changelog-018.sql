-- -- 1. Добавляем столбцы
-- ALTER TABLE content_service.movies
--     ADD COLUMN plot_summary TEXT,
--     ADD COLUMN rating NUMERIC(3,1);
--
-- -- 2. При необходимости: добавляем ограничение на рейтинг (0.0–10.0)
-- ALTER TABLE content_service.movies
--     ADD CONSTRAINT chk_rating_range
--         CHECK (rating >= 0.0 AND rating <= 10.0);


INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Festen', 'At Helge''s 60th birthday party, some unpleasant family truths are revealed.', '1998-01-01', 1, '105 minutes', 'Festen', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Central do Brasil', 'An emotive journey of a former school teacher, who writes letters for illiterate people, and a young boy, whose mother has just died, as they search for the father he never knew.', '1998-01-01', 1, '110 minutes', 'Central do Brasil', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Iron Giant', 'A young boy befriends a giant robot from outer space that a paranoid government agent wants to destroy.', '1999-01-01', 1, '86 minutes', 'The Iron Giant', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Knockin'' on Heaven''s Door', 'Two terminally ill patients escape from a hospital, steal a car and rush towards the sea.', '1997-01-01', 1, '87 minutes', 'Knockin'' on Heaven''s Door', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sling Blade', 'Karl Childers, a simple man hospitalized since his childhood murder of his mother and her lover, is released to start a new life in a small town.', '1996-01-01', 1, '135 minutes', 'Sling Blade', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Secrets & Lies', 'Following the death of her adoptive parents, a successful young black optometrist establishes contact with her biological mother -- a lonely white factory worker living in poverty in East London.', '1996-01-01', 1, '136 minutes', 'Secrets & Lies', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Twelve Monkeys', 'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.', '1995-01-01', 1, '129 minutes', 'Twelve Monkeys', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kôkaku Kidôtai', 'A cyborg policewoman and her partner hunt a mysterious and powerful hacker called the Puppet Master.', '1995-01-01', 1, '83 minutes', 'Kôkaku Kidôtai', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Nightmare Before Christmas', 'Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home causes confusion.', '1993-01-01', 1, '76 minutes', 'The Nightmare Before Christmas', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Groundhog Day', 'A weatherman finds himself inexplicably living the same day over and over again.', '1993-01-01', 1, '101 minutes', 'Groundhog Day', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bound by Honor', 'Based on the true life experiences of poet Jimmy Santiago Baca, the film focuses on step-brothers Paco and Cruz, and their bi-racial cousin Miklo.', '1993-01-01', 1, '180 minutes', 'Bound by Honor', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Scent of a Woman', 'A prep school student needing money agrees to "babysit" a blind man, but the job is not at all what he anticipated.', '1992-01-01', 1, '156 minutes', 'Scent of a Woman', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Aladdin', 'A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.', '1992-01-01', 1, '90 minutes', 'Aladdin', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('JFK', 'New Orleans District Attorney Jim Garrison discovers there''s more to the Kennedy assassination than the official story.', '1991-01-01', 1, '189 minutes', 'JFK', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Beauty and the Beast', 'A prince cursed to spend his days as a hideous monster sets out to regain his humanity by earning a young woman''s love.', '1991-01-01', 1, '84 minutes', 'Beauty and the Beast', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dances with Wolves', 'Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.', '1990-01-01', 1, '181 minutes', 'Dances with Wolves', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Do the Right Thing', 'On the hottest day of the year on a street in the Bedford-Stuyvesant section of Brooklyn, everyone''s hate and bigotry smolders and builds until it explodes into violence.', '1989-01-01', 1, '120 minutes', 'Do the Right Thing', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rain Man', 'Selfish yuppie Charlie Babbitt''s father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.', '1988-01-01', 1, '133 minutes', 'Rain Man', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Akira', 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.', '1988-01-01', 1, '124 minutes', 'Akira', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Princess Bride', 'While home sick in bed, a young boy''s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.', '1987-01-01', 1, '98 minutes', 'The Princess Bride', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Der Himmel über Berlin', 'An angel tires of overseeing human activity and wishes to become human when he falls in love with a mortal.', '1987-01-01', 1, '128 minutes', 'Der Himmel über Berlin', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Au revoir les enfants', 'A French boarding school run by priests seems to be a haven from World War II until a new student arrives. He becomes the roommate of the top student in his class. Rivals at first, the roommates form a bond and share a secret.', '1987-01-01', 1, '104 minutes', 'Au revoir les enfants', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Tenkû no shiro Rapyuta', 'A young boy and a girl with a magic crystal must race against pirates and foreign agents in a search for a legendary floating castle.', '1986-01-01', 1, '125 minutes', 'Tenkû no shiro Rapyuta', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Terminator', 'A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity''s future salvation.', '1984-01-01', 1, '107 minutes', 'The Terminator', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gandhi', 'The life of the lawyer who became the famed leader of the Indian revolts against the British rule through his philosophy of nonviolent protest.', '1982-01-01', 1, '191 minutes', 'Gandhi', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kagemusha', 'A petty thief with an utter resemblance to a samurai warlord is hired as the lord''s double. When the warlord later dies the thief is forced to take up arms in his place.', '1980-01-01', 1, '180 minutes', 'Kagemusha', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Being There', 'A simpleminded, sheltered gardener becomes an unlikely trusted advisor to a powerful businessman and an insider in Washington politics.', '1979-01-01', 1, '130 minutes', 'Being There', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Annie Hall', 'Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.', '1977-01-01', 1, '93 minutes', 'Annie Hall', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jaws', 'When a killer shark unleashes chaos on a beach community, it''s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.', '1975-01-01', 1, '124 minutes', 'Jaws', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dog Day Afternoon', 'Three amateur bank robbers plan to hold up a bank. A nice simple robbery: Walk in, take the money, and run. Unfortunately, the supposedly uncomplicated heist suddenly becomes a bizarre nightmare as everything that could go wrong does.', '1975-01-01', 1, '125 minutes', 'Dog Day Afternoon', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Young Frankenstein', 'An American grandson of the infamous scientist, struggling to prove that his grandfather was not as insane as people believe, is invited to Transylvania, where he discovers the process that reanimates a dead body.', '1974-01-01', 1, '106 minutes', 'Young Frankenstein', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Papillon', 'A man befriends a fellow criminal as the two of them begin serving their sentence on a dreadful prison island, which inspires the man to plot his escape.', '1973-01-01', 1, '151 minutes', 'Papillon', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Exorcist', 'When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.', '1973-01-01', 1, '122 minutes', 'The Exorcist', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sleuth', 'A man who loves games and theater invites his wife''s lover to meet him, setting up a battle of wits with potentially deadly results.', '1972-01-01', 1, '138 minutes', 'Sleuth', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Last Picture Show', 'In 1951, a group of high schoolers come of age in a bleak, isolated, atrophied North Texas town that is slowly dying, both culturally and economically.', '1971-01-01', 1, '118 minutes', 'The Last Picture Show', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Fiddler on the Roof', 'In prerevolutionary Russia, a Jewish peasant contends with marrying off three of his daughters while growing anti-Semitic sentiment threatens his village.', '1971-01-01', 1, '181 minutes', 'Fiddler on the Roof', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Il conformista', 'A weak-willed Italian man becomes a fascist flunky who goes abroad to arrange the assassination of his old teacher, now a political dissident.', '1970-01-01', 1, '113 minutes', 'Il conformista', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Butch Cassidy and the Sundance Kid', 'Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.', '1969-01-01', 1, '110 minutes', 'Butch Cassidy and the Sundance Kid', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rosemary''s Baby', 'A young couple trying for a baby move into a fancy apartment surrounded by peculiar neighbors.', '1968-01-01', 1, '137 minutes', 'Rosemary''s Baby', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Planet of the Apes', 'An astronaut crew crash-lands on a planet in the distant future where intelligent talking apes are the dominant species, and humans are the oppressed and enslaved.', '1968-01-01', 1, '112 minutes', 'Planet of the Apes', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Graduate', 'A disillusioned college graduate finds himself torn between his older lover and her daughter.', '1967-01-01', 1, '106 minutes', 'The Graduate', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Who''s Afraid of Virginia Woolf?', 'A bitter, aging couple, with the help of alcohol, use their young houseguests to fuel anguish and emotional pain towards each other over the course of a distressing night.', '1966-01-01', 1, '131 minutes', 'Who''s Afraid of Virginia Woolf?', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Sound of Music', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', '1965-01-01', 1, '172 minutes', 'The Sound of Music', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Doctor Zhivago', 'The life of a Russian physician and poet who, although married to another, falls in love with a political activist''s wife and experiences hardship during World War I and then the October Revolution.', '1965-01-01', 1, '197 minutes', 'Doctor Zhivago', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Per un pugno di dollari', 'A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.', '1964-01-01', 1, '99 minutes', 'Per un pugno di dollari', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('8½', 'A harried movie director retreats into his memories and fantasies.', '1963-01-01', 1, '138 minutes', '8½', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Vivre sa vie: Film en douze tableaux', 'Twelve episodic tales in the life of a Parisian woman and her slow descent into prostitution.', '1962-01-01', 1, '80 minutes', 'Vivre sa vie: Film en douze tableaux', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hustler', 'An up-and-coming pool player plays a long-time champion in a single high-stakes match.', '1961-01-01', 1, '134 minutes', 'The Hustler', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La dolce vita', 'A series of stories following a week in the life of a philandering paparazzo journalist living in Rome.', '1960-01-01', 1, '174 minutes', 'La dolce vita', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rio Bravo', 'A small-town sheriff in the American West enlists the help of a cripple, a drunk, and a young gunfighter in his efforts to hold in jail the brother of the local bad guy.', '1959-01-01', 1, '141 minutes', 'Rio Bravo', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Anatomy of a Murder', 'In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case?', '1959-01-01', 1, '161 minutes', 'Anatomy of a Murder', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Touch of Evil', 'A stark, perverse story of murder, kidnapping, and police corruption in a Mexican border town.', '1958-01-01', 1, '95 minutes', 'Touch of Evil', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Cat on a Hot Tin Roof', 'Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son.', '1958-01-01', 1, '108 minutes', 'Cat on a Hot Tin Roof', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sweet Smell of Success', 'Powerful but unethical Broadway columnist J.J. Hunsecker coerces unscrupulous press agent Sidney Falco into breaking up his sister''s romance with a jazz musician.', '1957-01-01', 1, '96 minutes', 'Sweet Smell of Success', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Killing', 'Crook Johnny Clay assembles a five man team to plan and execute a daring race-track robbery.', '1956-01-01', 1, '84 minutes', 'The Killing', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Night of the Hunter', 'A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he''d stolen in a robbery.', '1955-01-01', 1, '92 minutes', 'The Night of the Hunter', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La Strada', 'A care-free girl is sold to a traveling entertainer, consequently enduring physical and emotional pain along the way.', '1954-01-01', 1, '108 minutes', 'La Strada', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Les diaboliques', 'The wife and mistress of a loathed school principal plan to murder him with what they believe is the perfect alibi.', '1955-01-01', 1, '117 minutes', 'Les diaboliques', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Stalag 17', 'When two escaping American World War II prisoners are killed, the German P.O.W. camp barracks black marketeer, J.J. Sefton, is suspected of being an informer.', '1953-01-01', 1, '120 minutes', 'Stalag 17', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Roman Holiday', 'A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.', '1953-01-01', 1, '118 minutes', 'Roman Holiday', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Streetcar Named Desire', 'Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.', '1951-01-01', 1, '122 minutes', 'A Streetcar Named Desire', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('In a Lonely Place', 'A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.', '1950-01-01', 1, '94 minutes', 'In a Lonely Place', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kind Hearts and Coronets', 'A distant poor relative of the Duke D''Ascoyne plots to inherit the title by murdering the eight other heirs who stand ahead of him in the line of succession.', '1949-01-01', 1, '106 minutes', 'Kind Hearts and Coronets', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rope', 'Two men attempt to prove they committed the perfect crime by hosting a dinner party after strangling their former classmate to death.', '1948-01-01', 1, '80 minutes', 'Rope', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Out of the Past', 'A private eye escapes his past to run a gas station in a small town, but his past catches up with him. Now he must return to the big city world of danger, corruption, double crosses and duplicitous dames.', '1947-01-01', 1, '97 minutes', 'Out of the Past', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Brief Encounter', 'Meeting a stranger in a railway station, a woman is tempted to cheat on her husband.', '1945-01-01', 1, '86 minutes', 'Brief Encounter', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Laura', 'A police detective falls in love with the woman whose murder he is investigating.', '1944-01-01', 1, '88 minutes', 'Laura', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Best Years of Our Lives', 'Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.', '1946-01-01', 1, '170 minutes', 'The Best Years of Our Lives', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Arsenic and Old Lace', 'A writer of books on the futility of marriage risks his reputation when he decides to get married. Things get even more complicated when he learns on his wedding day that his beloved maiden aunts are habitual murderers.', '1942-01-01', 1, '118 minutes', 'Arsenic and Old Lace', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Maltese Falcon', 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.', '1941-01-01', 1, '100 minutes', 'The Maltese Falcon', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Grapes of Wrath', 'A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.', '1940-01-01', 1, '129 minutes', 'The Grapes of Wrath', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Wizard of Oz', 'Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.', '1939-01-01', 1, '102 minutes', 'The Wizard of Oz', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La règle du jeu', 'A bourgeois life in France at the onset of World War II, as the rich and their poor servants meet up at a French chateau.', '1939-01-01', 1, '110 minutes', 'La règle du jeu', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Thin Man', 'Former detective Nick Charles and his wealthy wife Nora investigate a murder case, mostly for the fun of it.', '1934-01-01', 1, '91 minutes', 'The Thin Man', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('All Quiet on the Western Front', 'A German youth eagerly enters World War I, but his enthusiasm wanes as he gets a firsthand view of the horror.', '1930-01-01', 1, '152 minutes', 'All Quiet on the Western Front', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bronenosets Potemkin', 'In the midst of the Russian Revolution of 1905, the crew of the battleship Potemkin mutiny against the brutal, tyrannical regime of the vessel''s officers. The resulting street demonstration in Odessa brings on a police massacre.', '1925-01-01', 1, '75 minutes', 'Bronenosets Potemkin', 8.0);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Knives Out', 'A detective investigates the death of a patriarch of an eccentric, combative family.', '2019-01-01', 1, '130 minutes', 'Knives Out', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dil Bechara', 'The emotional journey of two hopelessly in love youngsters, a young girl, Kizie, suffering from cancer, and a boy, Manny, whom she meets at a support group.', '2020-01-01', 1, '101 minutes', 'Dil Bechara', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Manbiki kazoku', 'A family of small-time crooks take in a child they find outside in the cold.', '2018-01-01', 1, '121 minutes', 'Manbiki kazoku', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Marriage Story', 'Noah Baumbach''s incisive and compassionate look at a marriage breaking up and a family staying together.', '2019-01-01', 1, '137 minutes', 'Marriage Story', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Call Me by Your Name', 'In 1980s Italy, romance blossoms between a seventeen-year-old student and the older man hired as his father''s research assistant.', '2017-01-01', 1, '132 minutes', 'Call Me by Your Name', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('I, Daniel Blake', 'After having suffered a heart-attack, a 59-year-old carpenter must fight the bureaucratic forces of the system in order to receive Employment and Support Allowance.', '2016-01-01', 1, '100 minutes', 'I, Daniel Blake', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Isle of Dogs', 'Set in Japan, Isle of Dogs follows a boy''s odyssey in search of his lost dog.', '2018-01-01', 1, '101 minutes', 'Isle of Dogs', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hunt for the Wilderpeople', 'A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.', '2016-01-01', 1, '101 minutes', 'Hunt for the Wilderpeople', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Captain Fantastic', 'In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.', '2016-01-01', 1, '118 minutes', 'Captain Fantastic', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sing Street', 'A boy growing up in Dublin during the 1980s escapes his strained family life by starting a band to impress the mysterious girl he likes.', '2016-01-01', 1, '106 minutes', 'Sing Street', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Thor: Ragnarok', 'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', '2017-01-01', 1, '130 minutes', 'Thor: Ragnarok', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Nightcrawler', 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.', '2014-01-01', 1, '117 minutes', 'Nightcrawler', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jojo Rabbit', 'A young boy in Hitler''s army finds out his mother is hiding a Jewish girl in their home.', '2019-01-01', 1, '108 minutes', 'Jojo Rabbit', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Arrival', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecrafts appear around the world.', '2016-01-01', 1, '116 minutes', 'Arrival', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Star Wars: Episode VII - The Force Awakens', 'As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.', '2015-01-01', 1, '138 minutes', 'Star Wars: Episode VII - The Force Awakens', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Before Midnight', 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.', '2013-01-01', 1, '109 minutes', 'Before Midnight', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('X-Men: Days of Future Past', 'The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.', '2014-01-01', 1, '132 minutes', 'X-Men: Days of Future Past', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bir Zamanlar Anadolu''da', 'A group of men set out in search of a dead body in the Anatolian steppes.', '2011-01-01', 1, '157 minutes', 'Bir Zamanlar Anadolu''da', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Artist', 'An egomaniacal film star develops a relationship with a young dancer against the backdrop of Hollywood''s silent era.', '2011-01-01', 1, '100 minutes', 'The Artist', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Edge of Tomorrow', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', '2014-01-01', 1, '113 minutes', 'Edge of Tomorrow', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Amour', 'Georges and Anne are an octogenarian couple. They are cultivated, retired music teachers. Their daughter, also a musician, lives in Britain with her family. One day, Anne has a stroke, and the couple''s bond of love is severely tested.', '2012-01-01', 1, '127 minutes', 'Amour', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Irishman', 'An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.', '2019-01-01', 1, '209 minutes', 'The Irishman', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Un prophète', 'A young Arab man is sent to a French prison.', '2009-01-01', 1, '155 minutes', 'Un prophète', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Moon', 'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet''s power problems.', '2009-01-01', 1, '97 minutes', 'Moon', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Låt den rätte komma in', 'Oskar, an overlooked and bullied boy, finds love and revenge through Eli, a beautiful but peculiar girl.', '2008-01-01', 1, '114 minutes', 'Låt den rätte komma in', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('District 9', 'Violence ensues after an extraterrestrial race forced to live in slum-like conditions on Earth finds a kindred spirit in a government agent exposed to their biotechnology.', '2009-01-01', 1, '112 minutes', 'District 9', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Wrestler', 'A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.', '2008-01-01', 1, '109 minutes', 'The Wrestler', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jab We Met', 'A depressed wealthy businessman finds his life changing after he meets a spunky and care-free young woman.', '2007-01-01', 1, '138 minutes', 'Jab We Met', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Boyhood', 'The life of Mason, from early childhood to his arrival at college.', '2014-01-01', 1, '165 minutes', 'Boyhood', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('4 luni, 3 saptamâni si 2 zile', 'A woman assists her friend in arranging an illegal abortion in 1980s Romania.', '2007-01-01', 1, '113 minutes', '4 luni, 3 saptamâni si 2 zile', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Star Trek', 'The brash James T. Kirk tries to live up to his father''s legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time.', '2009-01-01', 1, '127 minutes', 'Star Trek', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('In Bruges', 'Guilt-stricken after a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be.', '2008-01-01', 1, '107 minutes', 'In Bruges', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Man from Earth', 'An impromptu goodbye party for Professor John Oldman becomes a mysterious interrogation after the retiring scholar reveals to his colleagues he has a longer and stranger past than they can imagine.', '2007-01-01', 1, '87 minutes', 'The Man from Earth', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Letters from Iwo Jima', 'The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.', '2006-01-01', 1, '141 minutes', 'Letters from Iwo Jima', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Fall', 'In a hospital on the outskirts of 1920s Los Angeles, an injured stuntman begins to tell a fellow patient, a little girl with a broken arm, a fantastic story of five mythical heroes. Thanks to his fractured state of mind and her vivid imagination, the line between fiction and reality blurs as the tale advances.', '2006-01-01', 1, '117 minutes', 'The Fall', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Life of Pi', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', '2012-01-01', 1, '127 minutes', 'Life of Pi', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Fantastic Mr. Fox', 'An urbane fox cannot resist returning to his farm raiding ways and then must help his community survive the farmers'' retaliation.', '2009-01-01', 1, '87 minutes', 'Fantastic Mr. Fox', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('C.R.A.Z.Y.', 'A young French-Canadian, growing up in the 1960s and 1970s, struggles to reconcile his emerging homosexuality with his father''s conservative values and his own Catholic beliefs.', '2005-01-01', 1, '129 minutes', 'C.R.A.Z.Y.', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Les choristes', 'The new teacher at a severely administered boys'' boarding school works to positively affect the students'' lives through music.', '2004-01-01', 1, '97 minutes', 'Les choristes', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Iron Man', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', '2008-01-01', 1, '126 minutes', 'Iron Man', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Shaun of the Dead', 'A man''s uneventful life is disrupted by the zombie apocalypse.', '2004-01-01', 1, '99 minutes', 'Shaun of the Dead', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gegen die Wand', 'With the intention to break free from the strict familial restrictions, a suicidal young woman sets up a marriage of convenience with a forty-year-old addict, an act that will lead to an outburst of envious love.', '2004-01-01', 1, '121 minutes', 'Gegen die Wand', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mystic River', 'The lives of three men who were childhood friends are shattered when one of them has a family tragedy.', '2003-01-01', 1, '138 minutes', 'Mystic River', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harry Potter and the Prisoner of Azkaban', 'Harry Potter, Ron and Hermione return to Hogwarts School of Witchcraft and Wizardry for their third year of study, where they delve into the mystery surrounding an escaped prisoner who poses a dangerous threat to the young wizard.', '2004-01-01', 1, '142 minutes', 'Harry Potter and the Prisoner of Azkaban', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ying xiong', 'A defense officer, Nameless, was summoned by the King of Qin regarding his success of terminating three warriors.', '2002-01-01', 1, '120 minutes', 'Ying xiong', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hable con ella', 'Two men share an odd friendship while they care for two women who are both in deep comas.', '2002-01-01', 1, '112 minutes', 'Hable con ella', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('No Man''s Land', 'Bosnia and Herzegovina during 1993 at the time of the heaviest fighting between the two warring sides. Two soldiers from opposing sides in the conflict, Nino and Ciki, become trapped in no man''s land, whilst a third soldier becomes a living booby trap.', '2001-01-01', 1, '98 minutes', 'No Man''s Land', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Cowboy Bebop: Tengoku no tobira', 'A terrorist explosion releases a deadly virus on the masses, and it''s up the bounty-hunting Bebop crew to catch the cold-blooded culprit.', '2001-01-01', 1, '115 minutes', 'Cowboy Bebop: Tengoku no tobira', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Bourne Identity', 'A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.', '2002-01-01', 1, '119 minutes', 'The Bourne Identity', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Nueve reinas', 'Two con artists try to swindle a stamp collector by selling him a sheet of counterfeit rare stamps (the "nine queens").', '2000-01-01', 1, '114 minutes', 'Nueve reinas', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Children of Men', 'In 2027, in a chaotic world in which women have become somehow infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.', '2006-01-01', 1, '109 minutes', 'Children of Men', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Almost Famous', 'A high-school boy is given the chance to write a story for Rolling Stone Magazine about an up-and-coming rock band as he accompanies them on their concert tour.', '2000-01-01', 1, '122 minutes', 'Almost Famous', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mulholland Dr.', 'After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.', '2001-01-01', 1, '147 minutes', 'Mulholland Dr.', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Toy Story 2', 'When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.', '1999-01-01', 1, '92 minutes', 'Toy Story 2', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Boogie Nights', 'Back when sex was safe, pleasure was a business and business was booming, an idealistic porn producer aspires to elevate his craft to an art when he discovers a hot young talent.', '1997-01-01', 1, '155 minutes', 'Boogie Nights', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mimi wo sumaseba', 'A love story between a girl who loves reading books, and a boy who has previously checked out all of the library books she chooses.', '1995-01-01', 1, '111 minutes', 'Mimi wo sumaseba', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Once Were Warriors', 'A family descended from Maori warriors is bedeviled by a violent father and the societal problems of being treated as outcasts.', '1994-01-01', 1, '102 minutes', 'Once Were Warriors', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('True Romance', 'In Detroit, a lonely pop culture geek marries a call girl, steals cocaine from her pimp, and tries to sell it in Hollywood. Meanwhile, the owners of the cocaine, the Mob, track them down in an attempt to reclaim it.', '1993-01-01', 1, '119 minutes', 'True Romance', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Trois couleurs: Bleu', 'A woman struggles to find a way to live her life after the death of her husband and child.', '1993-01-01', 1, '94 minutes', 'Trois couleurs: Bleu', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jûbê ninpûchô', 'A vagabond swordsman is aided by a beautiful ninja girl and a crafty spy in confronting a demonic clan of killers - with a ghost from his past as their leader - who are bent on overthrowing the Tokugawa Shogunate.', '1993-01-01', 1, '94 minutes', 'Jûbê ninpûchô', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Carlito''s Way', 'A Puerto Rican former convict, just released from prison, pledges to stay away from drugs and violence despite the pressure around him and lead on to a better life outside of N.Y.C.', '1993-01-01', 1, '144 minutes', 'Carlito''s Way', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Edward Scissorhands', 'An artificial man, who was incompletely constructed and has scissors for hands, leads a solitary life. Then one day, a suburban lady meets him and introduces him to her world.', '1990-01-01', 1, '105 minutes', 'Edward Scissorhands', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('My Left Foot: The Story of Christy Brown', 'Christy Brown, born with cerebral palsy, learns to paint and write with his only controllable limb - his left foot.', '1989-01-01', 1, '103 minutes', 'My Left Foot: The Story of Christy Brown', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Crimes and Misdemeanors', 'An ophthalmologist''s mistress threatens to reveal their affair to his wife while a married documentary filmmaker is infatuated with another woman.', '1989-01-01', 1, '104 minutes', 'Crimes and Misdemeanors', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Untouchables', 'During the era of Prohibition in the United States, Federal Agent Eliot Ness sets out to stop ruthless Chicago gangster Al Capone and, because of rampant corruption, assembles a small, hand-picked team to help him.', '1987-01-01', 1, '119 minutes', 'The Untouchables', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hannah and Her Sisters', 'Between two Thanksgivings two years apart, Hannah''s husband falls in love with her sister Lee, while her hypochondriac ex-husband rekindles his relationship with her sister Holly.', '1986-01-01', 1, '107 minutes', 'Hannah and Her Sisters', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Brazil', 'A bureaucrat in a dystopic society becomes an enemy of the state as he pursues the woman of his dreams.', '1985-01-01', 1, '132 minutes', 'Brazil', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('This Is Spinal Tap', 'Spinal Tap, one of England''s loudest bands, is chronicled by film director Marty DiBergi on what proves to be a fateful tour.', '1984-01-01', 1, '82 minutes', 'This Is Spinal Tap', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Christmas Story', 'In the 1940s, a young boy named Ralphie attempts to convince his parents, his teacher and Santa that a Red Ryder BB gun really is the perfect Christmas gift.', '1983-01-01', 1, '93 minutes', 'A Christmas Story', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Blues Brothers', 'Jake Blues, just released from prison, puts together his old band to save the Catholic home where he and his brother Elwood were raised.', '1980-01-01', 1, '133 minutes', 'The Blues Brothers', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Manhattan', 'The life of a divorced television writer dating a teenage girl is further complicated when he falls in love with his best friend''s mistress.', '1979-01-01', 1, '96 minutes', 'Manhattan', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('All That Jazz', 'Director/choreographer Bob Fosse tells his own life story as he details the sordid career of Joe Gideon, a womanizing, drug-using dancer.', '1979-01-01', 1, '123 minutes', 'All That Jazz', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dawn of the Dead', 'Following an ever-growing epidemic of zombies that have risen from the dead, two Philadelphia S.W.A.T. team members, a traffic reporter, and his television executive girlfriend seek refuge in a secluded shopping mall.', '1978-01-01', 1, '127 minutes', 'Dawn of the Dead', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('All the President''s Men', '"The Washington Post" reporters Bob Woodward and Carl Bernstein uncover the details of the Watergate scandal that leads to President Richard Nixon''s resignation.', '1976-01-01', 1, '138 minutes', 'All the President''s Men', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La montaña sagrada', 'In a corrupt, greed-fueled world, a powerful alchemist leads a messianic character and seven materialistic figures to the Holy Mountain, where they hope to achieve enlightenment.', '1973-01-01', 1, '114 minutes', 'La montaña sagrada', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Amarcord', 'A series of comedic and nostalgic vignettes set in a 1930s Italian coastal town.', '1973-01-01', 1, '123 minutes', 'Amarcord', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Le charme discret de la bourgeoisie', 'A surreal, virtually plotless series of dreams centered around six middle-class people and their consistently interrupted attempts to have a meal together.', '1972-01-01', 1, '102 minutes', 'Le charme discret de la bourgeoisie', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Aguirre, der Zorn Gottes', 'In the 16th century, the ruthless and insane Don Lope de Aguirre leads a Spanish expedition in search of El Dorado.', '1972-01-01', 1, '95 minutes', 'Aguirre, der Zorn Gottes', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harold and Maude', 'Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.', '1971-01-01', 1, '91 minutes', 'Harold and Maude', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Patton', 'The World War II phase of the career of controversial American general George S. Patton.', '1970-01-01', 1, '172 minutes', 'Patton', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Wild Bunch', 'An aging group of outlaws look for one last big score as the "traditional" American West is disappearing around them.', '1969-01-01', 1, '145 minutes', 'The Wild Bunch', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Night of the Living Dead', 'A ragtag group of Pennsylvanians barricade themselves in an old farmhouse to remain safe from a horde of flesh-eating ghouls that are ravaging the East Coast of the United States.', '1968-01-01', 1, '96 minutes', 'Night of the Living Dead', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Lion in Winter', '1183 A.D.: King Henry II''s three sons all want to inherit the throne, but he won''t commit to a choice. They and his wife variously plot to force him.', '1968-01-01', 1, '134 minutes', 'The Lion in Winter', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('In the Heat of the Night', 'A black police detective is asked to investigate a murder in a racially hostile southern town.', '1967-01-01', 1, '110 minutes', 'In the Heat of the Night', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Charade', 'Romance and suspense ensue in Paris as a woman is pursued by several men who want a fortune her murdered husband had stolen. Whom can she trust?', '1963-01-01', 1, '113 minutes', 'Charade', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Manchurian Candidate', 'A former prisoner of war is brainwashed as an unwitting assassin for an international Communist conspiracy.', '1962-01-01', 1, '126 minutes', 'The Manchurian Candidate', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Spartacus', 'The slave Spartacus leads a violent revolt against the decadent Roman Republic.', '1960-01-01', 1, '197 minutes', 'Spartacus', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('L''avventura', 'A woman disappears during a Mediterranean boating trip. During the search, her lover and her best friend become attracted to each other.', '1960-01-01', 1, '144 minutes', 'L''avventura', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hiroshima mon amour', 'A French actress filming an anti-war film in Hiroshima has an affair with a married Japanese architect as they share their differing perspectives on war.', '1959-01-01', 1, '90 minutes', 'Hiroshima mon amour', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Ten Commandments', 'Moses, an Egyptian Prince, learns of his true heritage as a Hebrew and his divine mission as the deliverer of his people.', '1956-01-01', 1, '220 minutes', 'The Ten Commandments', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Searchers', 'An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.', '1956-01-01', 1, '119 minutes', 'The Searchers', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('East of Eden', 'Two brothers struggle to maintain their strict, Bible-toting father''s favor.', '1955-01-01', 1, '118 minutes', 'East of Eden', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('High Noon', 'A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.', '1952-01-01', 1, '85 minutes', 'High Noon', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Strangers on a Train', 'A psychopath forces a tennis star to comply with his theory that two strangers can get away with murder.', '1951-01-01', 1, '101 minutes', 'Strangers on a Train', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harvey', 'Due to his insistence that he has an invisible six foot-tall rabbit for a best friend, a whimsical middle-aged man is thought by his family to be insane - but he may be wiser than anyone knows.', '1950-01-01', 1, '104 minutes', 'Harvey', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Miracle on 34th Street', 'When a nice old man who claims to be Santa Claus is institutionalized as insane, a young lawyer decides to defend him by arguing in court that he is the real thing.', '1947-01-01', 1, '96 minutes', 'Miracle on 34th Street', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Notorious', 'A woman is asked to spy on a group of Nazi friends in South America. How far will she have to go to ingratiate herself with them?', '1946-01-01', 1, '102 minutes', 'Notorious', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Big Sleep', 'Private detective Philip Marlowe is hired by a wealthy family. Before the complex case is over, he''s seen murder, blackmail, and what might be love.', '1946-01-01', 1, '114 minutes', 'The Big Sleep', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Lost Weekend', 'The desperate life of a chronic alcoholic is followed through a four-day drinking bout.', '1945-01-01', 1, '101 minutes', 'The Lost Weekend', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Philadelphia Story', 'When a rich woman''s ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.', '1940-01-01', 1, '112 minutes', 'The Philadelphia Story', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('His Girl Friday', 'A newspaper editor uses every trick in the book to keep his ace reporter ex-wife from remarrying.', '1940-01-01', 1, '92 minutes', 'His Girl Friday', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Adventures of Robin Hood', 'When Prince John and the Norman Lords begin oppressing the Saxon masses in King Richard''s absence, a Saxon lord fights back as the outlaw leader of a rebel guerrilla army.', '1938-01-01', 1, '102 minutes', 'The Adventures of Robin Hood', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Night at the Opera', 'A sly business manager and two wacky friends of two opera singers help them achieve success while humiliating their stuffy and snobbish enemies.', '1935-01-01', 1, '96 minutes', 'A Night at the Opera', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('King Kong', 'A film crew goes to a tropical island for an exotic location shoot and discovers a colossal ape who takes a shine to their female blonde star. He is then captured and brought back to New York City for public exhibition.', '1933-01-01', 1, '100 minutes', 'King Kong', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Freaks', 'A circus'' beautiful trapeze artist agrees to marry the leader of side-show performers, but his deformed friends discover she is only marrying him for his inheritance.', '1932-01-01', 1, '64 minutes', 'Freaks', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Nosferatu', 'Vampire Count Orlok expresses interest in a new residence and real estate agent Hutter''s wife.', '1922-01-01', 1, '94 minutes', 'Nosferatu', 7.9);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Gentlemen', 'An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.', '2019-01-01', 1, '113 minutes', 'The Gentlemen', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Raazi', 'A Kashmiri woman agrees to marry a Pakistani army officer in order to spy on Pakistan during the Indo-Pakistan War of 1971.', '2018-01-01', 1, '138 minutes', 'Raazi', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sound of Metal', 'A heavy-metal drummer''s life is thrown into freefall when he begins to lose his hearing.', '2019-01-01', 1, '120 minutes', 'Sound of Metal', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Forushande', 'While both participating in a production of "Death of a Salesman," a teacher''s wife is assaulted in her new home, which leaves him determined to find the perpetrator over his wife''s traumatized objections.', '2016-01-01', 1, '124 minutes', 'Forushande', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dunkirk', 'Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.', '2017-01-01', 1, '106 minutes', 'Dunkirk', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Perfetti sconosciuti', 'Seven long-time friends get together for a dinner. When they decide to share with each other the content of every text message, email and phone call they receive, many secrets start to unveil and the equilibrium trembles.', '2016-01-01', 1, '96 minutes', 'Perfetti sconosciuti', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hidden Figures', 'The story of a team of female African-American mathematicians who served a vital role in NASA during the early years of the U.S. space program.', '2016-01-01', 1, '127 minutes', 'Hidden Figures', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Paddington 2', 'Paddington (Ben Whishaw), now happily settled with the Brown family and a popular member of the local community, picks up a series of odd jobs to buy the perfect present for his Aunt Lucy''s (Imelda Staunton''s) 100th birthday, only for the gift to be stolen.', '2017-01-01', 1, '103 minutes', 'Paddington 2', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Udta Punjab', 'A story that revolves around drug abuse in the affluent north Indian State of Punjab and how the youth there have succumbed to it en-masse resulting in a socio-economic decline.', '2016-01-01', 1, '148 minutes', 'Udta Punjab', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kubo and the Two Strings', 'A young boy named Kubo must locate a magical suit of armour worn by his late father in order to defeat a vengeful spirit from the past.', '2016-01-01', 1, '101 minutes', 'Kubo and the Two Strings', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('M.S. Dhoni: The Untold Story', 'The untold story of Mahendra Singh Dhoni''s journey from ticket collector to trophy collector - the world-cup-winning captain of the Indian Cricket Team.', '2016-01-01', 1, '184 minutes', 'M.S. Dhoni: The Untold Story', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Manchester by the Sea', 'A depressed uncle is asked to take care of his teenage nephew after the boy''s father dies.', '2016-01-01', 1, '137 minutes', 'Manchester by the Sea', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Under sandet', 'In post-World War II Denmark, a group of young German POWs are forced to clear a beach of thousands of land mines under the watch of a Danish Sergeant who slowly learns to appreciate their plight.', '2015-01-01', 1, '100 minutes', 'Under sandet', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rogue One', 'The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the plans for the Death Star.', '2016-01-01', 1, '133 minutes', 'Rogue One', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Captain America: Civil War', 'Political involvement in the Avengers'' affairs causes a rift between Captain America and Iron Man.', '2016-01-01', 1, '147 minutes', 'Captain America: Civil War', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hateful Eight', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', '2015-01-01', 1, '168 minutes', 'The Hateful Eight', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Little Women', 'Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.', '2019-01-01', 1, '135 minutes', 'Little Women', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Loving Vincent', 'In a story depicted in oil painted animation, a young man comes to the last hometown of painter Vincent van Gogh (Robert Gulaczyk) to deliver the troubled artist''s final letter and ends up investigating his final days there.', '2017-01-01', 1, '94 minutes', 'Loving Vincent', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Pride', 'U.K. gay activists work to help miners during their lengthy strike of the National Union of Mineworkers in the summer of 1984.', '2014-01-01', 1, '119 minutes', 'Pride', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Le passé', 'An Iranian man deserts his French wife and her two children to return to his homeland. Meanwhile, his wife starts up a new relationship, a reality her husband confronts upon his wife''s request for a divorce.', '2013-01-01', 1, '130 minutes', 'Le passé', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La grande bellezza', 'Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.', '2013-01-01', 1, '141 minutes', 'La grande bellezza', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Lunchbox', 'A mistaken delivery in Mumbai''s famously efficient lunchbox delivery system connects a young housewife to an older man in the dusk of his life as they build a fantasy world together through notes in the lunchbox.', '2013-01-01', 1, '104 minutes', 'The Lunchbox', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Vicky Donor', 'A man is brought in by an infertility doctor to supply him with his sperm, where he becomes the biggest sperm donor for his clinic.', '2012-01-01', 1, '126 minutes', 'Vicky Donor', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Big Hero 6', 'A special bond develops between plus-sized inflatable robot Baymax and prodigy Hiro Hamada, who together team up with a group of friends to form a band of high-tech heroes.', '2014-01-01', 1, '102 minutes', 'Big Hero 6', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('About Time', 'At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think.', '2013-01-01', 1, '123 minutes', 'About Time', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('English Vinglish', 'A quiet, sweet tempered housewife endures small slights from her well-educated husband and daughter every day because of her inability to speak and understand English.', '2012-01-01', 1, '134 minutes', 'English Vinglish', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kaze tachinu', 'A look at the life of Jiro Horikoshi, the man who designed Japanese fighter planes during World War II.', '2013-01-01', 1, '126 minutes', 'Kaze tachinu', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Toy Story 4', 'When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.', '2019-01-01', 1, '100 minutes', 'Toy Story 4', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La migliore offerta', 'A lonely art expert working for a mysterious and reclusive heiress finds not only her art worth examining.', '2013-01-01', 1, '131 minutes', 'La migliore offerta', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Moonrise Kingdom', 'A pair of young lovers flee their New England town, which causes a local search party to fan out to find them.', '2012-01-01', 1, '94 minutes', 'Moonrise Kingdom', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('How to Train Your Dragon 2', 'When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.', '2014-01-01', 1, '102 minutes', 'How to Train Your Dragon 2', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Big Short', 'In 2006-2007 a group of investors bet against the US mortgage market. In their research they discover how flawed and corrupt the market is.', '2015-01-01', 1, '130 minutes', 'The Big Short', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kokuhaku', 'A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter''s death.', '2010-01-01', 1, '106 minutes', 'Kokuhaku', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ang-ma-reul bo-at-da', 'A secret agent exacts revenge on a serial killer through a series of captures and releases.', '2010-01-01', 1, '144 minutes', 'Ang-ma-reul bo-at-da', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Girl with the Dragon Tattoo', 'Journalist Mikael Blomkvist is aided in his search for a woman who has been missing for forty years by Lisbeth Salander, a young computer hacker.', '2011-01-01', 1, '158 minutes', 'The Girl with the Dragon Tattoo', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Captain Phillips', 'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.', '2013-01-01', 1, '134 minutes', 'Captain Phillips', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ajeossi', 'A quiet pawnshop keeper with a violent past takes on a drug-and-organ trafficking ring in hope of saving the child who is his only friend.', '2010-01-01', 1, '119 minutes', 'Ajeossi', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Straight Outta Compton', 'The rap group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood.', '2015-01-01', 1, '147 minutes', 'Straight Outta Compton', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Madeo', 'A mother desperately searches for the killer who framed her son for a girl''s horrific murder.', '2009-01-01', 1, '129 minutes', 'Madeo', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Chugyeokja', 'A disgraced ex-policeman who runs a small ring of prostitutes finds himself in a race against time when one of his women goes missing.', '2008-01-01', 1, '125 minutes', 'Chugyeokja', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hobbit: The Desolation of Smaug', 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', '2013-01-01', 1, '161 minutes', 'The Hobbit: The Desolation of Smaug', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Das weiße Band - Eine deutsche Kindergeschichte', 'Strange events happen in a small village in the north of Germany during the years before World War I, which seem to be ritual punishment. Who is responsible?', '2009-01-01', 1, '144 minutes', 'Das weiße Band - Eine deutsche Kindergeschichte', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Män som hatar kvinnor', 'A journalist is aided by a young female hacker in his search for the killer of a woman who has been dead for forty years.', '2009-01-01', 1, '152 minutes', 'Män som hatar kvinnor', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Trial of the Chicago 7', 'The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.', '2020-01-01', 1, '129 minutes', 'The Trial of the Chicago 7', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Druk', 'Four friends, all high school teachers, test a theory that they will improve their lives by maintaining a constant level of alcohol in their blood.', '2020-01-01', 1, '117 minutes', 'Druk', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Fighter', 'Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.', '2010-01-01', 1, '116 minutes', 'The Fighter', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Taken', 'A retired CIA agent travels across Europe and relies on his old skills to save his estranged daughter, who has been kidnapped while on a trip to Paris.', '2008-01-01', 1, '90 minutes', 'Taken', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Boy in the Striped Pyjamas', 'Through the innocent eyes of Bruno, the eight-year-old son of the commandant at a German concentration camp, a forbidden friendship with a Jewish boy on the other side of the camp fence has startling and unexpected consequences.', '2008-01-01', 1, '94 minutes', 'The Boy in the Striped Pyjamas', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Once', 'A modern-day musical about a busker and an immigrant and their eventful week in Dublin, as they write, rehearse and record songs that tell their love story.', '2007-01-01', 1, '86 minutes', 'Once', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hobbit: An Unexpected Journey', 'A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.', '2012-01-01', 1, '169 minutes', 'The Hobbit: An Unexpected Journey', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Auf der anderen Seite', 'A Turkish man travels to Istanbul to find the daughter of his father''s former girlfriend.', '2007-01-01', 1, '122 minutes', 'Auf der anderen Seite', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Atonement', 'Thirteen-year-old fledgling writer Briony Tallis irrevocably changes the course of several lives when she accuses her older sister''s lover of a crime he did not commit.', '2007-01-01', 1, '123 minutes', 'Atonement', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Drive', 'A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor.', '2011-01-01', 1, '100 minutes', 'Drive', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('American Gangster', 'An outcast New York City cop is charged with bringing down Harlem drug lord Frank Lucas, whose real life inspired this partly biographical film.', '2007-01-01', 1, '157 minutes', 'American Gangster', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Avatar', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', '2009-01-01', 1, '162 minutes', 'Avatar', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mr. Nobody', 'A boy stands on a station platform as a train is about to leave. Should he go with his mother or stay with his father? Infinite possibilities arise from this decision. As long as he doesn''t choose, anything is possible.', '2009-01-01', 1, '141 minutes', 'Mr. Nobody', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Apocalypto', 'As the Mayan kingdom faces its decline, a young man is taken on a perilous journey to a world ruled by fear and oppression.', '2006-01-01', 1, '139 minutes', 'Apocalypto', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Little Miss Sunshine', 'A family determined to get their young daughter into the finals of a beauty pageant take a cross-country trip in their VW bus.', '2006-01-01', 1, '101 minutes', 'Little Miss Sunshine', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hot Fuzz', 'A skilled London police officer is transferred to a small town with a dark secret.', '2007-01-01', 1, '121 minutes', 'Hot Fuzz', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Curious Case of Benjamin Button', 'Tells the story of Benjamin Button, a man who starts aging backwards with consequences.', '2008-01-01', 1, '166 minutes', 'The Curious Case of Benjamin Button', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Veer-Zaara', 'Veer-Zaara is a saga of love, separation, courage and sacrifice. A love story that is an inspiration and will remain a legend forever.', '2004-01-01', 1, '192 minutes', 'Veer-Zaara', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Adams æbler', 'A neo-nazi sentenced to community service at a church clashes with the blindly devotional priest.', '2005-01-01', 1, '94 minutes', 'Adams æbler', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Pride & Prejudice', 'Sparks fly when spirited Elizabeth Bennet meets single, rich, and proud Mr. Darcy. But Mr. Darcy reluctantly finds himself falling in love with a woman beneath his class. Can each overcome their own pride and prejudice?', '2005-01-01', 1, '129 minutes', 'Pride & Prejudice', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The World''s Fastest Indian', 'The story of New Zealander Burt Munro, who spent years rebuilding a 1920 Indian motorcycle, which helped him set the land speed world record at Utah''s Bonneville Salt Flats in 1967.', '2005-01-01', 1, '127 minutes', 'The World''s Fastest Indian', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Tôkyô goddofâzâzu', 'On Christmas Eve, three homeless people living on the streets of Tokyo discover a newborn baby among the trash and set out to find its parents.', '2003-01-01', 1, '90 minutes', 'Tôkyô goddofâzâzu', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Serenity', 'The crew of the ship Serenity try to evade an assassin sent to recapture one of their members who is telepathic.', '2005-01-01', 1, '119 minutes', 'Serenity', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Walk the Line', 'A chronicle of country music legend Johnny Cash''s life, from his early days on an Arkansas cotton farm to his rise to fame with Sun Records in Memphis, where he recorded alongside Elvis Presley, Jerry Lee Lewis, and Carl Perkins.', '2005-01-01', 1, '136 minutes', 'Walk the Line', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ondskan', 'A teenage boy expelled from school for fighting arrives at a boarding school where the systematic bullying of younger students is encouraged as a means to maintain discipline, and decides to fight back.', '2003-01-01', 1, '113 minutes', 'Ondskan', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Notebook', 'A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.', '2004-01-01', 1, '123 minutes', 'The Notebook', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Diarios de motocicleta', 'The dramatization of a motorcycle road trip Che Guevara went on in his youth that showed him his life''s calling.', '2004-01-01', 1, '126 minutes', 'Diarios de motocicleta', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lilja 4-ever', 'Sixteen-year-old Lilja and her only friend, the young boy Volodja, live in Russia, fantasizing about a better life. One day, Lilja falls in love with Andrej, who is going to Sweden, and invites Lilja to come along and start a new life.', '2002-01-01', 1, '109 minutes', 'Lilja 4-ever', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Les triplettes de Belleville', 'When her grandson is kidnapped during the Tour de France, Madame Souza and her beloved pooch Bruno team up with the Belleville Sisters--an aged song-and-dance team from the days of Fred Astaire--to rescue him.', '2003-01-01', 1, '80 minutes', 'Les triplettes de Belleville', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gongdong gyeongbi guyeok JSA', 'After a shooting incident at the North/South Korean border/DMZ leaves 2 North Korean soldiers dead, a neutral Swiss/Swedish team investigates, what actually happened.', '2000-01-01', 1, '110 minutes', 'Gongdong gyeongbi guyeok JSA', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Count of Monte Cristo', 'A young man, falsely imprisoned by his jealous "friend", escapes and uses a hidden treasure to exact his revenge.', '2002-01-01', 1, '131 minutes', 'The Count of Monte Cristo', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Waking Life', 'A man shuffles through a dream meeting various people and discussing the meanings and purposes of the universe.', '2001-01-01', 1, '99 minutes', 'Waking Life', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Remember the Titans', 'The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.', '2000-01-01', 1, '113 minutes', 'Remember the Titans', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Wo hu cang long', 'A young Chinese warrior steals a sword from a famed swordsman and then escapes into a world of romantic adventure with a mysterious man in the frontier of the nation.', '2000-01-01', 1, '120 minutes', 'Wo hu cang long', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Todo sobre mi madre', 'Young Esteban wants to become a writer and also to discover the identity of his second mother, a trans woman, carefully concealed by his mother Manuela.', '1999-01-01', 1, '101 minutes', 'Todo sobre mi madre', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Cast Away', 'A FedEx executive undergoes a physical and emotional transformation after crash landing on a deserted island.', '2000-01-01', 1, '143 minutes', 'Cast Away', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Boondock Saints', 'Two Irish Catholic brothers become vigilantes and wipe out Boston''s criminal underworld in the name of God.', '1999-01-01', 1, '108 minutes', 'The Boondock Saints', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Insider', 'A research chemist comes under personal and professional attack when he decides to appear in a 60 Minutes exposé on Big Tobacco.', '1999-01-01', 1, '157 minutes', 'The Insider', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('October Sky', 'The true story of Homer Hickam, a coal miner''s son who was inspired by the first Sputnik launch to take up rocketry against his father''s wishes.', '1999-01-01', 1, '108 minutes', 'October Sky', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Shrek', 'A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.', '2001-01-01', 1, '90 minutes', 'Shrek', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', '1997-01-01', 1, '194 minutes', 'Titanic', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hana-bi', 'Nishi leaves the police in the face of harrowing personal and professional difficulties. Spiraling into depression, he makes questionable decisions.', '1997-01-01', 1, '103 minutes', 'Hana-bi', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gattaca', 'A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.', '1997-01-01', 1, '106 minutes', 'Gattaca', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Game', 'After a wealthy banker is given an opportunity to participate in a mysterious game, his life is turned upside down when he becomes unable to distinguish between the game and reality.', '1997-01-01', 1, '129 minutes', 'The Game', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Breaking the Waves', 'Oilman Jan is paralyzed in an accident. His wife, who prayed for his return, feels guilty; even more, when Jan urges her to have sex with another.', '1996-01-01', 1, '159 minutes', 'Breaking the Waves', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ed Wood', 'Ambitious but troubled movie director Edward D. Wood Jr. tries his best to fulfill his dreams, despite his lack of talent.', '1994-01-01', 1, '127 minutes', 'Ed Wood', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('What''s Eating Gilbert Grape', 'A young man in a small Midwestern town struggles to care for his mentally-disabled younger brother and morbidly obese mother while attempting to pursue his own happiness.', '1993-01-01', 1, '118 minutes', 'What''s Eating Gilbert Grape', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Tombstone', 'A successful lawman''s plans to retire anonymously in Tombstone, Arizona are disrupted by the kind of outlaws he was famous for eliminating.', '1993-01-01', 1, '130 minutes', 'Tombstone', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Sandlot', 'In the summer of 1962, a new kid in town is taken under the wing of a young baseball prodigy and his rowdy team, resulting in many adventures.', '1993-01-01', 1, '101 minutes', 'The Sandlot', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Remains of the Day', 'A butler who sacrificed body and soul to service in the years leading up to World War II realizes too late how misguided his loyalty was to his lordly employer.', '1993-01-01', 1, '134 minutes', 'The Remains of the Day', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Naked', 'Parallel tales of two sexually obsessed men, one hurting and annoying women physically and mentally, one wandering around the city talking to strangers and experiencing dimensions of life.', '1993-01-01', 1, '132 minutes', 'Naked', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Fugitive', 'Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.', '1993-01-01', 1, '130 minutes', 'The Fugitive', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Bronx Tale', 'A father becomes worried when a local gangster befriends his son in the Bronx in the 1960s.', '1993-01-01', 1, '121 minutes', 'A Bronx Tale', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Batman: Mask of the Phantasm', 'Batman is wrongly implicated in a series of murders of mob bosses actually done by a new vigilante assassin.', '1993-01-01', 1, '76 minutes', 'Batman: Mask of the Phantasm', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lat sau san taam', 'A tough-as-nails cop teams up with an undercover agent to shut down a sinister mobster and his crew.', '1992-01-01', 1, '128 minutes', 'Lat sau san taam', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Night on Earth', 'An anthology of 5 different cab drivers in 5 American and European cities and their remarkable fares on the same eventful night.', '1991-01-01', 1, '129 minutes', 'Night on Earth', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La double vie de Véronique', 'Two parallel stories about two identical women; one living in Poland, the other in France. They don''t know each other, but their lives are nevertheless profoundly connected.', '1991-01-01', 1, '98 minutes', 'La double vie de Véronique', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Boyz n the Hood', 'Follows the lives of three young males living in the Crenshaw ghetto of Los Angeles, dissecting questions of race, relationships, violence, and future prospects.', '1991-01-01', 1, '112 minutes', 'Boyz n the Hood', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Misery', 'After a famous author is rescued from a car crash by a fan of his novels, he comes to realize that the care he is receiving is only the beginning of a nightmare of captivity and abuse.', '1990-01-01', 1, '107 minutes', 'Misery', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Awakenings', 'The victims of an encephalitis epidemic many years ago have been catatonic ever since, but now a new drug offers the prospect of reviving them.', '1990-01-01', 1, '121 minutes', 'Awakenings', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Majo no takkyûbin', 'A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.', '1989-01-01', 1, '103 minutes', 'Majo no takkyûbin', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Glory', 'Robert Gould Shaw leads the U.S. Civil War''s first all-black volunteer company, fighting prejudices from both his own Union Army, and the Confederates.', '1989-01-01', 1, '122 minutes', 'Glory', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dip huet seung hung', 'A disillusioned assassin accepts one last hit in hopes of using his earnings to restore vision to a singer he accidentally blinded.', '1989-01-01', 1, '111 minutes', 'Dip huet seung hung', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Back to the Future Part II', 'After visiting 2015, Marty McFly must repeat his visit to 1955 to prevent disastrous changes to 1985...without interfering with his first trip.', '1989-01-01', 1, '108 minutes', 'Back to the Future Part II', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mississippi Burning', 'Two F.B.I. Agents with wildly different styles arrive in Mississippi to investigate the disappearance of some civil rights activists.', '1988-01-01', 1, '128 minutes', 'Mississippi Burning', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Predator', 'A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.', '1987-01-01', 1, '107 minutes', 'Predator', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Evil Dead II', 'The lone survivor of an onslaught of flesh-possessing spirits holes up in a cabin with a group of strangers while the demons continue their attack.', '1987-01-01', 1, '84 minutes', 'Evil Dead II', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ferris Bueller''s Day Off', 'A high school wise guy is determined to have a day off from school, despite what the Principal thinks of that.', '1986-01-01', 1, '103 minutes', 'Ferris Bueller''s Day Off', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Down by Law', 'Two men are framed and sent to jail, where they meet a murderer who helps them escape and leave the state.', '1986-01-01', 1, '107 minutes', 'Down by Law', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Goonies', 'A group of young misfits called The Goonies discover an ancient map and set out on an adventure to find a legendary pirate''s long-lost treasure.', '1985-01-01', 1, '114 minutes', 'The Goonies', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Color Purple', 'A black Southern woman struggles to find her identity after suffering abuse from her father and others over four decades.', '1985-01-01', 1, '154 minutes', 'The Color Purple', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Breakfast Club', 'Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.', '1985-01-01', 1, '97 minutes', 'The Breakfast Club', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Killing Fields', 'A journalist is trapped in Cambodia during tyrant Pol Pot''s bloody ''Year Zero'' cleansing campaign, which claimed the lives of two million ''undesirable'' civilians.', '1984-01-01', 1, '141 minutes', 'The Killing Fields', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ghostbusters', 'Three former parapsychology professors set up shop as a unique ghost removal service.', '1984-01-01', 1, '105 minutes', 'Ghostbusters', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Right Stuff', 'The story of the original Mercury 7 astronauts and their macho, seat-of-the-pants approach to the space program.', '1983-01-01', 1, '193 minutes', 'The Right Stuff', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The King of Comedy', 'Rupert Pupkin is a passionate yet unsuccessful comic who craves nothing more than to be in the spotlight and to achieve this, he stalks and kidnaps his idol to take the spotlight for himself.', '1982-01-01', 1, '109 minutes', 'The King of Comedy', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('E.T. the Extra-Terrestrial', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', '1982-01-01', 1, '115 minutes', 'E.T. the Extra-Terrestrial', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kramer vs. Kramer', 'Ted Kramer''s wife leaves him, allowing for a lost bond to be rediscovered between Ted and his son, Billy. But a heated custody battle ensues over the divorced couple''s son, deepening the wounds left by the separation.', '1979-01-01', 1, '105 minutes', 'Kramer vs. Kramer', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Days of Heaven', 'A hot-tempered farm laborer convinces the woman he loves to marry their rich but dying boss so that they can have a claim to his fortune.', '1978-01-01', 1, '94 minutes', 'Days of Heaven', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Outlaw Josey Wales', 'Missouri farmer Josey Wales joins a Confederate guerrilla unit and winds up on the run from the Union soldiers who murdered his family.', '1976-01-01', 1, '135 minutes', 'The Outlaw Josey Wales', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Man Who Would Be King', 'Two British former soldiers decide to set themselves up as Kings in Kafiristan, a land where no white man has set foot since Alexander the Great.', '1975-01-01', 1, '129 minutes', 'The Man Who Would Be King', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Conversation', 'A paranoid, secretive surveillance expert has a crisis of conscience when he suspects that the couple he is spying on will be murdered.', '1974-01-01', 1, '113 minutes', 'The Conversation', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La planète sauvage', 'On a faraway planet where blue giants rule, oppressed humanoids rebel against their machine-like leaders.', '1973-01-01', 1, '72 minutes', 'La planète sauvage', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Day of the Jackal', 'A professional assassin codenamed "Jackal" plots to kill Charles de Gaulle, the President of France.', '1973-01-01', 1, '143 minutes', 'The Day of the Jackal', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Badlands', 'An impressionable teenage girl from a dead-end town and her older greaser boyfriend embark on a killing spree in the South Dakota badlands.', '1973-01-01', 1, '94 minutes', 'Badlands', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Cabaret', 'A female girlie club entertainer in Weimar Republic era Berlin romances two men while the Nazi Party rises to power around them.', '1972-01-01', 1, '124 minutes', 'Cabaret', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Willy Wonka & the Chocolate Factory', 'A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka''s mysterious chocolate factory.', '1971-01-01', 1, '100 minutes', 'Willy Wonka & the Chocolate Factory', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Midnight Cowboy', 'A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.', '1969-01-01', 1, '113 minutes', 'Midnight Cowboy', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Wait Until Dark', 'A recently blinded woman is terrorized by a trio of thugs while they search for a heroin-stuffed doll they believe is in her apartment.', '1967-01-01', 1, '108 minutes', 'Wait Until Dark', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Guess Who''s Coming to Dinner', 'A couple''s attitudes are challenged when their daughter introduces them to her African-American fiancé.', '1967-01-01', 1, '108 minutes', 'Guess Who''s Coming to Dinner', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bonnie and Clyde', 'Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.', '1967-01-01', 1, '111 minutes', 'Bonnie and Clyde', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('My Fair Lady', 'Snobbish phonetics Professor Henry Higgins agrees to a wager that he can make flower girl Eliza Doolittle presentable in high society.', '1964-01-01', 1, '170 minutes', 'My Fair Lady', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mary Poppins', 'In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.', '1964-01-01', 1, '139 minutes', 'Mary Poppins', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Longest Day', 'The events of D-Day, told on a grand scale from both the Allied and German points of view.', '1962-01-01', 1, '178 minutes', 'The Longest Day', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jules et Jim', 'Decades of a love triangle concerning two friends and an impulsive woman.', '1962-01-01', 1, '105 minutes', 'Jules et Jim', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Innocents', 'A young governess for two children becomes convinced that the house and grounds are haunted.', '1961-01-01', 1, '100 minutes', 'The Innocents', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('À bout de souffle', 'A small-time thief steals a car and impulsively murders a motorcycle policeman. Wanted by the authorities, he reunites with a hip American journalism student and attempts to persuade her to run away with him to Italy.', '1960-01-01', 1, '90 minutes', 'À bout de souffle', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Red River', 'Dunson leads a cattle drive, the culmination of over 14 years of work, to its destination in Missouri. But his tyrannical behavior along the way causes a mutiny, led by his adopted son.', '1948-01-01', 1, '133 minutes', 'Red River', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Key Largo', 'A man visits his war buddy''s family hotel and finds a gangster running things. As a hurricane approaches, the two end up confronting each other.', '1948-01-01', 1, '100 minutes', 'Key Largo', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('To Have and Have Not', 'During World War II, American expatriate Harry Morgan helps transport a French Resistance leader and his beautiful wife to Martinique while romancing a sensuous lounge singer.', '1944-01-01', 1, '100 minutes', 'To Have and Have Not', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Shadow of a Doubt', 'A young girl, overjoyed when her favorite uncle comes to visit the family, slowly begins to suspect that he is in fact the "Merry Widow" killer sought by the authorities.', '1943-01-01', 1, '108 minutes', 'Shadow of a Doubt', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Stagecoach', 'A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.', '1939-01-01', 1, '96 minutes', 'Stagecoach', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Lady Vanishes', 'While travelling in continental Europe, a rich young playgirl realizes that an elderly lady seems to have disappeared from the train.', '1938-01-01', 1, '96 minutes', 'The Lady Vanishes', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bringing Up Baby', 'While trying to secure a $1 million donation for his museum, a befuddled paleontologist is pursued by a flighty and often irritating heiress and her pet leopard, Baby.', '1938-01-01', 1, '102 minutes', 'Bringing Up Baby', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bride of Frankenstein', 'Mary Shelley reveals the main characters of her novel survived: Dr. Frankenstein, goaded by an even madder scientist, builds his monster a mate.', '1935-01-01', 1, '75 minutes', 'Bride of Frankenstein', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Duck Soup', 'Rufus T. Firefly is named president/dictator of bankrupt Freedonia and declares war on neighboring Sylvania over the love of wealthy Mrs. Teasdale.', '1933-01-01', 1, '69 minutes', 'Duck Soup', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Scarface: The Shame of the Nation', 'An ambitious and nearly insane violent gangster climbs the ladder of success in the mob, but his weaknesses prove to be his downfall.', '1932-01-01', 1, '93 minutes', 'Scarface: The Shame of the Nation', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Frankenstein', 'Dr. Frankenstein dares to tamper with life and death by creating a human monster out of lifeless body parts.', '1931-01-01', 1, '70 minutes', 'Frankenstein', 7.8);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Roma', 'A year in the life of a middle-class family''s maid in Mexico City in the early 1970s.', '2018-01-01', 1, '135 minutes', 'Roma', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('God''s Own Country', 'Spring. Yorkshire. Young farmer Johnny Saxby numbs his daily frustrations with binge drinking and casual sex, until the arrival of a Romanian migrant worker for lambing season ignites an intense relationship that sets Johnny on a new path.', '2017-01-01', 1, '104 minutes', 'God''s Own Country', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Deadpool 2', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.', '2018-01-01', 1, '119 minutes', 'Deadpool 2', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Wind River', 'A veteran hunter helps an FBI agent investigate the murder of a young woman on a Wyoming Native American reservation.', '2017-01-01', 1, '107 minutes', 'Wind River', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Get Out', 'A young African-American visits his white girlfriend''s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', '2017-01-01', 1, '104 minutes', 'Get Out', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mission: Impossible - Fallout', 'Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.', '2018-01-01', 1, '147 minutes', 'Mission: Impossible - Fallout', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('En man som heter Ove', 'Ove, an ill-tempered, isolated retiree who spends his days enforcing block association rules and visiting his wife''s grave, has finally given up on life just as an unlikely friendship develops with his boisterous new neighbors.', '2015-01-01', 1, '116 minutes', 'En man som heter Ove', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('What We Do in the Shadows', 'Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts.', '2014-01-01', 1, '86 minutes', 'What We Do in the Shadows', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Omoide no Mânî', 'Due to 12 y.o. Anna''s asthma, she''s sent to stay with relatives of her guardian in the Japanese countryside. She likes to be alone, sketching. She befriends Marnie. Who is the mysterious, blonde Marnie.', '2014-01-01', 1, '103 minutes', 'Omoide no Mânî', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Theory of Everything', 'A look at the relationship between the famous physicist Stephen Hawking and his wife.', '2014-01-01', 1, '123 minutes', 'The Theory of Everything', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kingsman: The Secret Service', 'A spy organisation recruits a promising street kid into the agency''s training program, while a global threat emerges from a twisted tech genius.', '2014-01-01', 1, '129 minutes', 'Kingsman: The Secret Service', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Fault in Our Stars', 'Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.', '2014-01-01', 1, '126 minutes', 'The Fault in Our Stars', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Me and Earl and the Dying Girl', 'High schooler Greg, who spends most of his time making parodies of classic content_service.movies with his co-worker Earl, finds his outlook forever altered after befriending a classmate who has just been diagnosed with cancer.', '2015-01-01', 1, '105 minutes', 'Me and Earl and the Dying Girl', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Birdman or (The Unexpected Virtue of Ignorance)', 'A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.', '2014-01-01', 1, '119 minutes', 'Birdman or (The Unexpected Virtue of Ignorance)', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La vie d''Adèle', 'Adèle''s life is changed when she meets Emma, a young woman with blue hair, who will allow her to discover desire and to assert herself as a woman and as an adult. In front of others, Adèle grows, seeks herself, loses herself, and ultimately finds herself through love and loss.', '2013-01-01', 1, '180 minutes', 'La vie d''Adèle', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kai po che!', 'Three friends growing up in India at the turn of the millennium set out to open a training academy to produce the country''s next cricket stars.', '2013-01-01', 1, '130 minutes', 'Kai po che!', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Broken Circle Breakdown', 'Elise and Didier fall in love at first sight, in spite of their differences. He talks, she listens. He''s a romantic atheist, she''s a religious realist. When their daughter becomes seriously ill, their love is put on trial.', '2012-01-01', 1, '111 minutes', 'The Broken Circle Breakdown', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Captain America: The Winter Soldier', 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.', '2014-01-01', 1, '136 minutes', 'Captain America: The Winter Soldier', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rockstar', 'Janardhan Jakhar chases his dreams of becoming a big Rock star, during which he falls in love with Heer.', '2011-01-01', 1, '159 minutes', 'Rockstar', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Nebraska', 'An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.', '2013-01-01', 1, '115 minutes', 'Nebraska', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Wreck-It Ralph', 'A video game villain wants to be a hero and sets out to fulfill his dream, but his quest brings havoc to the whole arcade where he lives.', '2012-01-01', 1, '101 minutes', 'Wreck-It Ralph', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Le Petit Prince', 'A little girl lives in a very grown-up world with her mother, who tries to prepare her for it. Her neighbor, the Aviator, introduces the girl to an extraordinary world where anything is possible, the world of the Little Prince.', '2015-01-01', 1, '108 minutes', 'Le Petit Prince', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Detachment', 'A substitute teacher who drifts from classroom to classroom finds a connection to the students and teachers during his latest assignment.', '2011-01-01', 1, '98 minutes', 'Detachment', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Midnight in Paris', 'While on a trip to Paris with his fiancée''s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight.', '2011-01-01', 1, '96 minutes', 'Midnight in Paris', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Lego Movie', 'An ordinary LEGO construction worker, thought to be the prophesied as "special", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.', '2014-01-01', 1, '100 minutes', 'The Lego Movie', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gravity', 'Two astronauts work together to survive after an accident leaves them stranded in space.', '2013-01-01', 1, '91 minutes', 'Gravity', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Star Trek Into Darkness', 'After the crew of the Enterprise find an unstoppable force of terror from within their own organization, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.', '2013-01-01', 1, '132 minutes', 'Star Trek Into Darkness', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Beasts of No Nation', 'A drama based on the experiences of Agu, a child soldier fighting in the civil war of an unnamed African country.', '2015-01-01', 1, '137 minutes', 'Beasts of No Nation', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Social Network', 'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.', '2010-01-01', 1, '120 minutes', 'The Social Network', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('X: First Class', 'In the 1960s, superpowered humans Charles Xavier and Erik Lensherr work together to find others like them, but Erik''s vengeful pursuit of an ambitious mutant who ruined his life causes a schism to divide them.', '2011-01-01', 1, '131 minutes', 'X: First Class', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hangover', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.', '2009-01-01', 1, '100 minutes', 'The Hangover', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Skyfall', 'James Bond''s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', '2012-01-01', 1, '143 minutes', 'Skyfall', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Silver Linings Playbook', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', '2012-01-01', 1, '122 minutes', 'Silver Linings Playbook', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Argo', 'Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.', '2012-01-01', 1, '120 minutes', 'Argo', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('(500) Days of Summer', 'An offbeat romantic comedy about a woman who doesn''t believe true love exists, and the young man who falls for her.', '2009-01-01', 1, '95 minutes', '(500) Days of Summer', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harry Potter and the Deathly Hallows: Part 1', 'As Harry, Ron, and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.', '2010-01-01', 1, '146 minutes', 'Harry Potter and the Deathly Hallows: Part 1', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gake no ue no Ponyo', 'A five-year-old boy develops a relationship with Ponyo, a young goldfish princess who longs to become a human after falling in love with him.', '2008-01-01', 1, '101 minutes', 'Gake no ue no Ponyo', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Frost/Nixon', 'A dramatic retelling of the post-Watergate television interviews between British talk-show host David Frost and former president Richard Nixon.', '2008-01-01', 1, '122 minutes', 'Frost/Nixon', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Papurika', 'When a machine that allows therapists to enter their patients'' dreams is stolen, all Hell breaks loose. Only a young female therapist, Paprika, can stop it.', '2006-01-01', 1, '90 minutes', 'Papurika', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Changeling', 'Grief-stricken mother Christine Collins (Angelina Jolie) takes on the L.A.P.D. to her own detriment when it tries to pass off an obvious impostor as her missing child.', '2008-01-01', 1, '141 minutes', 'Changeling', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Flipped', 'Two eighth-graders start to have feelings for each other despite being total opposites.', '2010-01-01', 1, '90 minutes', 'Flipped', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Toki o kakeru shôjo', 'A high-school girl named Makoto acquires the power to travel back in time, and decides to use it for her own personal benefits. Little does she know that she is affecting the lives of others just as much as she is her own.', '2006-01-01', 1, '98 minutes', 'Toki o kakeru shôjo', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Death Note: Desu nôto', 'A battle between the world''s two greatest minds begins when Light Yagami finds the Death Note, a notebook with the power to kill, and decides to rid the world of criminals.', '2006-01-01', 1, '126 minutes', 'Death Note: Desu nôto', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('This Is England', 'A young boy becomes friends with a gang of skinheads. Friends soon become like family, and relationships will be pushed to the very limit.', '2006-01-01', 1, '101 minutes', 'This Is England', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ex Machina', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', '2014-01-01', 1, '108 minutes', 'Ex Machina', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Efter brylluppet', 'A manager of an orphanage in India is sent to Copenhagen, Denmark, where he discovers a life-altering family secret.', '2006-01-01', 1, '120 minutes', 'Efter brylluppet', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Last King of Scotland', 'Based on the events of the brutal Ugandan dictator Idi Amin''s regime as seen by his personal physician during the 1970s.', '2006-01-01', 1, '123 minutes', 'The Last King of Scotland', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Zodiac', 'In the late 1960s/early 1970s, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.', '2007-01-01', 1, '157 minutes', 'Zodiac', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lucky Number Slevin', 'A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the city''s most rival crime bosses. Under constant surveillance by Detective Brikowski and assassin Goodkat, he must get them before they get him.', '2006-01-01', 1, '110 minutes', 'Lucky Number Slevin', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Joyeux Noël', 'In December 1914, an unofficial Christmas truce on the Western Front allows soldiers from opposing sides of the First World War to gain insight into each other''s way of life.', '2005-01-01', 1, '116 minutes', 'Joyeux Noël', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Control', 'A profile of Ian Curtis, the enigmatic singer of Joy Division whose personal, professional, and romantic troubles led him to commit suicide at the age of 23.', '2007-01-01', 1, '122 minutes', 'Control', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Tangled', 'The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.', '2010-01-01', 1, '100 minutes', 'Tangled', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Zwartboek', 'In the Nazi-occupied Netherlands during World War II, a Jewish singer infiltrates the regional Gestapo headquarters for the Dutch resistance.', '2006-01-01', 1, '145 minutes', 'Zwartboek', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Brokeback Mountain', 'The story of a forbidden and secretive relationship between two cowboys, and their lives over the years.', '2005-01-01', 1, '134 minutes', 'Brokeback Mountain', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('3:10 to Yuma', 'A small-time rancher agrees to hold a captured outlaw who''s awaiting a train to go to court in Yuma. A battle of wills ensues as the outlaw tries to psych out the rancher.', '2007-01-01', 1, '122 minutes', '3:10 to Yuma', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Crash', 'Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.', '2004-01-01', 1, '112 minutes', 'Crash', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kung fu', 'In Shanghai, China in the 1940s, a wannabe gangster aspires to join the notorious "Axe Gang" while residents of a housing complex exhibit extraordinary powers in defending their turf.', '2004-01-01', 1, '99 minutes', 'Kung fu', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Bourne Supremacy', 'When Jason Bourne is framed for a CIA operation gone awry, he is forced to resume his former life as a trained assassin to survive.', '2004-01-01', 1, '108 minutes', 'The Bourne Supremacy', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Machinist', 'An industrial worker who hasn''t slept in a year begins to doubt his own sanity.', '2004-01-01', 1, '101 minutes', 'The Machinist', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ray', 'The story of the life and career of the legendary rhythm and blues musician Ray Charles, from his humble beginnings in the South, where he went blind at age seven, to his meteoric rise to stardom during the 1950s and 1960s.', '2004-01-01', 1, '152 minutes', 'Ray', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lost in Translation', 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.', '2003-01-01', 1, '102 minutes', 'Lost in Translation', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harry Potter and the Goblet of Fire', 'Harry Potter finds himself competing in a hazardous tournament between rival schools of magic, but he is distracted by recurring nightmares.', '2005-01-01', 1, '157 minutes', 'Harry Potter and the Goblet of Fire', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Man on Fire', 'In Mexico City, a former CIA operative swears vengeance on those who committed an unspeakable act against the family he was hired to protect.', '2004-01-01', 1, '146 minutes', 'Man on Fire', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Coraline', 'An adventurous 11-year-old girl finds another world that is a strangely idealized version of her frustrating  home, but it has sinister secrets.', '2009-01-01', 1, '100 minutes', 'Coraline', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Last Samurai', 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', '2003-01-01', 1, '154 minutes', 'The Last Samurai', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Magdalene Sisters', 'Three young Irish women struggle to maintain their spirits while they endure dehumanizing abuse as inmates of a Magdalene Sisters Asylum.', '2002-01-01', 1, '114 minutes', 'The Magdalene Sisters', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Good Bye Lenin!', 'In 1990, to protect his fragile mother from a fatal shock after a long coma, a young man must keep her from learning that her beloved nation of East Germany as she knew it has disappeared.', '2003-01-01', 1, '121 minutes', 'Good Bye Lenin!', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('In America', 'A family of Irish immigrants adjust to life on the mean streets of Hell''s Kitchen while also grieving the death of a child.', '2002-01-01', 1, '105 minutes', 'In America', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('I Am Sam', 'A mentally handicapped man fights for custody of his 7-year-old daughter and in the process teaches his cold-hearted lawyer the value of love and family.', '2001-01-01', 1, '132 minutes', 'I Am Sam', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Adaptation.', 'A lovelorn screenwriter becomes desperate as he tries and fails to adapt ''The Orchid Thief'' by Susan Orlean for the screen.', '2002-01-01', 1, '115 minutes', 'Adaptation.', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Black Hawk Down', '160 elite U.S. soldiers drop into Somalia to capture two top lieutenants of a renegade warlord and find themselves in a desperate battle with a large force of heavily-armed Somalis.', '2001-01-01', 1, '144 minutes', 'Black Hawk Down', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Road to Perdition', 'A mob enforcer''s son witnesses a murder, forcing him and his father to take to the road, and his father down a path of redemption and revenge.', '2002-01-01', 1, '117 minutes', 'Road to Perdition', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Das Experiment', 'For two weeks, 20 male participants are hired to play prisoners and guards in a prison. The "prisoners" have to follow seemingly mild rules, and the "guards" are told to retain order without using physical violence.', '2001-01-01', 1, '120 minutes', 'Das Experiment', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Billy Elliot', 'A talented young boy becomes torn between his unexpected love of dance and the disintegration of his family.', '2000-01-01', 1, '110 minutes', 'Billy Elliot', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hedwig and the Angry Inch', 'A gender-queer punk-rock singer from East Berlin tours the U.S. with her band as she tells her life story and follows the former lover/band-mate who stole her songs.', '2001-01-01', 1, '95 minutes', 'Hedwig and the Angry Inch', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ocean''s Eleven', 'Danny Ocean and his ten accomplices plan to rob three Las Vegas casinos simultaneously.', '2001-01-01', 1, '116 minutes', 'Ocean''s Eleven', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Vampire Hunter D: Bloodlust', 'When a girl is abducted by a vampire, a legendary bounty hunter is hired to bring her back.', '2000-01-01', 1, '103 minutes', 'Vampire Hunter D: Bloodlust', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('O Brother, Where Art Thou?', 'In the deep south during the 1930s, three escaped convicts search for hidden treasure while a relentless lawman pursues them.', '2000-01-01', 1, '107 minutes', 'O Brother, Where Art Thou?', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Interstate 60: Episodes of the Road', 'Neal Oliver, a very confused young man and an artist, takes a journey of a lifetime on a highway I60 that doesn''t exist on any of the maps, going to the places he never even heard of, searching for an answer and his dreamgirl.', '2002-01-01', 1, '116 minutes', 'Interstate 60: Episodes of the Road', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('South Park: Bigger, Longer & Uncut', 'When Stan Marsh and his friends go see an R-rated movie, they start cursing and their parents think that Canada is to blame.', '1999-01-01', 1, '81 minutes', 'South Park: Bigger, Longer & Uncut', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Office Space', 'Three company workers who hate their jobs decide to rebel against their greedy boss.', '1999-01-01', 1, '89 minutes', 'Office Space', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Happiness', 'The lives of several individuals intertwine as they go about their lives in their own unique ways, engaging in acts society as a whole might find disturbing in a desperate search for human connection.', '1998-01-01', 1, '134 minutes', 'Happiness', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Training Day', 'A rookie cop spends his first day as a Los Angeles narcotics officer with a rogue detective who isn''t what he appears to be.', '2001-01-01', 1, '122 minutes', 'Training Day', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rushmore', 'The extracurricular king of Rushmore Preparatory School is put on academic probation.', '1998-01-01', 1, '93 minutes', 'Rushmore', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Abre los ojos', 'A very handsome man finds the love of his life, but he suffers an accident and needs to have his face rebuilt by surgery after it is severely disfigured.', '1997-01-01', 1, '119 minutes', 'Abre los ojos', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Being John Malkovich', 'A puppeteer discovers a portal that leads literally into the head of movie star John Malkovich.', '1999-01-01', 1, '113 minutes', 'Being John Malkovich', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('As Good as It Gets', 'A single mother and waitress, a misanthropic author, and a gay artist form an unlikely friendship after the artist is assaulted in a robbery.', '1997-01-01', 1, '139 minutes', 'As Good as It Gets', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Fifth Element', 'In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.', '1997-01-01', 1, '126 minutes', 'The Fifth Element', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Le dîner de cons', 'A few friends have a weekly fools'' dinner, where each brings a fool along. Pierre finds a champion fool for next dinner. Surprise.', '1998-01-01', 1, '80 minutes', 'Le dîner de cons', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Donnie Brasco', 'An FBI undercover agent infiltrates the mob and finds himself identifying more with the mafia life, at the expense of his regular one.', '1997-01-01', 1, '127 minutes', 'Donnie Brasco', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Shine', 'Pianist David Helfgott, driven by his father and teachers, has a breakdown. Years later he returns to the piano, to popular if not critical acclaim.', '1996-01-01', 1, '105 minutes', 'Shine', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Primal Fear', 'An altar boy is accused of murdering a priest, and the truth is buried several layers deep.', '1996-01-01', 1, '129 minutes', 'Primal Fear', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hamlet', 'Hamlet, Prince of Denmark, returns home to find his father murdered and his mother remarrying the murderer, his uncle. Meanwhile, war is brewing.', '1996-01-01', 1, '242 minutes', 'Hamlet', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Little Princess', 'A young girl is relegated to servitude at a boarding school when her father goes missing and is presumed dead.', '1995-01-01', 1, '97 minutes', 'A Little Princess', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Do lok tin si', 'This Hong Kong-set crime drama follows the lives of a hitman, hoping to get out of the business, and his elusive female partner.', '1995-01-01', 1, '99 minutes', 'Do lok tin si', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Il postino', 'A simple Italian postman learns to love poetry while delivering mail to a famous poet, and then uses this to woo local beauty Beatrice.', '1994-01-01', 1, '108 minutes', 'Il postino', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Clerks', 'A day in the lives of two convenience clerks named Dante and Randal as they annoy customers, discuss content_service.movies, and play hockey on the store roof.', '1994-01-01', 1, '92 minutes', 'Clerks', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Short Cuts', 'The day-to-day lives of several suburban Los Angeles residents.', '1993-01-01', 1, '188 minutes', 'Short Cuts', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Philadelphia', 'When a man with HIV is fired by his law firm because of his condition, he hires a homophobic small time lawyer as the only willing advocate for a wrongful dismissal suit.', '1993-01-01', 1, '125 minutes', 'Philadelphia', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Muppet Christmas Carol', 'The Muppet characters tell their version of the classic tale of an old and bitter miser''s redemption on Christmas Eve.', '1992-01-01', 1, '85 minutes', 'The Muppet Christmas Carol', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Malcolm X', 'Biographical epic of the controversial and influential Black Nationalist leader, from his early life and career as a small-time gangster, to his ministry as a member of the Nation of Islam.', '1992-01-01', 1, '202 minutes', 'Malcolm X', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Last of the Mohicans', 'Three trappers protect the daughters of a British Colonel in the midst of the French and Indian War.', '1992-01-01', 1, '112 minutes', 'The Last of the Mohicans', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kurenai no buta', 'In 1930s Italy, a veteran World War I pilot is cursed to look like an anthropomorphic pig.', '1992-01-01', 1, '94 minutes', 'Kurenai no buta', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Glengarry Glen Ross', 'An examination of the machinations behind the scenes at a real estate office.', '1992-01-01', 1, '100 minutes', 'Glengarry Glen Ross', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Few Good Men', 'Military lawyer Lieutenant Daniel Kaffee defends Marines accused of murder. They contend they were acting under orders.', '1992-01-01', 1, '138 minutes', 'A Few Good Men', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Fried Green Tomatoes', 'A housewife who is unhappy with her life befriends an old lady in a nursing home and is enthralled by the tales she tells of people she used to know.', '1991-01-01', 1, '130 minutes', 'Fried Green Tomatoes', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Barton Fink', 'A renowned New York playwright is enticed to California to write for the content_service.movies and discovers the hellish truth of Hollywood.', '1991-01-01', 1, '116 minutes', 'Barton Fink', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Miller''s Crossing', 'Tom Reagan, an advisor to a Prohibition-era crime boss, tries to keep the peace between warring mobs but gets caught in divided loyalties.', '1990-01-01', 1, '115 minutes', 'Miller''s Crossing', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Who Framed Roger Rabbit', 'A toon-hating detective is a cartoon rabbit''s only hope to prove his innocence when he is accused of murder.', '1988-01-01', 1, '104 minutes', 'Who Framed Roger Rabbit', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Spoorloos', 'Rex and Saskia, a young couple in love, are on vacation. They stop at a busy service station and Saskia is abducted. After three years and no sign of Saskia, Rex begins receiving letters from the abductor.', '1988-01-01', 1, '107 minutes', 'Spoorloos', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Withnail & I', 'In 1969, two substance-abusing, unemployed actors retreat to the countryside for a holiday that proves disastrous.', '1987-01-01', 1, '107 minutes', 'Withnail & I', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Last Emperor', 'The story of the final Emperor of China.', '1987-01-01', 1, '163 minutes', 'The Last Emperor', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Empire of the Sun', 'A young English boy struggles to survive under Japanese occupation during World War II.', '1987-01-01', 1, '153 minutes', 'Empire of the Sun', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Der Name der Rose', 'An intellectually nonconformist friar investigates a series of mysterious deaths in an isolated abbey.', '1986-01-01', 1, '130 minutes', 'Der Name der Rose', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Blue Velvet', 'The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.', '1986-01-01', 1, '120 minutes', 'Blue Velvet', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Purple Rose of Cairo', 'In New Jersey in 1935, a movie character walks off the screen and into the real world.', '1985-01-01', 1, '82 minutes', 'The Purple Rose of Cairo', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('After Hours', 'An ordinary word processor has the worst night of his life after he agrees to visit a girl in Soho who he met that evening at a coffee shop.', '1985-01-01', 1, '97 minutes', 'After Hours', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Zelig', '"Documentary" about a man who can look and act like whoever he''s around, and meets various famous people.', '1983-01-01', 1, '79 minutes', 'Zelig', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Verdict', 'A lawyer sees the chance to salvage his career and self-respect by taking a medical malpractice case to trial rather than settling.', '1982-01-01', 1, '129 minutes', 'The Verdict', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Star Trek II: The Wrath of Khan', 'With the assistance of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using the life-generating  Genesis Device as the ultimate weapon.', '1982-01-01', 1, '113 minutes', 'Star Trek II: The Wrath of Khan', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('First Blood', 'A veteran Green Beret is forced by a cruel Sheriff and his deputies to flee into the mountains and wage an escalating one-man war against his pursuers.', '1982-01-01', 1, '93 minutes', 'First Blood', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Ordinary People', 'The accidental death of the older son of an affluent family deeply strains the relationships among the bitter mother, the good-natured father, and the guilt-ridden younger son.', '1980-01-01', 1, '124 minutes', 'Ordinary People', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Airplane!', 'A man afraid to fly must ensure that a plane lands safely after the pilots become sick.', '1980-01-01', 1, '88 minutes', 'Airplane!', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rupan sansei: Kariosutoro no shiro', 'A dashing thief, his gang of desperadoes and an intrepid policeman struggle to free a princess from an evil count''s clutches, and learn the hidden secret to a fabulous treasure that she holds part of a key to.', '1979-01-01', 1, '100 minutes', 'Rupan sansei: Kariosutoro no shiro', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Halloween', 'Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again.', '1978-01-01', 1, '91 minutes', 'Halloween', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Le locataire', 'A bureaucrat rents a Paris apartment where he finds himself drawn into a rabbit hole of dangerous paranoia.', '1976-01-01', 1, '126 minutes', 'Le locataire', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Love and Death', 'In czarist Russia, a neurotic soldier and his distant cousin formulate a plot to assassinate Napoleon.', '1975-01-01', 1, '85 minutes', 'Love and Death', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Taking of Pelham One Two Three', 'In New York, armed men hijack a subway car and demand a ransom for the passengers. Even if it''s paid, how could they get away?', '1974-01-01', 1, '104 minutes', 'The Taking of Pelham One Two Three', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Blazing Saddles', 'In order to ruin a western town, a corrupt politician appoints a black Sheriff, who promptly becomes his most formidable adversary.', '1974-01-01', 1, '93 minutes', 'Blazing Saddles', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Serpico', 'An honest New York cop named Frank Serpico blows the whistle on rampant corruption in the force only to have his comrades turn against him.', '1973-01-01', 1, '130 minutes', 'Serpico', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Enter the Dragon', 'A secret agent comes to an opium lord''s island fortress with other fighters for a martial-arts tournament.', '1973-01-01', 1, '102 minutes', 'Enter the Dragon', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Deliverance', 'Intent on seeing the Cahulawassee River before it''s dammed and turned into a lake, outdoor fanatic Lewis Medlock takes his friends on a canoeing trip they''ll never forget into the dangerous American back-country.', '1972-01-01', 1, '109 minutes', 'Deliverance', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The French Connection', 'A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.', '1971-01-01', 1, '104 minutes', 'The French Connection', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dirty Harry', 'When a madman calling himself "the Scorpio Killer" menaces the city, tough-as-nails San Francisco Police Inspector "Dirty" Harry Callahan is assigned to track down and ferret out the crazed psychopath.', '1971-01-01', 1, '102 minutes', 'Dirty Harry', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Where Eagles Dare', 'Allied agents stage a daring raid on a castle where the Nazis are holding American brigadier general George Carnaby prisoner, but that''s not all that''s really going on.', '1968-01-01', 1, '158 minutes', 'Where Eagles Dare', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Odd Couple', 'Two friends try sharing an apartment, but their ideas of housekeeping and lifestyles are as different as night and day.', '1968-01-01', 1, '105 minutes', 'The Odd Couple', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Dirty Dozen', 'During World War II, a rebellious U.S. Army Major is assigned a dozen convicted murderers to train and lead them into a mass assassination mission of German officers.', '1967-01-01', 1, '150 minutes', 'The Dirty Dozen', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Belle de jour', 'A frigid young housewife decides to spend her midweek afternoons as a prostitute.', '1967-01-01', 1, '100 minutes', 'Belle de jour', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Man for All Seasons', 'The story of Sir Thomas More, who stood up to King Henry VIII when the King rejected the Roman Catholic Church to obtain a divorce and remarry.', '1966-01-01', 1, '120 minutes', 'A Man for All Seasons', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Repulsion', 'A sex-repulsed woman who disapproves of her sister''s boyfriend sinks into depression and has horrific visions of rape and violence.', '1965-01-01', 1, '105 minutes', 'Repulsion', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Zulu', 'Outnumbered British soldiers do battle with Zulu warriors at Rorke''s Drift.', '1964-01-01', 1, '138 minutes', 'Zulu', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Goldfinger', 'While investigating a gold magnate''s smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.', '1964-01-01', 1, '110 minutes', 'Goldfinger', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Birds', 'A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people.', '1963-01-01', 1, '119 minutes', 'The Birds', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Cape Fear', 'A lawyer''s family is stalked by a man he once helped put in jail.', '1962-01-01', 1, '106 minutes', 'Cape Fear', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Peeping Tom', 'A young man murders women, using a movie camera to film their dying expressions of terror.', '1960-01-01', 1, '101 minutes', 'Peeping Tom', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Magnificent Seven', 'Seven gunfighters are hired by Mexican peasants to liberate their village from oppressive bandits.', '1960-01-01', 1, '128 minutes', 'The Magnificent Seven', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Les yeux sans visage', 'A surgeon causes an accident which leaves his daughter disfigured, and goes to extremes to give her a new face.', '1960-01-01', 1, '90 minutes', 'Les yeux sans visage', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Invasion of the Body Snatchers', 'A small-town doctor learns that the population of his community is being replaced by emotionless alien duplicates.', '1956-01-01', 1, '80 minutes', 'Invasion of the Body Snatchers', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Rebel Without a Cause', 'A rebellious young man with a troubled past comes to a new town, finding friends and enemies.', '1955-01-01', 1, '111 minutes', 'Rebel Without a Cause', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Ladykillers', 'Five oddball criminals planning a bank robbery rent rooms on a cul-de-sac from an octogenarian widow under the pretext that they are classical musicians.', '1955-01-01', 1, '91 minutes', 'The Ladykillers', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sabrina', 'A playboy becomes interested in the daughter of his family''s chauffeur, but it''s his more serious brother who would be the better man for her.', '1954-01-01', 1, '113 minutes', 'Sabrina', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Quiet Man', 'A retired American boxer returns to the village of his birth in Ireland, where he falls for a spirited redhead whose brother is contemptuous of their union.', '1952-01-01', 1, '129 minutes', 'The Quiet Man', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Day the Earth Stood Still', 'An alien lands and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.', '1951-01-01', 1, '92 minutes', 'The Day the Earth Stood Still', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The African Queen', 'In WWI Africa, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.', '1951-01-01', 1, '105 minutes', 'The African Queen', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gilda', 'A small-time gambler hired to work in a Buenos Aires casino discovers his employer''s new wife is his former lover.', '1946-01-01', 1, '110 minutes', 'Gilda', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Fantasia', 'A collection of animated interpretations of great works of Western classical music.', '1940-01-01', 1, '125 minutes', 'Fantasia', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Invisible Man', 'A scientist finds a way of becoming invisible, but in doing so, he becomes murderously insane.', '1933-01-01', 1, '71 minutes', 'The Invisible Man', 7.7);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dark Waters', 'A corporate defense attorney takes on an environmental lawsuit against a chemical company that exposes a lengthy history of pollution.', '2019-01-01', 1, '126 minutes', 'Dark Waters', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Searching', 'After his teenage daughter goes missing, a desperate father tries to find clues on her laptop.', '2018-01-01', 1, '102 minutes', 'Searching', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Once Upon a Time... in Hollywood', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood''s Golden Age in 1969 Los Angeles.', '2019-01-01', 1, '161 minutes', 'Once Upon a Time... in Hollywood', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Nelyubov', 'A couple going through a divorce must team up to find their son who has disappeared during one of their bitter arguments.', '2017-01-01', 1, '127 minutes', 'Nelyubov', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Florida Project', 'Set over one summer, the film follows precocious six-year-old Moonee as she courts mischief and adventure with her ragtag playmates and bonds with her rebellious but caring mother, all while living in the shadows of Walt Disney World.', '2017-01-01', 1, '111 minutes', 'The Florida Project', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Just Mercy', 'World-renowned civil rights defense attorney Bryan Stevenson works to free a wrongly condemned death row prisoner.', '2019-01-01', 1, '137 minutes', 'Just Mercy', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gifted', 'Frank, a single man raising his child prodigy niece Mary, is drawn into a custody battle with his mother.', '2017-01-01', 1, '101 minutes', 'Gifted', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Peanut Butter Falcon', 'Zak runs away from his care home to make his dream of becoming a wrestler come true.', '2019-01-01', 1, '97 minutes', 'The Peanut Butter Falcon', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Victoria', 'A young Spanish woman who has recently moved to Berlin finds her flirtation with a local guy turn potentially deadly as their night out with his friends reveals a dangerous secret.', '2015-01-01', 1, '138 minutes', 'Victoria', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mustang', 'When five orphan girls are seen innocently playing with boys on a beach, their scandalized conservative guardians confine them while forced marriages are arranged.', '2015-01-01', 1, '97 minutes', 'Mustang', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Guardians of the Galaxy Vol. 2', 'The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord''s encounter with his father the ambitious celestial being Ego.', '2017-01-01', 1, '136 minutes', 'Guardians of the Galaxy Vol. 2', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Baby Driver', 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', '2017-01-01', 1, '113 minutes', 'Baby Driver', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Only the Brave', 'Based on the true story of the Granite Mountain Hotshots, a group of elite firefighters who risk everything to protect a town from a historic wildfire.', '2017-01-01', 1, '134 minutes', 'Only the Brave', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Bridge of Spies', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', '2015-01-01', 1, '142 minutes', 'Bridge of Spies', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Incredibles 2', 'The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.', '2018-01-01', 1, '118 minutes', 'Incredibles 2', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Moana', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana''s island, she answers the Ocean''s call to seek out the Demigod to set things right.', '2016-01-01', 1, '107 minutes', 'Moana', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sicario', 'An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.', '2015-01-01', 1, '121 minutes', 'Sicario', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Creed', 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.', '2015-01-01', 1, '133 minutes', 'Creed', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Leviafan', 'In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man''s arrival brings further misfortune for Kolya and his family.', '2014-01-01', 1, '140 minutes', 'Leviafan', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hell or High Water', 'A divorced father and his ex-con older brother resort to a desperate scheme in order to save their family''s ranch in West Texas.', '2016-01-01', 1, '102 minutes', 'Hell or High Water', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Philomena', 'A world-weary political journalist picks up the story of a woman''s search for her son, who was taken away from her decades ago after she became pregnant and was forced to live in a convent.', '2013-01-01', 1, '98 minutes', 'Philomena', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dawn of the Planet of the Apes', 'A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.', '2014-01-01', 1, '130 minutes', 'Dawn of the Planet of the Apes', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('El cuerpo', 'A detective searches for the body of a femme fatale which has gone missing from a morgue.', '2012-01-01', 1, '112 minutes', 'El cuerpo', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Serbuan maut', 'A S.W.A.T. team becomes trapped in a tenement run by a ruthless mobster and his army of killers and thugs.', '2011-01-01', 1, '101 minutes', 'Serbuan maut', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('End of Watch', 'Shot documentary-style, this film follows the daily grind of two young police officers in LA who are partners and friends, and what happens when they meet criminal forces greater than themselves.', '2012-01-01', 1, '109 minutes', 'End of Watch', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kari-gurashi no Arietti', 'The Clock family are four-inch-tall people who live anonymously in another family''s residence, borrowing simple items to make their home. Life changes for the Clocks when their teenage daughter, Arrietty, is discovered.', '2010-01-01', 1, '94 minutes', 'Kari-gurashi no Arietti', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Star Is Born', 'A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.', '2018-01-01', 1, '136 minutes', 'A Star Is Born', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('True Grit', 'A stubborn teenager enlists the help of a tough U.S. Marshal to track down her father''s murderer.', '2010-01-01', 1, '110 minutes', 'True Grit', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Hævnen', 'The lives of two Danish families cross each other, and an extraordinary but risky friendship comes into bud. But loneliness, frailty and sorrow lie in wait.', '2010-01-01', 1, '118 minutes', 'Hævnen', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Despicable Me', 'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.', '2010-01-01', 1, '95 minutes', 'Despicable Me', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('50/50', 'Inspired by a true story, a comedy centered on a 27-year-old guy who learns of his cancer diagnosis and his subsequent struggle to beat the disease.', '2011-01-01', 1, '100 minutes', '50/50', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kick-Ass', 'Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.', '2010-01-01', 1, '117 minutes', 'Kick-Ass', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Celda 211', 'The story of two men on different sides of a prison riot -- the inmate leading the rebellion and the young guard trapped in the revolt, who poses as a prisoner in a desperate attempt to survive the ordeal.', '2009-01-01', 1, '113 minutes', 'Celda 211', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Moneyball', 'Oakland A''s general manager Billy Beane''s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.', '2011-01-01', 1, '133 minutes', 'Moneyball', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La piel que habito', 'A brilliant plastic surgeon, haunted by past tragedies, creates a type of synthetic skin that withstands any kind of damage. His guinea pig: a mysterious and volatile woman who holds the key to his obsession.', '2011-01-01', 1, '120 minutes', 'La piel que habito', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Zombieland', 'A shy student trying to reach his family in Ohio, a gun-toting tough guy trying to find the last Twinkie, and a pair of sisters trying to get to an amusement park join forces to travel across a zombie-filled America.', '2009-01-01', 1, '88 minutes', 'Zombieland', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Die Welle', 'A high school teacher''s experiment to demonstrate to his students what life is like under a dictatorship spins horribly out of control when he forms a social unit with a life of its own.', '2008-01-01', 1, '107 minutes', 'Die Welle', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sherlock Holmes', 'Detective Sherlock Holmes and his stalwart partner Watson engage in a battle of wits and brawn with a nemesis whose plot is a threat to all of England.', '2009-01-01', 1, '128 minutes', 'Sherlock Holmes', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Blind Side', 'The story of Michael Oher, a homeless and traumatized boy who became an All-American football player and first-round NFL draft pick with the help of a caring woman and her family.', '2009-01-01', 1, '129 minutes', 'The Blind Side', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Visitor', 'A college professor travels to New York City to attend a conference and finds a young couple living in his apartment.', '2007-01-01', 1, '104 minutes', 'The Visitor', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Seven Pounds', 'A man with a fateful secret embarks on an extraordinary journey of redemption by forever changing the lives of seven strangers.', '2008-01-01', 1, '123 minutes', 'Seven Pounds', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Eastern Promises', 'A teenager who dies during childbirth leaves clues in her journal that could tie her child to a rape involving a violent Russian mob family.', '2007-01-01', 1, '100 minutes', 'Eastern Promises', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Stardust', 'In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he''ll retrieve a fallen star by venturing into the magical realm.', '2007-01-01', 1, '127 minutes', 'Stardust', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Secret of Kells', 'A young boy in a remote medieval outpost under siege from barbarian raids is beckoned to adventure when a celebrated master illuminator arrives with an ancient book, brimming with secret wisdom and powers.', '2009-01-01', 1, '71 minutes', 'The Secret of Kells', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Inside Man', 'A police detective, a bank robber, and a high-power broker enter high-stakes negotiations after the criminal''s brilliant heist spirals into a hostage situation.', '2006-01-01', 1, '129 minutes', 'Inside Man', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Gone Baby Gone', 'Two Boston area detectives investigate a little girl''s kidnapping, which ultimately turns into a crisis both professionally and personally.', '2007-01-01', 1, '114 minutes', 'Gone Baby Gone', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('La Vie En Rose', 'Biopic of the iconic French singer Édith Piaf. Raised by her grandmother in a brothel, she was discovered while singing on a street corner at the age of 19. Despite her success, Piaf''s life was filled with tragedy.', '2007-01-01', 1, '140 minutes', 'La Vie En Rose', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Huo Yuan Jia', 'A biography of Chinese Martial Arts Master Huo Yuanjia, who is the founder and spiritual guru of the Jin Wu Sports Federation.', '2006-01-01', 1, '104 minutes', 'Huo Yuan Jia', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Illusionist', 'In turn-of-the-century Vienna, a magician uses his abilities to secure the love of a woman far above his social standing.', '2006-01-01', 1, '110 minutes', 'The Illusionist', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dead Man''s Shoes', 'A disaffected soldier returns to his hometown to get even with the thugs who brutalized his mentally-challenged brother years ago.', '2004-01-01', 1, '90 minutes', 'Dead Man''s Shoes', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harry Potter and the Half-Blood Prince', 'As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as "the property of the Half-Blood Prince" and begins to learn more about Lord Voldemort''s dark past.', '2009-01-01', 1, '153 minutes', 'Harry Potter and the Half-Blood Prince', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('300', 'King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.', '2006-01-01', 1, '117 minutes', '300', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Match Point', 'At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.', '2005-01-01', 1, '124 minutes', 'Match Point', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Watchmen', 'In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.', '2009-01-01', 1, '162 minutes', 'Watchmen', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lord of War', 'An arms dealer confronts the morality of his work as he is being chased by an INTERPOL Agent.', '2005-01-01', 1, '122 minutes', 'Lord of War', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Saw', 'Two strangers awaken in a room with no recollection of how they got there, and soon discover they''re pawns in a deadly game perpetrated by a notorious serial killer.', '2004-01-01', 1, '103 minutes', 'Saw', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Synecdoche, New York', 'A theatre director struggles with his work, and the women in his life, as he creates a life-size replica of New York City inside a warehouse as part of his new play.', '2008-01-01', 1, '124 minutes', 'Synecdoche, New York', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mysterious Skin', 'A teenage hustler and a young man obsessed with alien abductions cross paths, together discovering a horrible, liberating  truth.', '2004-01-01', 1, '105 minutes', 'Mysterious Skin', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Jeux d''enfants', 'As adults, best friends Julien and Sophie continue the odd game they started as children -- a fearless competition to outdo one another with daring and outrageous stunts. While they often act out to relieve one another''s pain, their game might be a way to avoid the fact that they are truly meant for one another.', '2003-01-01', 1, '93 minutes', 'Jeux d''enfants', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Un long dimanche de fiançailles', 'Tells the story of a young woman''s relentless search for her fiancé, who has disappeared from the trenches of the Somme during World War One.', '2004-01-01', 1, '133 minutes', 'Un long dimanche de fiançailles', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Station Agent', 'When his only friend dies, a man born with dwarfism moves to rural New Jersey to live a life of solitude, only to meet a chatty hot dog vendor and a woman dealing with her own personal loss.', '2003-01-01', 1, '89 minutes', 'The Station Agent', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('21 Grams', 'A freak accident brings together a critically ill mathematician, a grieving mother, and a born-again ex-con.', '2003-01-01', 1, '124 minutes', '21 Grams', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Boksuneun naui geot', 'A recently laid off factory worker kidnaps his former boss'' friend''s daughter, hoping to use the ransom money to pay for his sister''s kidney transplant.', '2002-01-01', 1, '129 minutes', 'Boksuneun naui geot', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Finding Neverland', 'The story of Sir J.M. Barrie''s friendship with a family who inspired him to create Peter Pan.', '2004-01-01', 1, '106 minutes', 'Finding Neverland', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('25th Hour', 'Cornered by the DEA, convicted New York drug dealer Montgomery Brogan reevaluates his life in the 24 remaining hours before facing a seven-year jail term.', '2002-01-01', 1, '135 minutes', '25th Hour', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Butterfly Effect', 'Evan Treborn suffers blackouts during significant events of his life. As he grows up, he finds a way to remember these lost memories and a supernatural way to alter his life by reading his journal.', '2004-01-01', 1, '113 minutes', 'The Butterfly Effect', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('28 Days Later...', 'Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.', '2002-01-01', 1, '113 minutes', '28 Days Later...', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Batoru rowaiaru', 'In the future, the Japanese government captures a class of ninth-grade students and forces them to kill each other under the revolutionary "Battle Royale" act.', '2000-01-01', 1, '114 minutes', 'Batoru rowaiaru', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Royal Tenenbaums', 'The eccentric members of a dysfunctional family reluctantly gather under the same roof for various reasons.', '2001-01-01', 1, '110 minutes', 'The Royal Tenenbaums', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Y tu mamá también', 'In Mexico, two teenage boys and an attractive older woman embark on a road trip and learn a thing or two about life, friendship, sex, and each other.', '2001-01-01', 1, '106 minutes', 'Y tu mamá también', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Harry Potter and the Sorcerer''s Stone', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.', '2001-01-01', 1, '152 minutes', 'Harry Potter and the Sorcerer''s Stone', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Others', 'A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted.', '2001-01-01', 1, '101 minutes', 'The Others', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Blow', 'The story of how George Jung, along with the Medellín Cartel headed by Pablo Escobar, established the American cocaine market in the 1970s in the United States.', '2001-01-01', 1, '124 minutes', 'Blow', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Enemy at the Gates', 'A Russian and a German sniper play a game of cat-and-mouse during the Battle of Stalingrad.', '2001-01-01', 1, '131 minutes', 'Enemy at the Gates', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Minority Report', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', '2002-01-01', 1, '145 minutes', 'Minority Report', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Hurricane', 'The story of Rubin ''Hurricane'' Carter, a boxer wrongly imprisoned for murder, and the people who aided in his fight to prove his innocence.', '1999-01-01', 1, '146 minutes', 'The Hurricane', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('American Psycho', 'A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.', '2000-01-01', 1, '101 minutes', 'American Psycho', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lola rennt', 'After a botched money delivery, Lola has 20 minutes to come up with 100,000 Deutschmarks.', '1998-01-01', 1, '81 minutes', 'Lola rennt', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Thin Red Line', 'Adaptation of James Jones'' autobiographical 1962 novel, focusing on the conflict at Guadalcanal during the second World War.', '1998-01-01', 1, '170 minutes', 'The Thin Red Line', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mulan', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China''s greatest heroines in the process.', '1998-01-01', 1, '88 minutes', 'Mulan', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Fear and Loathing in Las Vegas', 'An oddball journalist and his psychopathic lawyer travel to Las Vegas for a series of psychedelic escapades.', '1998-01-01', 1, '118 minutes', 'Fear and Loathing in Las Vegas', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Funny Games', 'Two violent young men take a mother, father, and son hostage in their vacation cabin and force them to play sadistic "games" with one another for their own amusement.', '1997-01-01', 1, '108 minutes', 'Funny Games', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dark City', 'A man struggles with memories of his past, which include a wife he cannot remember and a nightmarish world no one else ever seems to wake up from.', '1998-01-01', 1, '100 minutes', 'Dark City', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sleepers', 'After a prank goes disastrously wrong, a group of boys are sent to a detention center where they are brutalized. Thirteen years later, an unexpected random encounter with a former guard gives them a chance for revenge.', '1996-01-01', 1, '147 minutes', 'Sleepers', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lost Highway', 'Anonymous videotapes presage a musician''s murder conviction, and a gangster''s girlfriend leads a mechanic astray.', '1997-01-01', 1, '134 minutes', 'Lost Highway', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Sense and Sensibility', 'Rich Mr. Dashwood dies, leaving his second wife and her three daughters poor by the rules of inheritance. The two eldest daughters are the title opposites.', '1995-01-01', 1, '136 minutes', 'Sense and Sensibility', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Die Hard: With a Vengeance', 'John McClane and a Harlem store owner are targeted by German terrorist Simon in New York City, where he plans to rob the Federal Reserve Building.', '1995-01-01', 1, '128 minutes', 'Die Hard: With a Vengeance', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dead Man', 'On the run after murdering a man, accountant William Blake encounters a strange aboriginal American man named Nobody who prepares him for his journey into the spiritual world.', '1995-01-01', 1, '121 minutes', 'Dead Man', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Bridges of Madison County', 'Photographer Robert Kincaid wanders into the life of housewife Francesca Johnson for four days in the 1960s.', '1995-01-01', 1, '135 minutes', 'The Bridges of Madison County', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Trois couleurs: Blanc', 'After his wife divorces him, a Polish immigrant plots to get even with her.', '1994-01-01', 1, '92 minutes', 'Trois couleurs: Blanc', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Falling Down', 'An ordinary man frustrated with the various flaws he sees in society begins to psychotically and violently lash out against them.', '1993-01-01', 1, '113 minutes', 'Falling Down', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Dazed and Confused', 'The adventures of high school and junior high students on the last day of school in May 1976.', '1993-01-01', 1, '102 minutes', 'Dazed and Confused', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('My Cousin Vinny', 'Two New Yorkers accused of murder in rural Alabama while on their way back to college call in the help of one of their cousins, a loudmouth lawyer with no trial experience.', '1992-01-01', 1, '120 minutes', 'My Cousin Vinny', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Omohide poro poro', 'A twenty-seven-year-old office worker travels to the countryside while reminiscing about her childhood in Tokyo.', '1991-01-01', 1, '118 minutes', 'Omohide poro poro', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Delicatessen', 'Post-apocalyptic surrealist black comedy about the landlord of an apartment building who occasionally prepares a delicacy for his odd tenants.', '1991-01-01', 1, '99 minutes', 'Delicatessen', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Home Alone', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', '1990-01-01', 1, '103 minutes', 'Home Alone', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Godfather: Part III', 'Follows Michael Corleone, now in his 60s, as he seeks to free his family from crime and find a suitable successor to his empire.', '1990-01-01', 1, '162 minutes', 'The Godfather: Part III', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('When Harry Met Sally...', 'Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.', '1989-01-01', 1, '95 minutes', 'When Harry Met Sally...', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Little Mermaid', 'A mermaid princess makes a Faustian bargain in an attempt to become human and win a prince''s love.', '1989-01-01', 1, '83 minutes', 'The Little Mermaid', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Naked Gun: From the Files of Police Squad!', 'Incompetent police Detective Frank Drebin must foil an attempt to assassinate Queen Elizabeth II.', '1988-01-01', 1, '85 minutes', 'The Naked Gun: From the Files of Police Squad!', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Planes, Trains & Automobiles', 'A man must struggle to travel home for Thanksgiving with a lovable oaf of a shower curtain ring salesman as his only companion.', '1987-01-01', 1, '93 minutes', 'Planes, Trains & Automobiles', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lethal Weapon', 'Two newly paired cops who are complete opposites must put aside their differences in order to catch a gang of drug smugglers.', '1987-01-01', 1, '109 minutes', 'Lethal Weapon', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Blood Simple', 'The owner of a seedy small-town Texas bar discovers that one of his employees is having an affair with his wife. A chaotic chain of misunderstandings, lies and mischief ensues after he devises a plot to have them murdered.', '1984-01-01', 1, '99 minutes', 'Blood Simple', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('On Golden Pond', 'Norman is a curmudgeon with an estranged relationship with his daughter Chelsea. At Golden Pond, he and his wife nevertheless agree to care for Billy, the son of Chelsea''s new boyfriend, and a most unexpected relationship blooms.', '1981-01-01', 1, '109 minutes', 'On Golden Pond', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Mad Max 2', 'In the post-apocalyptic Australian wasteland, a cynical drifter agrees to help a small, gasoline-rich community escape a horde of bandits.', '1981-01-01', 1, '96 minutes', 'Mad Max 2', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Warriors', 'In the near future, a charismatic leader summons the street gangs of New York City in a bid to take it over. When he is killed, The Warriors are falsely blamed and now must fight their way home while every other gang is hunting them down.', '1979-01-01', 1, '92 minutes', 'The Warriors', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Muppet Movie', 'Kermit and his newfound friends trek across America to find success in Hollywood, but a frog legs merchant is after Kermit.', '1979-01-01', 1, '95 minutes', 'The Muppet Movie', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Escape from Alcatraz', 'Alcatraz is the most secure prison of its time. It is believed that no one can ever escape from it, until three daring men make a possible successful attempt at escaping from one of the most infamous prisons in the world.', '1979-01-01', 1, '112 minutes', 'Escape from Alcatraz', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Watership Down', 'Hoping to escape destruction by human developers and save their community, a colony of rabbits, led by Hazel and Fiver, seek out a safe place to set up a new warren.', '1978-01-01', 1, '91 minutes', 'Watership Down', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Midnight Express', 'Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.', '1978-01-01', 1, '121 minutes', 'Midnight Express', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Close Encounters of the Third Kind', 'Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.', '1977-01-01', 1, '138 minutes', 'Close Encounters of the Third Kind', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Long Goodbye', 'Private investigator Philip Marlowe helps a friend out of a jam, but in doing so gets implicated in his wife''s murder.', '1973-01-01', 1, '112 minutes', 'The Long Goodbye', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Giù la testa', 'A low-life bandit and an I.R.A. explosives expert rebel against the government and become heroes of the Mexican Revolution.', '1971-01-01', 1, '157 minutes', 'Giù la testa', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Kelly''s Heroes', 'A group of U.S. soldiers sneaks across enemy lines to get their hands on a secret stash of Nazi treasure.', '1970-01-01', 1, '144 minutes', 'Kelly''s Heroes', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The Jungle Book', 'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.', '1967-01-01', 1, '78 minutes', 'The Jungle Book', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Blowup', 'A fashion photographer unknowingly captures a death on film after following two lovers in a park.', '1966-01-01', 1, '111 minutes', 'Blowup', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('A Hard Day''s Night', 'Over two "typical" days in the life of The Beatles, the boys struggle to keep themselves and Sir Paul McCartney''s mischievous grandfather in check while preparing for a live television performance.', '1964-01-01', 1, '87 minutes', 'A Hard Day''s Night', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Breakfast at Tiffany''s', 'A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.', '1961-01-01', 1, '115 minutes', 'Breakfast at Tiffany''s', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Giant', 'Sprawling epic covering the life of a Texas cattle rancher and his family and associates.', '1956-01-01', 1, '201 minutes', 'Giant', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('From Here to Eternity', 'In Hawaii in 1941, a private is cruelly punished for not boxing on his unit''s team, while his captain''s wife and second-in-command are falling in love.', '1953-01-01', 1, '118 minutes', 'From Here to Eternity', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('Lifeboat', 'Several survivors of a torpedoed merchant ship in World War II find themselves in the same lifeboat with one of the crew members of the U-boat that sank their ship.', '1944-01-01', 1, '97 minutes', 'Lifeboat', 7.6);

INSERT INTO content_service.movies (title, description, release_date, country_id, duration, original_title, rating )
VALUES ('The 39 Steps', 'A man in London tries to help a counter-espionage Agent. But when the Agent is killed, and the man stands accused, he must go on the run to save himself and stop a spy ring which is trying to steal top secret information.', '1935-01-01', 1, '86 minutes', 'The 39 Steps', 7.6);
