import 'package:flutter/material.dart';

import '../data/data_wisata.dart';

/// Halaman Detail Wisata.
///
/// Menerima nama tempat wisata yang dikirim dari halaman kategori melalui
/// parameter `arguments` pada Navigator.pushNamed().
class DetailWisataPage extends StatelessWidget {
  const DetailWisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil data (nama tempat wisata) yang dikirim halaman sebelumnya.
    final namaDiterima = ModalRoute.of(context)?.settings.arguments as String?;
    final hasil = namaDiterima == null
        ? null
        : DataWisata.cariBerdasarkanNama(namaDiterima);
    final warna = hasil?.kategori.warna ?? const Color(0xFF00796B);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Wisata',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: warna,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Menampilkan data yang diterima melalui parameter.
          Card(
            elevation: 0,
            color: warna.withValues(alpha: 0.08),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: warna.withValues(alpha: 0.4)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Icon(Icons.move_to_inbox, color: warna),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Data diterima dari halaman sebelumnya:',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          namaDiterima ?? '(tidak ada data)',
                          key: const Key('nama-diterima'),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: warna,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (hasil == null)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Icon(Icons.search_off, size: 64, color: Colors.black38),
                  SizedBox(height: 12),
                  Text(
                    'Informasi tempat wisata tidak ditemukan.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            )
          else ...[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [warna, warna.withValues(alpha: 0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Icon(hasil.wisata.ikon, color: Colors.white, size: 72),
                  const SizedBox(height: 12),
                  Text(
                    hasil.wisata.nama,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.place, color: Colors.white70, size: 18),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          hasil.wisata.lokasi,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Kategori: ${hasil.kategori.nama}',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tentang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              hasil.wisata.deskripsiLengkap,
              style: const TextStyle(fontSize: 15, height: 1.55),
            ),
            const SizedBox(height: 20),
            const Text(
              'Fakta Menarik',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Column(
                  children: [
                    for (final fakta in hasil.wisata.fakta)
                      ListTile(
                        dense: true,
                        leading: Icon(Icons.check_circle, color: warna),
                        title: Text(
                          fakta,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(height: 20),
          // Tombol kembali ke halaman kategori menggunakan Navigator.pop().
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            label: const Text('Kembali'),
            style: ElevatedButton.styleFrom(
              backgroundColor: warna,
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
