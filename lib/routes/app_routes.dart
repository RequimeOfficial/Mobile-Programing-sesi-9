/// Kumpulan nama route (named route) yang dipakai di seluruh aplikasi.
///
/// Nama route disimpan sebagai konstanta agar tidak salah ketik ketika
/// dipanggil lewat Navigator.pushNamed().
class AppRoutes {
  AppRoutes._();

  static const String beranda = '/';
  static const String pantai = '/pantai';
  static const String gunung = '/gunung';
  static const String budaya = '/budaya';
  static const String kuliner = '/kuliner';
  static const String detailWisata = '/detail-wisata';
}
