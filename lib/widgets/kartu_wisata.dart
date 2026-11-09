import 'package:flutter/material.dart';

import '../models/wisata.dart';
import '../routes/app_routes.dart';

/// Kartu berisi nama, lokasi, deskripsi singkat, dan tombol "Lihat Detail".
class KartuWisata extends StatelessWidget {
  const KartuWisata({super.key, required this.wisata, required this.warna});

  final Wisata wisata;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: warna.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(wisata.ikon, color: warna, size: 30),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wisata.nama,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.place,
                            size: 16,
                            color: Colors.black45,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              wisata.lokasi,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              wisata.deskripsiSingkat,
              style: const TextStyle(fontSize: 14, height: 1.45),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Mengirim nama tempat wisata ke halaman Detail Wisata
                  // melalui parameter "arguments".
                  Navigator.pushNamed(
                    context,
                    AppRoutes.detailWisata,
                    arguments: wisata.nama,
                  );
                },
                icon: const Icon(Icons.info_outline, size: 18),
                label: const Text('Lihat Detail'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: warna,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
