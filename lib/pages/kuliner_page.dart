import 'package:flutter/material.dart';

import '../data/data_wisata.dart';
import '../widgets/halaman_kategori.dart';

/// Halaman kategori Kuliner (route: '/kuliner').
class KulinerPage extends StatelessWidget {
  const KulinerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HalamanKategori(kategori: DataWisata.kuliner);
  }
}
