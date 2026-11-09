import 'package:flutter/material.dart';

import 'pages/beranda_page.dart';
import 'pages/budaya_page.dart';
import 'pages/detail_wisata_page.dart';
import 'pages/gunung_page.dart';
import 'pages/kuliner_page.dart';
import 'pages/pantai_page.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const WisataApp());
}

class WisataApp extends StatelessWidget {
  const WisataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00796B)),
        scaffoldBackgroundColor: const Color(0xFFF4F7F6),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF00796B),
          foregroundColor: Colors.white,
        ),
      ),
      // Halaman pertama yang dibuka saat aplikasi dijalankan.
      initialRoute: AppRoutes.beranda,
      // Daftar seluruh halaman beserta nama route-nya.
      routes: {
        AppRoutes.beranda: (context) => const BerandaPage(),
        AppRoutes.pantai: (context) => const PantaiPage(),
        AppRoutes.gunung: (context) => const GunungPage(),
        AppRoutes.budaya: (context) => const BudayaPage(),
        AppRoutes.kuliner: (context) => const KulinerPage(),
        AppRoutes.detailWisata: (context) => const DetailWisataPage(),
      },
    );
  }
}
