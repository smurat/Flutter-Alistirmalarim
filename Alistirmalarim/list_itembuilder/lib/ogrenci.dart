class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

//get metodu ile bu sınıfdaki değişkenleri başka sınıf için return edecek yapı oluşturuldu
  String get isim => _isim;

//get metodu ile bu sınıfdaki değişkenleri başka sınıf için return edecek yapı oluşturuldu
  String get aciklama => _aciklama;

  bool get cinsiyet => _cinsiyet;
  @override
  String toString() {
    return ("Seçilen öğrenci adı : $_isim , açıklaması : $_aciklama açıklaması ");
  }
}
