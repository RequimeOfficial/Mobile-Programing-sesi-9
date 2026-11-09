import 'package:flutter/material.dart';

import '../data/data_wisata.dart';
import '../widgets/halaman_kategori.dart';

/// Halaman kategori Budaya (route: '/budaya').
class BudayaPage extends StatelessWidget {
  const BudayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HalamanKategori(kategori: DataWisata.budaya);
  }
}
