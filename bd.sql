create schema project_db;

set search_path = project_db, public;

CREATE TABLE weather_recommend (
    id SERIAL PRIMARY KEY,
    temp INTEGER,
    description TEXT,
    recommend TEXT
);


INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'пасмурно', 'на улице прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'небольшой снег', 'не забудьте взять шапку и шарф, ожидается снег');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'небольшой дождь', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'снег', 'на улице ожидается снег, берите с собой тёплые рукавички, шарф и шапку');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-3, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'пасмурно', 'на улице прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'небольшой снег', 'не забудьте взять шапку и шарф, ожидается снег');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'небольшой дождь', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'снег', 'на улице ожидается снег, берите с собой тёплые рукавички, шарф и шапку');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-2, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'пасмурно', 'на улице прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'небольшой снег', 'не забудьте взять шапку и шарф, ожидается снег');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'небольшой дождь', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'снег', 'на улице ожидается снег, берите с собой тёплые рукавички, шарф и шапку');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (-1, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'пасмурно', 'на улице прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'небольшой дождь', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'снег', 'на улице ожидается снег, берите с собой тёплые рукавички, шарф и шапку');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (0, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'пасмурно', 'на улице плюс, но всё ещё прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (1, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'пасмурно', 'на улице плюс, но всё ещё прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (2, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'пасмурно', 'на улице плюс, но всё ещё прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (3, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'пасмурно', 'на улице плюс, но всё ещё прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (4, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'пасмурно', 'на улице плюс, но всё ещё прохладно, укутайтесь потеплее');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (5, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'пасмурно', 'на улице прохладно, укутайтесь в шарф, чтобы не замёрзнуть');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (6, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'пасмурно', 'на улице прохладно, укутайтесь в шарф, чтобы не замёрзнуть');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (7, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'пасмурно', 'на улице прохладно, укутайтесь в шарф, чтобы не замёрзнуть');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (8, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'пасмурно', 'на улице прохладно, укутайтесь в шарф, чтобы не замёрзнуть');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (9, 'дождь', 'на улице собирается дождь, не забудьте зонт');

INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'пасмурно', 'на улице прохладно, укутайтесь в шарф, чтобы не замёрзнуть');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'небольшой снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'небольшой дождь', 'возьмите с собой плащ или зонтик, он вам пригодится!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'ясно', 'отличная погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'облачно с прояснениями', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'переменная облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'небольшая облачность', 'хорошая погода для прогулки');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'снег', 'на улице мокрый снег, наденьте непромокаемую обувь!');
INSERT INTO weather_recommend (temp, description, recommend) VALUES (10, 'дождь', 'на улице собирается дождь, не забудьте зонт');


SELECT * FROM weather_recommend;
