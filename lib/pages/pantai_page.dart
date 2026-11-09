import 'package:flutter/material.dart';

import '../data/data_wisata.dart';
import '../widgets/halaman_kategori.dart';

/// Halaman kategori Pantai (route: '/pantai').
class PantaiPage extends StatelessWidget {
  const PantaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HalamanKategori(kategori: DataWisata.pantai);
  }
}
