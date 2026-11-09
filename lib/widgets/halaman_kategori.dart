import 'package:flutter/material.dart';

import '../models/wisata.dart';
import 'kartu_wisata.dart';

/// Tata letak yang dipakai bersama oleh halaman Pantai, Gunung, Budaya,
/// dan Kuliner: AppBar, header berikon, daftar informasi, dan tombol kembali.
class HalamanKategori extends StatelessWidget {
  const HalamanKategori({super.key, required this.kategori});

  final KategoriWisata kategori;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kategori.nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kategori.warna,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _HeaderKategori(kategori: kategori),
          const SizedBox(height: 20),
          Text(
            'Rekomendasi ${kategori.nama}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF263238),
            ),
          ),
          const SizedBox(height: 8),
          for (final wisata in kategori.daftar)
            KartuWisata(wisata: wisata, warna: kategori.warna),
          const SizedBox(height: 16),
          // Tombol kembali menggunakan Navigator.pop().
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            label: const Text('Kembali ke Beranda'),
            style: ElevatedButton.styleFrom(
              backgroundColor: kategori.warna,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _HeaderKategori extends StatelessWidget {
  const _HeaderKategori({required this.kategori});

  final KategoriWisata kategori;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kategori.warna, kategori.warna.withValues(alpha: 0.7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.25),
                  shape: BoxShape.circle,
                ),
                child: Icon(kategori.ikon, color: Colors.white, size: 36),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wisata ${kategori.nama}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      kategori.subjudul,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            kategori.deskripsi,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
