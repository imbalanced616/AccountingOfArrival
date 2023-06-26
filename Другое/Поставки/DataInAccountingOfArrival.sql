--Данные для БД "Поставки" (AccountingOfArrival)
USE AccountingOfArrival;

INSERT INTO TypesOfUsers (NameType) VALUES ('Администратор');
INSERT INTO TypesOfUsers (NameType) VALUES ('Менеджер');
INSERT INTO TypesOfUsers (NameType) VALUES ('Кладовщик');
INSERT INTO TypesOfUsers (NameType) VALUES ('Пользователь');

INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('osipova94@gmail.com', 'fov03*nt', 'Осипова', 'Мария', 'Романовна', '1994-10-01', 1);
INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('bushuev95@mail.ru', '123456', 'Бушуев', 'Юрий', 'Владимирович', '1995-06-24', 2);

INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Взгляд"', '431719328057', 'Тамбовская область, город Дмитров, проезд Ладыгина, 61');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Течение"', '807673948450', 'Кировская область, город Солнечногорск, пл. Ладыгина, 55');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Час"', '989371206836', 'Астраханская область, город Подольск, шоссе Гагарина, 13');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Активная группа"', '153974188078', 'Амурская область, город Мытищи, пр. Ладыгина, 01');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Энергия"', '792624414690', 'Ульяновская область, город Раменское, шоссе Гагарина, 94');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Специалист"', '452242119724', 'Амурская область, город Пушкино, бульвар Ломоносова, 14');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Порядок"', '846813797302', 'Читинская область, город Солнечногорск, шоссе Чехова, 03');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Вид"', '596930143177', 'Брянская область, город Луховицы, проезд Славы, 46');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Истинная способность"', '703945481164', 'Белгородская область, город Ногинск, шоссе Славы, 28');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Чудо"', '799633256475', 'Липецкая область, город Наро-Фоминск, шоссе Космонавтов, 75');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Пространство"', '115559241355', 'Ленинградская область, город Дмитров, наб. Косиора, 47');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ПАО "Субъект"', '920313630833', 'Свердловская область, город Видное, пл. 1905 года, 39');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Центр"', '774909561501', 'Новгородская область, город Ногинск, въезд Ломоносова, 91');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('АО "Земля"', '228382719439', 'Липецкая область, город Шатура, пер. Гоголя, 92');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('ООО "Система"', '726862183275', 'Саратовская область, город Лотошино, спуск Будапештсткая, 25');