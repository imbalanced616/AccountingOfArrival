USE AccountingOfArrival;

INSERT INTO TypesOfUsers (NameType) VALUES ('�������������');
INSERT INTO TypesOfUsers (NameType) VALUES ('���������');

INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('osipova94@gmail.com', 'fov03*nt', '�������', '�����', '���������', '1990-10-01', 1);
INSERT INTO Users (Login, Password, Surname, Name, Patronymic, DateOfBirthday, idUserTypes) VALUES ('bushuev95@mail.ru', '123456', '������', '����', '������������', '1993-06-24', 2);

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

INSERT INTO Warehouses(Name, Address) VALUES ('����� �1', '������������� �������, ����� �������, ����� ������, 93');
INSERT INTO Warehouses(Name, Address) VALUES ('����� �2', '������������ �������, ����� ������, ����� ��������, 06');
INSERT INTO Warehouses(Name, Address) VALUES ('����� �3', '����������� �������, ����� ������, ���. ������������, 61');

INSERT INTO TypesOfMaterials (Name) VALUES ('���������');
INSERT INTO TypesOfMaterials (Name) VALUES ('�������');
INSERT INTO TypesOfMaterials (Name) VALUES ('�������� �����');

INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������ ����������', 1, 550);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('�������� ������', 1, 4350);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('���-��������', 1, 3100);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('����', 1, 640);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('����������', 1, 237);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������ �����������', 1, 549);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('���������', 1, 425);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('��������� �����������', 1, 279);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('�������', 2, 4037);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������', 2, 35);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������� ��������', 2, 203);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������ ������� ����������', 2, 529);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������ �����', 2, 1700);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('��������', 2, 338);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('������', 2, 1100);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('�������� ������ �� ������������ ������', 3, 21850);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('��������� ���������', 3, 450);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('����������� ������', 3, 15690);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('�������', 3, 2700);
INSERT INTO Materials (Name, idTypeOfMaterial, PricePerUnit) VALUES ('�������� ��������� �������', 3, 14900);

