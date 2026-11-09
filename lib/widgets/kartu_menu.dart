import 'package:flutter/material.dart';

import '../models/wisata.dart';

/// Satu kotak menu (ikon + teks) pada GridView beranda.
class KartuMenu extends StatelessWidget {
  const KartuMenu({super.key, required this.kategori, required this.onTap});

  final KategoriWisata kategori;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kategori.warna.withValues(alpha: 0.12), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: kategori.warna,
                  shape: BoxShape.circle,
                ),
                child: Icon(kategori.ikon, color: Colors.white, size: 36),
              ),
              const SizedBox(height: 12),
              Text(
                kategori.nama,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kategori.warna,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                kategori.subjudul,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
