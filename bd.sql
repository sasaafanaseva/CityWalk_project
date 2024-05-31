create schema project_db;

set search_path = project_db, public;

CREATE TABLE weather_recommend (
    id SERIAL PRIMARY KEY,
    temp INTEGER,
    description TEXT,
    recommend TEXT,
    ind INTEGER
);

CREATE TABLE history (
    id SERIAL PRIMARY KEY,
    point1 TEXT,
    point2 TEXT,
    point3 TEXT,
    point4 TEXT,
    point5 TEXT,
    point6 TEXT,
    person TEXT
);

CREATE TABLE users (
    email TEXT PRIMARY KEY,
    password BYTEA/*(если хранить в тексте то немного при переводе в байты меняется строка пароля(переводить в байты нужно для bcript))*/
);

CREATE TABLE rating(
    organization TEXT,
    rating INT,
    person TEXT
);

CREATE TABLE comments(
    organization TEXT,
    comment TEXT,
    person TEXT
);


INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'пасмурно', 'Утром будет прохладно, рекомендуем надеть теплую кофту или свитер.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой снег', 'Утром ожидается мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой дождь', 'Утром ожидается небольшой дождь, рекомендуем надеть непромокаемую обувь и взять с собой зонт.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'ясно', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'солнечно', 'С утра будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'облачно с прояснениями', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'переменная облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшая облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'снег', 'С утра на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 1);


INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой снег', 'Утром на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой дождь', 'Утром ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'ясно', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'солнечно', 'С утра будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'облачно с прояснениями', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'переменная облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшая облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'снег', 'С утра на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой снег', 'Утром на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой дождь', 'Утром ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'ясно', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'солнечно', 'С утра будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'облачно с прояснениями', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'переменная облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшая облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'снег', 'С утра на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой снег', 'Утром на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой дождь', 'Утром ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'ясно', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'солнечно', 'С утра будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'облачно с прояснениями', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'переменная облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшая облачность', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'снег', 'С утра на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой снегопад', 'Утром будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой дождь', 'С утра будет противная погода, обязательно выберите подходящую одежду и обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой туман', 'Утром возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'облачно с прояснениями', 'Утром, возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'переменная облачность', 'С утра будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'прохладно и ветрено', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой снегопад', 'Утром будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой дождь', 'С утра будет противная погода, обязательно выберите подходящую одежду и обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой туман', 'Утром возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'облачно с прояснениями', 'Утром, возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'переменная облачность', 'С утра будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'прохладно и ветрено', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'пасмурно', 'Утром на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой дождь', 'С утра будет противная погода, обязательно выберите подходящую одежду и обувь.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой туман', 'Утром возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'облачно с прояснениями', 'Утром, возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'переменная облачность', 'С утра будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'прохладно и ветрено', 'С утра будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'дождь', 'С утра на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'пасмурно', 'С утра на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшой дождь', 'С утра возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'переменная облачность', 'С утра наденьте свитер и куртку на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'пасмурно', 'С утра на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшой дождь', 'С утра возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'переменная облачность', 'С утра наденьте свитер и куртку на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'пасмурно', 'С утра на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшой дождь', 'С утра возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'солнечно', 'С утра будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'переменная облачность', 'С утра наденьте свитер и куртку на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшой дождь', 'С утра возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'солнечно', 'С утра будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'С утра возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'С утра будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'С утра возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'С утра будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);


INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'облачно с прояснениями', 'С утра будет облачно, поэтому на прогулку стоит одеться потеплее', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);


INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'пасмурно',  'С утра на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'пасмурно', 'С утра на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'пасмурно', 'С утра на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'пасмурно', 'С утра на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'пасмурно', 'С утра на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшая облачность', 'С утра небольшая облачность, для прогулки подойдет толстовка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'пасмурно', 'С утра на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'облачно с прояснениями', 'С утра будет облачно, но и солнце иногда будет выглядывать', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшая облачность', 'С утра небольшая облачность, для прогулки подойдет толстовка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'солнечно', 'С утра будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'ясно', 'С утра будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'солнечно', 'С утра будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'ясно', 'С утра будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'солнечно', 'С утра будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'ясно', 'С утра будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'солнечно', 'С утра будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'ясно', 'С утра будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'пасмурно', 'С утра на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшой дождь', 'С утра возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'солнечно', 'С утра будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'ясно', 'С утра будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'облачно с прояснениями', 'С утра советуем одеваться легко, так как на улице будет облачно с прояснениями', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'переменная облачность', 'С утра будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшая облачность', 'С утра небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'дождь', 'С утра советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 1);



INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'пасмурно', 'Днем будет прохладно, рекомендуем надеть теплую кофту или свитер.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой снег', 'Днем ожидается мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой дождь', 'Днем ожидается небольшой дождь, рекомендуем надеть непромокаемую обувь и взять с собой зонт.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'ясно', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'солнечно', 'Днем будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'облачно с прояснениями', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'переменная облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшая облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'снег', 'Днем на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой снег', 'Днем на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой дождь', 'Днем ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'ясно', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'солнечно', 'Днем будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'облачно с прояснениями', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'переменная облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшая облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'снег', 'Днем на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой снег', 'Днем на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой дождь', 'Днем ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'ясно', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'солнечно', 'Днем будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'облачно с прояснениями', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'переменная облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшая облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'снег', 'Днем на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой снег', 'Днем на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой дождь', 'Днем ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'ясно', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'солнечно', 'Днем будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'облачно с прояснениями', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'переменная облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшая облачность', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'снег', 'Днем на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой снегопад', 'Днем будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой дождь', 'Днем будет противная погода, обязательно выберите подходящую одежду и обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой туман', 'Днем возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'облачно с прояснениями', 'Днем возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'переменная облачность', 'Днем будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'прохладно и ветрено', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой снегопад', 'Днем будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой дождь', 'Днем будет противная погода, обязательно выберите подходящую одежду и обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой туман', 'Днем возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'облачно с прояснениями', 'Днем, возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'переменная облачность', 'Днем будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'прохладно и ветрено', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'пасмурно', 'Днем на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой снегопад', 'Днем будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой дождь', 'Днем будет противная погода, обязательно выберите подходящую одежду и обувь.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой туман', 'Днем возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'облачно с прояснениями', 'Днем, возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'переменная облачность', 'Днем будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'прохладно и ветрено', 'Днем будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'дождь', 'Днем на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'пасмурно', 'Днем на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшой дождь', 'Днем возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'облачно с прояснениями', 'Днем возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'переменная облачность', 'Днем наденьте свитер и куртку на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'пасмурно', 'Днем на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшой дождь', 'Днем возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'облачно с прояснениями', 'Днем возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'переменная облачность', 'Днем наденьте свитер и куртку на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'пасмурно', 'Днем на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшой дождь', 'Днем возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'облачно с прояснениями', 'Днем возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'переменная облачность', 'Днем наденьте свитер и куртку на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'пасмурно', 'Днем на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшой дождь', 'Днем возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'солнечно', 'Днем будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'Днем наденьте свитер и куртку на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'пасмурно', 'Днём на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'дождь', 'Днём забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'пасмурно', 'Днём на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'дождь', 'Днём забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'пасмурно', 'Днём на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'дождь', 'Днём забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'пасмурно', 'Днём на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'облачно с прояснениями', 'Днем будет облачно, поэтому на прогулку стоит одеться потеплее', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'дождь', 'Днём забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'пасмурно',  'Днём на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'пасмурно', 'Днём на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'пасмурно', 'Днём на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'пасмурно', 'Днём на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшой дождь', 'Днём возьмите с собой зонтик и наденьте ветровку, может быть дождь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшая облачность', 'Днём для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'пасмурно', 'Днём на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшая облачность', 'Днём небольшая облачность, для прогулки подойдет толстовка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'пасмурно', 'Днём на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'облачно с прояснениями', 'Днем будет облачно, но и солнце иногда будет выглядывать', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'переменная облачность', 'Днём советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшая облачность', 'Днём небольшая облачность, для прогулки подойдет толстовка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'солнечно', 'Днём будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'ясно', 'Днём будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'солнечно', 'Днём будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'ясно', 'Днём будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'солнечно', 'Днём будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'ясно', 'Днём будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'солнечно', 'Днём будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'ясно', 'Днём будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'солнечно', 'Днём будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'ясно', 'Днём будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'пасмурно', 'Днём на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшой дождь', 'Днём возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'солнечно', 'Днём будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'ясно', 'Днём будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'облачно с прояснениями', 'Днём советуем одеваться легко, так как на улице будет облачно с прояснениями', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'переменная облачность', 'Днём будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшая облачность', 'Днём небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'дождь', 'Днём советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 2);


INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'пасмурно', 'Вечером будет прохладно, рекомендуем надеть теплую кофту или свитер.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой снег', 'Вечером ожидается мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшой дождь', 'Вечером  ожидается небольшой дождь, рекомендуем надеть непромокаемую обувь и взять с собой зонт.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'ясно', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'солнечно', 'Вечером будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'облачно с прояснениями', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'переменная облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'небольшая облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'снег', 'Вечером на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (0, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой снег', 'Вечером на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшой дождь', 'Вечером ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'ясно', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'солнечно', 'Вечером будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'облачно с прояснениями', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'переменная облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'небольшая облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'снег', 'Вечером на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (1, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой снег', 'Вечером на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшой дождь', 'Вечером ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'ясно', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'солнечно', 'Вечером будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'облачно с прояснениями', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'переменная облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'небольшая облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'снег', 'Вечером на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (2, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой снег', 'Вечером на улице мокрый снег, рекомендуем надеть тёплый свитер и непромокаемую обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшой дождь', 'Вечером ожидается небольшой дождь, возьмите с собой плащ или зонтик, он вам пригодится!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'ясно', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'солнечно', 'Вечером будет отличная погода для прогулки, рекомендуем надеть тёплую одежду, но взять с собой солнцезащитные очки.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'облачно с прояснениями', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'переменная облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'небольшая облачность', 'Вечером будет хорошая погода для прогулки, но ещё достаточно прохладно, укутайтесь потеплее.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'снег', 'Вечером на улице ожидается снег, поэтому рекомендуется надеть теплую куртку, тёплые рукавицы, шарф и шапку.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (3, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (4, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (5, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (6, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (7, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (8, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'пасмурно', 'Вечером на улице плюс, но всё ещё прохладно, укутайтесь потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшой снегопад', 'Вечером будьте осторожнее на дороге, ожидается гололёд, наденьте обувь, которая не скользит', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшой дождь', 'Вечером  будет противная погода, обязательно выберите подходящую одежду и обувь.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'небольшой туман', 'Вечером  возможны небольшие туманы и относительная прохлада, советуем надеть шарфик и не забыть про перчатки!', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'солнечно', 'Вечером  будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте надеть шапку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'облачно с прояснениями', 'Вечером  возможно кратковременное появление солнца, не забудьте солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'переменная облачность', 'Вечером будет плюсовая температура, но лучше надеть многослойную одежду для комфорта', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'прохладно и ветрено', 'Вечером  будет хорошая погода для прогулки, но ещё достаточно прохладно, советуем отдать предпочтение теплому гардеробу.', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (9, 'дождь', 'Вечером на улице собирается дождь, не забудьте зонт, дождевик и непромокаемую обувь.', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, может быть дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'пасмурно', 'Вечером на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки',3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'дождь', 'Вечером забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'пасмурно', 'Вечером на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'дождь', 'Вечером забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'пасмурно', 'Вечером на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'дождь', 'Вечером забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'пасмурно', 'Вечером на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто на футболку', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'облачно с прояснениями', 'Вечером будет облачно, поэтому на прогулку стоит одеться потеплее', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'дождь', 'Вечером забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'пасмурно',  'Вечером на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'пасмурно', 'Вечером на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'пасмурно', 'Вечером на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'пасмурно', 'Вечером на улице будет достаточно тепло, для прогулки подойдёт свитер или свитшот и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшой дождь', 'Вечером возьмите с собой зонтик и наденьте ветровку ', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'пасмурно', 'Вечером на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'небольшая облачность', 'Вечером небольшая облачность, для прогулки подойдет толстовка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'пасмурно', 'Вечером на улице будет тепло, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и по возможности возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'переменная облачность', 'Вечером советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай ветра или дождя', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'небольшая облачность', 'Вечером небольшая облачность, для прогулки подойдет толстовка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'облачно с прояснениями','Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'облачно с прояснениями', 'Вечером будет облачно, но и солнце иногда будет выглядывать', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'солнечно', 'Вечером будет отличная погода для прогулки, оденьтесь легко и обязательно возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'ясно', 'Вечером будет отличная погода для прогулки, советуем отдать предпочтение лёгкой одежде и обуви', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'солнечно', 'Вечером будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'ясно', 'Вечером будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'солнечно', 'Вечером будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'ясно', 'Вечером будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'облачно с прояснениями','Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'солнечно', 'Вечером будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'ясно', 'Вечером будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'солнечно', 'Вечером будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'ясно', 'Вечером будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'пасмурно', 'Вечером на улице будет пасмурно, но жарко, для прогулки подойдёт лёгкая одежда и удобная обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшой дождь', 'Вечером возьмите с собой зонтик, возможен небольшой дождь и повышенная влажность', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'солнечно', 'Вечером будет жаркая погода для прогулки, используйте spf и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'ясно', 'Вечером будет жаркая погода для прогулки, одевайтесь легко и возьмите с собой солнцезащитные очки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'облачно с прояснениями', 'Вечером советуем одеваться легко, так как на улице будет облачно с прояснениями', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'переменная облачность', 'Вечером будет облачно, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'небольшая облачность', 'Вечером небольшая облачность, но возьмите с собой солнечные очки, они могут вам пригодиться', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'дождь', 'Вечером советуем надеть непромокаемую обувь и взять с собой зонтик, будет дождь', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (16, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (17, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (18, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (19, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (20, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (21, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (22, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (23, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (24, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (25, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (26, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (27, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (28, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (29, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (30, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (31, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (32, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (33, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'туман', 'С утра на улице будет стоять туман', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'туман', 'Днём на улице будет стоять туман', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'туман', 'Вечером на улице будет стоять туман', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'гроза', 'С утра ожидается гроза, будьте аккуратны', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'гроза', 'Днём ожидается гроза, будьте аккуратны', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (34, 'гроза', 'Вечером ожидается гроза, будьте аккуратны', 3);


SELECT * FROM weather_recommend;
