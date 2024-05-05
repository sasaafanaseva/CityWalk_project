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
    from TEXT,
    to TEXT,
    date DATE,
);


INSERT INTO history (from, to, date) VALUES ("Вязовая 10", "Золотое яблоко", 06.05.24);

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
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'С утра возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'С утра будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'С утра возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'С утра будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'С утра будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'С утра наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'С утра носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто под футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто под футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'С утра на улице будет достаточно тепло, но пока не спешите снимать верхнюю одежду, советуем надеть легкое пальто под футболку', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'С утра возьмите с собой зонтик и наденьте ветровку ', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'С утра будет отличная погода для прогулки, оденьтесь легко по возможности возьмите с собой солнцезащитные очки', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'С утра будет отличная погода для прогулки, советуем отдать предпочтение лонгсливу и удобным штанам', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'С утра возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'С утра советуем взять легкую верхнюю одежду с собой, чтобы не замерзнуть на случай прохладного ветра', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'С утра для прогулки подойдет легкая ветровка и джинсы', 1);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'С утра забудьте об открытой обуви, советуем надеть непромокаемую обувь и взять с собой зонтик', 1);


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
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'Днем возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'Днем наденьте свитер и куртку на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'Днем а возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'Днем а возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'Днем а возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'Днем а возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'Днем на улице будет достаточно тепло, но пока не спешите легко одеваться, советуем отдать предпочтение полулегкой одежде', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'Днем возьмите с собой дождевик и зонтик, не забудьте непромокаемую обувь ', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'Днем будет отличная погода для прогулки, возьмите с собой солнцезащитные очки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'Днем будет отличная погода для прогулки, оденьтесь удобный свитшот и легкие брюки', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'Днем а возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'Днем наденьте под куртку водолазку, чтобы не замерзнуть на случай прохладного ветра', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'Днем для прогулки подойдет легкая ветровка и джинсы', 2);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'Днем носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 2);

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
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (10, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (11, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (12, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (13, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (14, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);

INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'пасмурно', 'Вечером на улице будет плюс, но всё ещё прохладно, укутайтесь в теплую куртку и шарф', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшой дождь', 'Вечером возьмите с собой плащ или зонтик, возьмите на всякий случай  дождевик', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'солнечно', 'Вечером будет отличная погода для прогулки, но остерегайтесь холодного ветра, не забудьте взять с собой платок', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'ясно', 'Вечером будет отличная погода для прогулки, оденьтесь в теплую кофту и легкие брюки', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'облачно с прояснениями', 'Вечером возможен короткий дождик, лучше одеться в полулегкую куртку и водонепроницаемую обувь', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'переменная облачность', 'Вечером наденьте свитер и куртку на случай прохладного ветра', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'небольшая облачность', 'Вечером для прогулки подойдет легкая ветровка и джинсы', 3);
INSERT INTO weather_recommend (temp, description, recommend, ind) VALUES (15, 'дождь', 'Вечером носите водонепроницаемую обувь и защищающую от дождя верхнюю одежду', 3);


SELECT * FROM weather_recommend;

