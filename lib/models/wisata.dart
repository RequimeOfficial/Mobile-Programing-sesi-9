import 'package:flutter/material.dart';

/// Satu tempat wisata / budaya / makanan yang ditampilkan di halaman kategori.
class Wisata {
  const Wisata({
    required this.nama,
    required this.lokasi,
    required this.deskripsiSingkat,
    required this.deskripsiLengkap,
    required this.ikon,
    required this.fakta,
  });

  final String nama;
  final String lokasi;
  final String deskripsiSingkat;
  final String deskripsiLengkap;
  final IconData ikon;
  final List<String> fakta;
}

/// Satu kategori menu di halaman beranda (Pantai, Gunung, Budaya, Kuliner).
class KategoriWisata {
  const KategoriWisata({
    required this.nama,
    required this.subjudul,
    required this.deskripsi,
    required this.ikon,
    required this.warna,
    required this.route,
    required this.daftar,
  });

  final String nama;
  final String subjudul;
  final String deskripsi;
  final IconData ikon;
  final Color warna;

  /// Nama route yang dibuka saat menu ini ditekan.
  final String route;
  final List<Wisata> daftar;
}
