class Doktor {
  final int doktor_ID;
  final String doktor_ISIM;
  final String doktor_SOYISIM;
  final String doktor_MAIL;
  final String doktor_SIFRE;

  Doktor({
    required this.doktor_ID,
    required this.doktor_ISIM,
    required this.doktor_SOYISIM,
    required this.doktor_MAIL,
    required this.doktor_SIFRE
  });
}
class Abd {
  final int doktor_ID;
  final String doktor_ISIM;
  final String doktor_SOYISIM;
  final String abd_ISIM;

  Abd( 
    {
      required this.doktor_ID,
      required this.doktor_ISIM,
      required this.doktor_SOYISIM,
      required this.abd_ISIM,
  });
}
class Hasta {
  final int hasta_ID;
  final String hasta_ISIM;
  final String hasta_SOYISIM;
  final String hasta_MAIL;
  final String hasta_SIFRE;
  Hasta({
    required this.hasta_ID,
    required this.hasta_ISIM,
    required this.hasta_SOYISIM,
    required this.hasta_MAIL,
    required this.hasta_SIFRE
  });
}
class Uzmanlik {
  final int doktor_ID;
  final String doktor_ISIM;
  final String doktor_SOYISIM;
  final String uzmanlik_ISIM;

  Uzmanlik( 
    {
      required this.doktor_ID,
      required this.doktor_ISIM,
      required this.doktor_SOYISIM,
      required this.uzmanlik_ISIM,
  });
}
class Mesaj {// gonderen degeri 0 ise doktor 1 ise hasta
  final int mesaj_ID;
  final int doktor_ID;
  final int hasta_ID;
  final String mesaj;
  final String? mesaj_tarihi;
  final String gonderen;

  Mesaj(
    {
    required this.mesaj_ID,
    required this.doktor_ID,
    required this.hasta_ID,
    required this.mesaj,
    this.mesaj_tarihi,
    required this.gonderen, 
  });
}