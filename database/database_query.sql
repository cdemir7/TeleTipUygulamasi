REATE DATABASE DB_HASTANE_TELETIP;

use DB_HASTANE_TELETIP;
SET FOREIGN_KEY_CHECKS=OFF;
create table Hastalar
(
hasta_ID int auto_increment primary key,
hasta_ISIM varchar(20) not NULL,
hasta_SOYISIM varchar(20) not NULL,
hasta_SIFRE varchar(20) not NULL,
hasta_MAIL varchar(60) not null,
hasta_FOTO varchar(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create table Doktorlar
(
doktor_ID int auto_increment primary key,
doktor_ISIM varchar(20) not NULL,
doktor_SOYISIM varchar(20) not NULL,
doktor_MAIL varchar(60) not NULL,
doktor_FOTO varchar(100),
doktor_SIFRE varchar(20) not NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create table ABD
(
abd_ID int auto_increment primary key,
abd_isim varchar(30) not NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
Create table uzmanliklar
(
uzmanlik_ID int auto_increment primary key,
uzmanlik_isim varchar(30) not NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
Create table doktor_uzmanlik_listesi
(
uzmanlik_liste_ID int auto_increment primary key,
doktor_ID int,
uzmanlik_ID int,

CONSTRAINT fk_uzmanlik_doktor 
foreign key (doktor_ID) 
    REFERENCES doktorlar(doktor_ID)
        on delete cascade,
CONSTRAINT fk_uzmanlik_uzmanlik
foreign key (uzmanlik_ID)
    REFERENCES uzmanliklar(uzmanlik_ID)
        on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8; 
Create table doktor_abd_listesi
(
abd_liste_ID int auto_increment primary key,
doktor_ID int not null unique,
abd_ID int not null,

CONSTRAINT fk_abd_doktor 
foreign key (doktor_ID) 
    REFERENCES doktorlar(doktor_ID)
        on delete cascade,
CONSTRAINT fk_abd_abd
foreign key (abd_ID)
    REFERENCES abd(abd_ID)
        on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
Create table Mesajlar
(
mesaj_ID int auto_increment primary key,
doktor_ID int not null,
hasta_ID int not null,
mesaj varchar(50),
eklenti_path varchar(100),
tarih datetime,
yon boolean,

CONSTRAINT fk_mesaj_doktor
foreign key (doktor_ID)
	REFERENCES doktorlar(doktor_ID)
		on delete cascade,
CONSTRAINT fk_mesaj_hasta
foreign key (hasta_ID)
	REFERENCES hastalar(hasta_ID)
		on delete cascade
)