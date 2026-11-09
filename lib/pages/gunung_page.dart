import 'package:flutter/material.dart';

import '../data/data_wisata.dart';
import '../widgets/halaman_kategori.dart';

/// Halaman kategori Gunung (route: '/gunung').
class GunungPage extends StatelessWidget {
  const GunungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HalamanKategori(kategori: DataWisata.gunung);
  }
}
