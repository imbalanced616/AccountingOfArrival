--������ ��� �� "��������" (AccountingOfArrival)
USE AccountingOfArrival;

INSERT INTO TypesOfUsers (NameType) VALUES ('�������������');
INSERT INTO TypesOfUsers (NameType) VALUES ('��������');
INSERT INTO TypesOfUsers (NameType) VALUES ('���������');
INSERT INTO TypesOfUsers (NameType) VALUES ('������������');

INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('osipova94@gmail.com', 'fov03*nt', '�������', '�����', '���������', '1994-10-01', 1);
INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('bushuev95@mail.ru', '123456', '������', '����', '������������', '1995-06-24', 2);

INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "������"', '431719328057', '���������� �������, ����� �������, ������ ��������, 61');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������"', '807673948450', '��������� �������, ����� �������������, ��. ��������, 55');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "���"', '989371206836', '������������ �������, ����� ��������, ����� ��������, 13');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������� ������"', '153974188078', '�������� �������, ����� ������, ��. ��������, 01');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "�������"', '792624414690', '����������� �������, ����� ���������, ����� ��������, 94');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "����������"', '452242119724', '�������� �������, ����� �������, ������� ����������, 14');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������"', '846813797302', '��������� �������, ����� �������������, ����� ������, 03');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "���"', '596930143177', '�������� �������, ����� ��������, ������ �����, 46');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������� �����������"', '703945481164', '������������ �������, ����� �������, ����� �����, 28');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "����"', '799633256475', '�������� �������, ����� ����-�������, ����� �����������, 75');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "������������"', '115559241355', '������������� �������, ����� �������, ���. �������, 47');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������"', '920313630833', '������������ �������, ����� ������, ��. 1905 ����, 39');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�����"', '774909561501', '������������ �������, ����� �������, ����� ����������, 91');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('�� "�����"', '228382719439', '�������� �������, ����� ������, ���. ������, 92');
INSERT INTO Counterparties (Name, INN, Address) VALUES ('��� "�������"', '726862183275', '����������� �������, ����� ��������, ����� �������������, 25');