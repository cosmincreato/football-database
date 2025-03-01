-- inlocuirea formatului pentru data
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

--Cerintele 4) si 5)

create sequence ECHIPA_SEQ start with 1 increment by 1 minvalue 1;
create sequence JUCATOR_SEQ start with 1 increment by 1 minvalue 1;
create sequence ARBITRU_SEQ start with 1 increment by 1 minvalue 1;
create sequence MECI_SEQ start with 1 increment by 1 minvalue 1;
create sequence ECHIPAMENT_SEQ start with 1 increment by 1 minvalue 1;
create sequence PRESEDINTE_SEQ start with 1 increment by 1 minvalue 1;
create sequence GHETE_SEQ start with 1 increment by 1 minvalue 1;
create sequence PROPRIETAR_SEQ start with 1 increment by 1 minvalue 1;
create sequence STADION_SEQ start with 1 increment by 1 minvalue 1;
create sequence ANTRENOR_SEQ start with 1 increment by 1 minvalue 1;
create sequence STATISTICA_SEQ start with 1 increment by 1 minvalue 1;
create sequence TROFEU_SEQ start with 1 increment by 1 minvalue 1;

create table ARBITRU (
    id_arbitru int default ARBITRU_SEQ.nextval primary key,
    nume varchar2(30) not null,
    prenume varchar2(30) not null,
    data_nasterii date not null
);

SELECT column_name, data_type, data_length, nullable, data_default
FROM user_tab_columns
WHERE table_name = 'STATISTICA_JUCATOR'
ORDER BY column_id;

-- Inserare randuri

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Barsan', 'Marcel', '18-02-1982');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Petrescu', 'Radu', '12-11-1982');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Coltescu', 'Sebastian', '06-05-1977');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Cojocaru', 'Adrian', '24-05-1980');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Chivulete', 'Andrei', '18-11-1986');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Barbu', 'Marian', '13-08-1988');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Kovacs', 'Istvan', '16-09-1984');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Fesnic', 'Horatiu', '17-10-1989');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Hategan', 'Ovidiu', '17-07-1980');

insert into ARBITRU (nume, prenume, data_nasterii) VALUES ('Calin', 'Iulian', '18-02-1987');


create table ECHIPAMENT(
    id_echipament int default ECHIPAMENT_SEQ.nextval primary key,
    nume_firma varchar2(30),
    nume_sponsor varchar2(30),
    culoare_acasa varchar2(30),
    culoare_deplasare varchar2(30),
    constraint culoare_acasa_check check ( upper(culoare_acasa) in
                                           ('ALB', 'NEGRU', 'ROSU', 'GALBEN', 'VERDE', 'ALBASTRU', 'MOV', 'VISINIU') ),
    constraint culoare_deplasare_check check ( upper(culoare_deplasare) in
                                               ('ALB', 'NEGRU', 'ROSU', 'GALBEN', 'VERDE', 'ALBASTRU', 'MOV', 'VISINIU') )
);


-- Inserare randuri

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Kappa', 'Mobexpert', 'Visiniu', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Nike', 'Betano', 'Rosu', 'Albastru');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Nike', 'Superbet', 'Albastru', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Macron', 'Mozzart Bet', 'Mov', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Puma', 'Betano', 'Alb', 'Albastru');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Adidas', 'Dioszegi', 'Rosu', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Nike', 'Etoro', 'Visiniu', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Macron', 'Renovatio', 'Rosu', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Adidas', 'Liberty', 'Rosu', 'Alb');

insert into ECHIPAMENT (nume_firma, nume_sponsor, culoare_acasa, culoare_deplasare) VALUES ('Adidas', 'Superbet', 'Alb', 'Negru');


create table PRESEDINTE(
    id_presedinte int default PRESEDINTE_SEQ.nextval primary key,
    nume varchar2(30) not null,
    prenume varchar2(30) not null,
    data_nasterii date not null
);

-- Inserare randuri

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Constantea', 'Radu', '15-03-1975');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Popescu', 'Gheorghe', '09-10-1967');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Argaseala', 'Valeriu', '11-02-1971');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Balaj', 'Cristian', '17-08-1971');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Costesin', 'Ovidiu', '22-01-1965');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Brailescu', 'Marian', '15-10-1988');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Niculae', 'Daniel', '06-10-1982');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Hadnagy', 'Attila', '10-12-1976');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Glavan', 'Gabriel', '10-10-1999');

insert into PRESEDINTE (nume, prenume, data_nasterii) VALUES ('Foamete', 'Mihai', '12-10-1970');


create table ANTRENOR(
    id_antrenor int default ANTRENOR_SEQ.nextval primary key,
    nume varchar2(30) not null,
    prenume varchar2(30) not null,
    data_nasterii date not null,
    tara varchar2(30) not null,
    tip_licenta varchar2(30),
    constraint tip_licenta_check check ( upper(tip_licenta) in ('PRO', 'A', 'B'))
);

-- Inserare randuri

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Neagoe', 'Eugen', '22-08-1967', 'Romania', 'A');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Lennon', 'Neil', '25-06-1971', 'Irlanda de Nord', 'Pro');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Kopic', 'Zeljko', '10-09-1977', 'Croatia', 'A');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Storck', 'Bernd', '25-01-1963', 'Germania', 'A');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Charalambous', 'Elias', '25-09-1980', 'Cipru', 'B');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Munteanu', 'Dorinel', '25-05-1983', 'Romania', 'A');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Sabau', 'Ovidiu', '12-02-1968', 'Romania', 'Pro');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Petrescu', 'Dan', '22-12-1967', 'Romania', 'Pro');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Galca', 'Costel', '02-11-1986', 'Romania', 'Pro');

insert into ANTRENOR (nume, prenume, data_nasterii, tara, tip_licenta) VALUES ('Hagi', 'Gheorghe', '05-02-1965', 'Romania', 'Pro');


create table GHETE(
    id_ghete int default GHETE_SEQ.nextval primary key,
    nume_ghete varchar2(30),
    nume_firma varchar2(30),
    material varchar2(30),
    culoare varchar2(30),
    constraint material_check check ( upper(material) in ('PIELE', 'CAUCIUC', 'NAILON') ),
    constraint culoare_check check ( upper(culoare) in ('ALB', 'NEGRU', 'ROSU', 'GALBEN', 'VERDE', 'ALBASTRU', 'MOV', 'VISINIU') )
);

-- Inserare randuri

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('11Pro', 'Adidas', 'Piele', 'Rosu');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Predator', 'Adidas', 'Piele', 'Negru');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('F50 Reborn', 'Adidas', 'Nailon', 'Albastru');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Mercurial', 'Nike', 'Piele', 'Negru');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Phantom', 'Nike', 'Cauciuc', 'Verde');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Future 7', 'Puma', 'Cauciuc', 'Verde');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('X', 'Umbro', 'Nailon', 'Alb');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Magic11', 'Umbro', 'Piele', 'Galben');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Golden Ball', 'Puma', 'Piele', 'Mov');

insert into GHETE (nume_ghete, nume_firma, material, culoare) VALUES ('Thunder', 'Puma', 'Piele', 'Visiniu');

create table PROPRIETAR(
    id_proprietar int default PROPRIETAR_SEQ.nextval primary key,
    nume varchar2(30) not null,
    prenume varchar2(30) not null,
    data_nasterii date not null
);

-- Inserare randuri

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Hagi', 'Gheorghe', '05-02-1965');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Nicolescu', 'Andrei', '21-11-1970');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Giurgiu', 'Gabriel', '02-01-1975');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Varga', 'Ioan', '22-04-1966');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Becali', 'George', '25-06-1958');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Tudose', 'Viorel', '15-11-1971');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Sucu', 'Dan', '16-3-1977');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Rotaru', 'Mihai', '13-2-1980');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Dioszegi', 'Laszlo', '11-01-1981');

insert into PROPRIETAR (nume, prenume, data_nasterii) VALUES ('Manole', 'Alexandru', '14-05-1984');

create table STADION(
    id_stadion int default STADION_SEQ.nextval primary key,
    nume varchar2(30),
    capacitate int not null,
    localitate varchar2(30) not null,
    suprafata_gazon varchar2(30),
    data_deschidere date not null,
    constraint capacitate_check check ( capacitate >= 0 ),
    constraint suprafata_gazon_check check ( upper(suprafata_gazon) in ('NATURAL', 'ARTIFICIAL') )
);

-- Inserare randuri

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Otelul', 13500, 'Galati', 'Natural', '04-02-2010');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Dinamo', 15400, 'Bucuresti', 'Natural', '19-05-1999');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Arena Nationala', 54600, 'Bucuresti', 'Natural', '05-01-2012');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Nicolae Dobrin', 15000, 'Pitesti', 'Natural', '20-11-2023');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Cluj Arena', 32000, 'Cluj', 'Artificial', '11-12-2005');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Superbet Arena', 14000, 'Bucuresti', 'Artificial', '03-07-2023');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Orasenesc', 4545, 'Constanta', 'Artificial', '17-05-2010');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Ion Oblemenco', 31000, 'Craiova', 'Artificial', '03-07-2023');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Municipal', 8400, 'Sfantu Gheorghe', 'Natural', '02-04-2020');

insert into STADION (nume, capacitate, localitate, suprafata_gazon, data_deschidere)
    VALUES ('Dr. Constantin Radulescu', 23000, 'Cluj', 'Natural', '12-10-2012');


create table ECHIPA(
    id_echipa int default ECHIPA_SEQ.nextval primary key,
    id_stadion int,
    id_proprietar int,
    id_antrenor int,
    id_echipament int,
    id_presedinte int,
    nume varchar2(30) not null,
    data_infiintare date not null,
    numar_puncte int not null,
    id_capitan int,
    foreign key (id_stadion) references STADION(id_stadion),
    foreign key (id_proprietar) references PROPRIETAR(id_proprietar),
    foreign key (id_antrenor) references ANTRENOR(id_antrenor),
    foreign key (id_echipament) references ECHIPAMENT(id_echipament),
    foreign key (id_presedinte) references PRESEDINTE(id_presedinte),
    constraint numar_puncte_check check ( numar_puncte >= 0 )
);

-- Inserare randuri

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (6, 7, 2, 1, 7, 'Rapid Bucuresti', '25-05-1923', 32);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (4, 6, 1, 4, 10, 'FC Arges', '06-05-1953', 24);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (3, 5, 5, 2, 3, 'FCSB', '10-11-2003', 50);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (2, 2, 3, 8, 9, 'Dinamo Bucuresti', '01-06-1948', 15);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (10, 4, 8, 7, 4, 'CFR Cluj', '10-11-1907', 46);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (5, 3, 7, 10, 1, 'U Cluj', '23-11-1919', 30);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (7, 1, 10, 3, 2, 'Farul Constanta', '10-11-1907', 46);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (1, 10, 6, 9, 6, 'Otelul Galati', '23-11-1919', 30);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (9, 9, 4, 6, 8, 'Sepsi OSK', '10-11-1907', 46);

insert into ECHIPA (id_stadion, id_proprietar, id_antrenor, id_echipament, id_presedinte, nume, data_infiintare, numar_puncte)
    VALUES (8, 8, 9, 5, 5, 'CSU Craiova', '23-11-1919', 30);

--Creare tabel

create table JUCATOR(
    id_jucator int default JUCATOR_SEQ.nextval primary key,
    id_echipa int,
    id_ghete int,
    nume varchar2(30) not null,
    prenume varchar2(30) not null,
    data_nasterii date not null,
    inaltime int not null,
    pozitie varchar2(30),
    tara varchar2(30) not null,
    salariu int,
    numar_tricou int,
    data_terminare_contract date,
    foreign key (id_echipa) references ECHIPA(id_echipa),
    foreign key (id_ghete) references GHETE(id_ghete),
    constraint inaltime_check check ( inaltime > 0 ),
    constraint pozitie_check check ( upper(pozitie) in ('PORTAR', 'FUNDAS', 'MIJLOCAS', 'ATACANT')),
    constraint salariu_check check ( salariu > 0 ),
    constraint numar_tricou_check check ( numar_tricou > 0 and numar_tricou < 100 )
);

-- Inserare randuri

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (1, 5, 'Rrahmani', 'Albion', '31-08-2000', 188, 'Atacant', 'Kosovo', 20000, 9, '30-06-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (1, 10, 'Papeau', 'Jayson', '30-06-1996', 179, 'Atacant', 'Franta', 18000, 96, '01-01-2027');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (1, 5, 'Braun', 'Christopher', '15-07-1991', 181, 'Fundas', 'Germania', 10000, 47, '30-06-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (2, 4, 'Straton', 'Catalin', '09-10-1989', 191, 'Portar', 'Romania', 10000, 1, '30-06-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (2, 1, 'Pirvu', 'Yanis', '02-4-2007', 170, 'Atacant', 'Romania', 8000, 11, '30-06-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (2,  9, 'Orozco', 'Esteban', '2-11-1998', 186, 'Fundas', 'Guinea Ecuatoriala', 7500, 43, '07-05-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (3, 10, 'Ngezana', 'Siyabonga', '15-07-1997', 188, 'Fundas', 'Africa de Sud', 25000, 30, '30-01-2027');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (3, 6, 'Olaru', 'Darius', '03-03-1998', 177, 'Mijlocas', 'Romania', 40000, 27, '15-02-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (3,  5, 'Chiriches', 'Vlad', '07-05-1989', 184, 'Fundas', 'Romania', 30000,  21, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (4, 2, 'Abdallah', 'Hakim', '09-01-1998', 187, 'Atacant', 'Madagascar', 9000, 19, '15-02-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (4, 7, 'Ie', 'Edgar', '01-05-1994', 182, 'Fundas', 'Guinea-Bissau', 10000, 32, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (4,  8, 'Velkovski', 'Darko', '21-06-1995', 188, 'Fundas', 'Macedonia de Nord', 25000,  21, '01-01-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (5, 3, 'Otele', 'Philip', '15-04-1999', 185, 'Atacant', 'Nigeria', 30000, 17, '07-06-2027');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (5, 6, 'Sava', 'Razvan', '21-06-2002', 195, 'Portar', 'Romania', 28000, 90, '02-02-2027');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (5,  2, 'Birligea', 'Daniel', '19-04-2000', 184, 'Atacant', 'Romania', 25000,  9, '05-02-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (6, 5, 'Bic', 'Ovidiu', '23-02-1994', 177, 'Mijlocas', 'Romania', 16000, 94, '01-10-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (6, 7, 'Nistor', 'Dan', '06-05-1988', 172, 'Mijlocas', 'Romania', 20000, 10, '02-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (6,  9, 'Chipciu', 'Alexandru', '18-05-1989', 176, 'Atacant', 'Romania', 20000,  27, '01-05-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (7, 1, 'Budescu', 'Constantin', '19-02-1989', 186, 'Mijlocas', 'Romania', 20000, 10, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (7, 10, 'Baluta', 'Tudor', '27-03-1999', 192, 'Mijlocas', 'Romania', 21000, 6, '10-06-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (7,  4, 'Benchaib', 'Amine', '18-06-1998', 181, 'Mijlocas', 'Belgia', 10000,  20, '11-05-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (8, 5, 'Cisotti', 'Juri', '05-05-1993', 175, 'Mijlocas', 'Italia', 10000, 30, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (8, 2, 'Dur-Bozoanca', 'Cosmin', '15-02-1998', 182, 'Portar', 'Romania', 9000, 1, '10-01-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (8,  6, 'Maciel', 'Frederic', '15-03-1994', 175, 'Atacant', 'Portugalia', 10000,  67, '11-05-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (9, 3, 'Ninaj', 'Branislav', '17-05-1994', 191, 'Fundas', 'Slovacia', 16000, 82, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (9, 3, 'Niczuly', 'Roland', '21-09-1995', 181, 'Portar', 'Romania', 18000, 33, '01-01-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (9, 8, 'Stefanescu', 'Marius', '14-08-1998', 168, 'Atacant', 'Romania', 25000,  11, '13-02-2025');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (10, 5, 'Mitrita', 'Alexandru', '08-02-1995', 167, 'Atacant', 'Romania', 40000, 28, '21-12-2027');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (10, 1, 'Bancu', 'Nicusor', '18-09-1992', 182, 'Fundas', 'Romania', 38000, 11, '04-02-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (10, 10, 'Ivan', 'Andrei', '04-01-1997', 185, 'Atacant', 'Romania', 37000,  9, '15-06-2026');

insert into JUCATOR (id_echipa, id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (3, 3, 'Straton', 'Andrei', '01-12-1989', 191, 'Fundas', 'Romania', 10000, 9, '30-06-2025');

insert into JUCATOR (id_ghete, nume, prenume, data_nasterii, inaltime, pozitie, tara, salariu, numar_tricou, data_terminare_contract)
    VALUES (6, 'Ilie', 'Adrian', '01-11-1990', 188, 'Atacant', 'Romania', 30000, 10, '30-06-2025');

-- Alterarea tabelului ECHIPA pentru a adauga FOREIGN KEY id_capitan

alter table ECHIPA add foreign key (id_capitan) references JUCATOR(id_jucator);

-- Setarea capitanilor din tabelul ECHIPA

update ECHIPA set id_capitan = 1
where id_echipa = 1;

update ECHIPA set id_capitan = 4
where id_echipa = 2;

update ECHIPA set id_capitan = 9
where id_echipa = 3;

update ECHIPA set id_capitan = 12
where id_echipa = 4;

update ECHIPA set id_capitan = 15
where id_echipa = 5;

update ECHIPA set id_capitan = 17
where id_echipa = 6;

update ECHIPA set id_capitan = 19
where id_echipa = 7;

update ECHIPA set id_capitan = 22
where id_echipa = 8;

update ECHIPA set id_capitan = 25
where id_echipa = 9;

update ECHIPA set id_capitan = 29
where id_echipa = 10;

create table STATISTICA(
    id_statistica int default STATISTICA_SEQ.nextval primary key,
    nume_statistica varchar2(30) not null
);

-- Inserare randuri

insert into STATISTICA (nume_statistica) VALUES ('Goluri marcate');

insert into STATISTICA (nume_statistica) VALUES ('Minute jucate');

insert into STATISTICA (nume_statistica) VALUES ('Pase de gol');

insert into STATISTICA (nume_statistica) VALUES ('Cartonase primite');

insert into STATISTICA (nume_statistica) VALUES ('Numar interceptii');

insert into STATISTICA (nume_statistica) VALUES ('Numar faulturi');

insert into STATISTICA (nume_statistica) VALUES ('Numar driblinguri');

insert into STATISTICA (nume_statistica) VALUES ('Dueluri castigate');

insert into STATISTICA (nume_statistica) VALUES ('Evaluare medie');

insert into STATISTICA (nume_statistica) VALUES ('Goluri estimate');

-- Create tabel

create table STATISTICA_JUCATOR(
    id_jucator int,
    id_statistica int,
    valoare_statistica int,
    primary key (id_jucator, id_statistica),
    foreign key (id_jucator) references JUCATOR(id_jucator),
    foreign key (id_statistica) references STATISTICA(id_statistica)
);


-- Inserare randuri

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (1, 1, 23);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (1, 2, 2150);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (6, 4, 3);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (7, 5, 24);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (13, 3, 10);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (28, 1, 20);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (28, 2, 15);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (19, 9, 8);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (25, 8, 13);

insert into STATISTICA_JUCATOR (id_jucator, id_statistica, valoare_statistica) VALUES (18, 9, 7);

-- Creare tabel

create table MECI(
    id_meci int default MECI_SEQ.nextval primary key,
    id_echipa_acasa int,
    id_echipa_deplasare int,
    id_arbitru int,
    data date,
    rezultat varchar2(30),
    prezenta_meci int,
    foreign key (id_echipa_acasa) references ECHIPA(id_echipa),
    foreign key (id_echipa_deplasare) references ECHIPA(id_echipa),
    foreign key (id_arbitru) references ARBITRU(id_arbitru),
    constraint rezultat_check check ( rezultat like '%-%' ),
    constraint prezenta_meci_check check ( prezenta_meci >= 0)
);

-- Inserare randuri

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (1, 2, 7, '10-01-2023', '4-0',2000);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (1, 3, 5, '15-01-2023', '5-0',1500);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (4, 5, 6, '17-01-2023', '1-1',7600);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (7, 8, 8, '20-02-2023', '1-2',4000);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (10, 6, 2, '11-04-2023', '0-3',1000);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (2, 6, 9, '10-01-2023', '4-3',3000);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (7, 10, 5, '15-01-2023', '3-3',1500);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (9, 3, 6, '17-01-2023', '5-1',1000);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (3, 1, 8, null, null, null);

insert into MECI (id_echipa_acasa, id_echipa_deplasare, id_arbitru, data, rezultat, prezenta_meci) VALUES (5, 2, 2, null, null, null);


-- Creare tabel

create table TROFEU(
    id_trofeu int default TROFEU_SEQ.nextval primary key,
    nume_trofeu varchar2(30) not null
);

-- Inserare randuri

insert into TROFEU (nume_trofeu) VALUES ('SuperLiga');

insert into TROFEU (nume_trofeu) VALUES ('Cupa Romaniei');

insert into TROFEU (nume_trofeu) VALUES ('Champions League');

insert into TROFEU (nume_trofeu) VALUES ('Europa League');

insert into TROFEU (nume_trofeu) VALUES ('Conference League');

insert into TROFEU (nume_trofeu) VALUES ('Liga a 2-a');

insert into TROFEU (nume_trofeu) VALUES ('Supercupa Romaniei');


-- Creare tabel

create table TROFEU_ECHIPA(
    id_echipa int,
    id_trofeu int,
    numar_castigat int,
    primary key (id_echipa, id_trofeu),
    foreign key (id_echipa) references ECHIPA(id_echipa),
    foreign key (id_trofeu) references TROFEU(id_trofeu),
    constraint numar_castigat_check check ( numar_castigat >= 0 )
);

-- Inserare randuri

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (1, 1, 12);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (1, 3, 1);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (9, 1, 1);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (2, 1, 3);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (2, 4, 1);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (4, 5, 3);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (6, 2, 3);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (7, 1, 1);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (7, 6, 1);

insert into TROFEU_ECHIPA (id_echipa, id_trofeu, numar_castigat) VALUES (10, 7, 5);

-- Cerinta 6)
-- Afisati numele tuturor jucatorilor care incep cu litera 'B', 'C' sau 'P'.
-- Pentru acesti jucatori, afisati tara cu cele mai multe aparitii, alaturi de numarul de jucatori din tara respectiva.

create or replace procedure e6 is
    type t_index_by is table of number index by varchar2(20);
    t_countries t_index_by;
    iterator varchar2(20);
    v_max_country_count number := 0;
    v_max_country_name varchar2(20);

    type t_nested is table of JUCATOR.NUME%TYPE;
    t_player_names t_nested := t_nested();

    type t_vector is varray(3) of varchar2(1);
    t_v t_vector := t_vector('B', 'C', 'P');

    cursor c_player is
        select nume, tara
        from JUCATOR;
begin

    for i in c_player loop
        for j in t_v.FIRST..t_v.LAST loop
            if substr(i.nume, 1, 1) = t_v(j) then
                t_player_names.EXTEND;
                t_player_names(t_player_names.COUNT) := i.nume;
                --
                if t_countries.EXISTS(i.tara) then
                    t_countries(i.tara) := t_countries(i.tara) + 1;
                else
                    t_countries(i.tara) := 1;
                end if;
            end if;
        end loop;
    end loop;

    iterator := t_countries.FIRST;
    WHILE iterator IS NOT NULL LOOP
        if t_countries(iterator) > v_max_country_count then
            v_max_country_count := t_countries(iterator);
            v_max_country_name := iterator;
        end if;

        iterator := t_countries.NEXT(iterator);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Lista jucatori:');
    for i in t_player_names.FIRST..t_player_names.LAST loop
        DBMS_OUTPUT.PUT_LINE(t_player_names(i));
    end loop;
    DBMS_OUTPUT.PUT_LINE('Tara: ' || v_max_country_name || ' | Aparitii: ' || v_max_country_count);
end;
/

begin
    e6;
end;

-- Cerinta 7)

-- Afisati numele tuturor echipelor, alaturi de numele tuturor trofeelor
-- castigate de acestea. Pentru echipele care au cel putin doua trofee in palmares,
-- se va afisa mesajul "Felicitari, nume_antrenor", unde nume_antrenor reprezinta numele antrenorului
-- echipei respective. Daca o echipa nu a castigat niciun trofeu, se va afisa mesajul "Niciun trofeu in vitrina!".
-- ciclu cursor
-- cursor explicit

create or replace procedure e7 is
    v_id_echipa ECHIPA.id_echipa%type;
    v_nume ECHIPA.nume%type;
    v_nume_antrenor ANTRENOR.nume%type;
    v_trophy_count number;

    cursor c_team is
        select e.id_echipa, e.nume, a.nume
        from ECHIPA e
        join ANTRENOR a on e.id_antrenor = a.id_antrenor;

    cursor c__trophies(v_id_echipa ECHIPA.id_echipa%type) is
        select t.nume_trofeu
        from TROFEU_ECHIPA te
        join TROFEU t on te.id_trofeu = t.id_trofeu
        where te.id_echipa = v_id_echipa;
begin
    open c_team;
    loop
        fetch c_team into v_id_echipa, v_nume, v_nume_antrenor;
        v_trophy_count := 0;
        exit when c_team%notfound;
        DBMS_OUTPUT.PUT_LINE(v_nume || ': ');
        for i in c__trophies(v_id_echipa) loop
            DBMS_OUTPUT.PUT_LINE(i.nume_trofeu);
            v_trophy_count := v_trophy_count + 1;
        end loop;
        if v_trophy_count = 0 then
            DBMS_OUTPUT.PUT_LINE('Niciun trofeu in vitrina!');
        elsif v_trophy_count >= 2 then
            DBMS_OUTPUT.PUT_LINE('Felicitari, ' || v_nume_antrenor || '!');
        end if;
    end loop;
    close c_team;
end;

begin
    e7;
end;

-- Cerinta 8)
-- Afisat capacitatea stadionului pe care joaca echipa unui jucator introdus de la tastatura.
-- Se vor ridica exceptii daca jucatorul nu exista, daca exista, dar sunt mai multi cu acelasi nume sau daca echipa nu exista.

create or replace function e8(v_nume JUCATOR.NUME%TYPE)
return STADION.CAPACITATE%TYPE
is
    v_id_echipa JUCATOR.ID_ECHIPA%TYPE;
    v_id_jucator JUCATOR.ID_JUCATOR%TYPE;
    v_id_stadion STADION.ID_STADION%TYPE;
    v_capacitate STADION.CAPACITATE%TYPE;
    e_no_team exception;
begin
    begin
        select id_jucator, id_echipa into v_id_jucator, v_id_echipa
        from JUCATOR
        where NUME = v_nume;
    exception
        when NO_DATA_FOUND then
            raise_application_error(-20000, 'Jucatorul nu exista');
        when TOO_MANY_ROWS then
            raise_application_error(-20001, 'Exista mai multi jucatori cu acelasi nume');
    end;
    begin
        if v_id_echipa is null then
            raise e_no_team;
        end if;

        select s.id_stadion, s.capacitate
        into v_id_stadion, v_capacitate
        from STADION s
        join ECHIPA e on s.id_stadion = e.ID_STADION
        join JUCATOR j on e.ID_ECHIPA = j.ID_ECHIPA
        where j.id_jucator = v_id_jucator and e.id_echipa = v_id_echipa;
    exception
        when NO_DATA_FOUND then
            raise_application_error(-20002, 'Echipa nu are stadion');
        when e_no_team then
        raise_application_error(-20003, 'Jucatorul nu are echipa');
        when others then
        raise_application_error(-20004, 'Alte erori: ' || SQLERRM);
    end;

    return v_capacitate;
end e8;
/

begin
    DBMS_OUTPUT.PUT_LINE('Capacitatea stadionului echipei: ' || e8('Birligea'));
end;

begin
    DBMS_OUTPUT.PUT_LINE('Capacitatea stadionului echipei: ' || e8('Straton'));
end;

begin
    DBMS_OUTPUT.PUT_LINE('Capacitatea stadionului echipei: ' || e8('Ilie'));
end;

-- Cerinta 9)

-- Oferindu-se numele unei echipe si un numar minim de puncte ca parametri, verificati
-- de cate puncte mai are nevoie echipa pentru a ajunge la acea borna. In cazul in care
-- echipa a strans deja prea multe puncte, ridicati o exceptie.
-- Afisati urmatoarele informatii despre toate meciurile jucate de echipa respectiva: statusul meciului
-- (victorie, egal sau infrangere), stadionul pe care s-a jucat meciului, prezenta procentuala la meci, numele arbitrului
-- care a fost delegat la meci si numele proprietarul echipei care a jucat acasa. Daca rezultatul unui meci este null, acesta nu a fost
-- jucat inca, astfel se va ridica o exceptie.
-- Afisati numarul de puncte necesar pentru ca echipa sa ajunga la minimul dat ca parametru.

create or replace procedure e9(v_nume_echipa ECHIPA.nume%type, v_minim_puncte ECHIPA.numar_puncte%type) is
    v_id_echipa ECHIPA.id_echipa%type;
    v_nr_puncte ECHIPA.numar_puncte%type;
    v_match_status varchar2(20);
    e_too_many_points exception;
    e_match_not_played exception;
begin
    begin
        select id_echipa, numar_puncte
        into v_id_echipa, v_nr_puncte
        from ECHIPA
        where nume = v_nume_echipa;

        if v_nr_puncte >= v_minim_puncte then
            raise e_too_many_points;
        end if;

    exception
        when no_data_found then
            raise_application_error(-20005, 'Nu exista nicio echipa cu acest nume');
        when too_many_rows then
            raise_application_error(-20006, 'Exista mai multe echipe cu acest nume');
        when e_too_many_points then
            raise_application_error(-20007, 'Echipa selectata are deja acest numar de puncte');
    end;

    begin
        DBMS_OUTPUT.PUT_LINE('Rezultatele echipei ' || v_nume_echipa || ': ');
        for i in (select to_number(substr(m.rezultat, 1, instr(m.rezultat, '-') - 1)) as goluri_acasa,
                     to_number(substr(m.rezultat, instr(m.rezultat, '-') + 1)) as goluri_deplasare,
                     a.nume as nume_arbitru, a.prenume as prenume_arbitru,
                     m.id_echipa_acasa, m.id_echipa_deplasare, m.rezultat, m.prezenta_meci,
                     s.nume as nume_stadion, s.capacitate,
                     p.nume as nume_proprietar, p.prenume as prenume_proprietar
              from MECI m
              join ECHIPA e on m.id_echipa_acasa = e.id_echipa
              join ARBITRU a on a.id_arbitru = m.id_arbitru
              join STADION s on e.id_stadion = s.id_stadion
              join PROPRIETAR p on e.id_proprietar = p.id_proprietar
              where m.id_echipa_acasa = v_id_echipa or m.id_echipa_deplasare = v_id_echipa)
        loop

        if i.rezultat is null then
            raise e_match_not_played;
        end if;

            if v_id_echipa = i.id_echipa_acasa then
                if i.goluri_acasa > i.goluri_deplasare then
                    v_match_status := 'Victorie';
                elsif i.goluri_acasa = i.goluri_deplasare then
                    v_match_status := 'Egal';
                else
                    v_match_status := 'Infrangere';
                end if;
            else
                if i.goluri_acasa < i.goluri_deplasare then
                    v_match_status := 'Victorie';
                elsif i.goluri_acasa = i.goluri_deplasare then
                    v_match_status := 'Egal';
                else
                    v_match_status := 'Infrangere';
                end if;
            end if;


        DBMS_OUTPUT.PUT_LINE('Rezultat: ' || v_match_status || ' | Stadion: ' || i.nume_stadion ||
                             ' | Prezenta (%): ' || round(i.prezenta_meci / i.capacitate * 100, 2) || '%' ||
                             ' | Arbitru: ' || i.nume_arbitru || ' ' || i.prenume_arbitru ||
                             ' | Proprietar: ' || i.nume_proprietar || ' ' || i.prenume_proprietar);
        end loop;
    exception
        when e_match_not_played then
            raise_application_error(-20008, 'Unul sau mai multe meciuri nu au fost jucate inca');
        when others then
            raise_application_error(-20009, 'Alte erori: ' || SQLERRM);
    end;

    DBMS_OUTPUT.PUT_LINE(v_nume_echipa || ' mai are nevoie de ' || to_number(v_minim_puncte - v_nr_puncte) ||
                         ' punct(e) pentru a ajunge la ' || v_minim_puncte);
end;
/

begin
    e9('CSU Craiova', 35);
end;

begin
    e9('Dinamo Bucuresti', 5);
end;

begin
    e9('FC Arges',31);
end;

-- Cerinta 10)

-- Definiti un declansator care sa permita lucrul asupra tabelului STADION (INSERT, UPDATE, DELETE)
-- decat in intervalul de ore 8:00 - 20:00, de luni pana vineri.

create or replace trigger e10
    before insert or update or delete on STADION
begin
    if (to_char(sysdate, 'D') in ('1', '7')) or (to_char(sysdate, 'HH24') not between 8 and 14) then
        raise_application_error(-20001, 'Nu se poate lucra la stadioane in aceasta perioada');
    end if;
end;
/

update STADION
set capacitate = 15000
where id_stadion = 1;


-- Cerinta 11)

-- Definiti un declansator prin care sa nu se permita cresterea salariului cu mai mult de 100 pentru
-- jucatorii care nu au cel putin 2 statistici inregistrate, si prin care sa se impuna ca cresterea salariala a celor
-- care au cel putin 2 statistici inregistrate sa fie cel putin dublul salariului actual.


create or replace trigger e11
    before update of salariu on JUCATOR
    for each row
declare
    v_stat_count number;
    e_min_double exception;
    e_max_100 exception;
begin
    select COUNT(*)
    INTO v_stat_count
    FROM STATISTICA_JUCATOR sj
    JOIN STATISTICA s on sj.id_statistica = s.id_statistica
    where sj.id_jucator = :NEW.id_jucator;

    if v_stat_count >= 2 then
        if :NEW.salariu < :OLD.salariu * 2 then
            raise e_min_double;
        end if;
    else
        if :NEW.salariu - 100 > :OLD.salariu then
            raise e_max_100;
        end if;
    end if;
exception
    when e_min_double then
        raise_application_error(-20001, 'Salariul acestui jucator trebuie sa fie cel putin dublul salariului actual');
    when e_max_100 then
        raise_application_error(-20002, 'Salariul acestui jucator nu poate creste cu mai mult de 100');
end;

update JUCATOR
set salariu = 40000
where id_jucator = 1;

update JUCATOR
set salariu = 19000
where id_jucator = 2;

-- Cerinta 12)

-- Creati tabelul AUDIT_SUPERLIGA si definiti un declansator care sa introduca date in acest tabel dupa ce utilizatorul
-- a folosit o comanda LDD

create table AUDIT_SUPERLIGA
    (utilizator varchar2(30),
    nume_bd varchar2(50),
    eveniment varchar2(20),
    nume_obiect varchar2(30),
    data date);

create or replace trigger e12
    after create or drop or alter on SCHEMA
begin
    insert into AUDIT_SUPERLIGA
    values (sys.LOGIN_USER, sys.DATABASE_NAME, sys.SYSEVENT, sys.DICTIONARY_OBJ_NAME, sysdate);
end;
/

create table VREME
(
    temperatura number,
    status varchar2(20)
);
insert into VREME values (16, 'Noros');
drop table VREME;
select * from AUDIT_SUPERLIGA;
alter trigger e12 disable;
drop table AUDIT_SUPERLIGA;