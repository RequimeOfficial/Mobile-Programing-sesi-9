import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigasi_wisata/data/data_wisata.dart';
import 'package:navigasi_wisata/main.dart';
import 'package:navigasi_wisata/pages/beranda_page.dart';
import 'package:navigasi_wisata/pages/detail_wisata_page.dart';
import 'package:navigasi_wisata/widgets/halaman_kategori.dart';
import 'package:navigasi_wisata/widgets/kartu_wisata.dart';

/// Menjalankan aplikasi dengan ukuran layar seperti ponsel.
Future<void> jalankanAplikasi(WidgetTester tester) async {
  tester.view.physicalSize = const Size(1080, 2340);
  tester.view.devicePixelRatio = 2.625;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(const WisataApp());
}

/// Menggulir halaman sampai widget [finder] terlihat lalu mengetuknya.
Future<void> gulirDanTekan(WidgetTester tester, Finder finder) async {
  await tester.scrollUntilVisible(
    finder,
    300,
    scrollable: find.byType(Scrollable).last,
  );
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('Beranda menampilkan judul dan empat menu dalam GridView', (
    tester,
  ) async {
    await jalankanAplikasi(tester);

    expect(find.text('Wisata Indonesia'), findsOneWidget);
    final grid = tester.widget<GridView>(find.byType(GridView));
    final delegate =
        grid.gridDelegate as SliverGridDelegateWithFixedCrossAxisCount;
    expect(delegate.crossAxisCount, 2);

    for (final kategori in DataWisata.semuaKategori) {
      expect(find.text(kategori.nama), findsOneWidget);
      expect(find.byIcon(kategori.ikon), findsOneWidget);
    }
  });

  testWidgets('Setiap menu membuka halamannya dan tombol kembali bekerja', (
    tester,
  ) async {
    await jalankanAplikasi(tester);

    for (final kategori in DataWisata.semuaKategori) {
      await tester.tap(find.text(kategori.nama));
      await tester.pumpAndSettle();

      // Halaman kategori terbuka dengan AppBar dan isi yang sesuai.
      expect(find.byType(HalamanKategori), findsOneWidget);
      expect(find.text('Wisata ${kategori.nama}'), findsOneWidget);
      expect(find.text(kategori.daftar.first.nama), findsOneWidget);

      // Navigator.pop() lewat tombol "Kembali ke Beranda".
      await gulirDanTekan(tester, find.text('Kembali ke Beranda'));
      expect(find.byType(BerandaPage), findsOneWidget);
      expect(find.byType(HalamanKategori), findsNothing);
    }
  });

  testWidgets('Tombol kembali di AppBar juga kembali ke beranda', (
    tester,
  ) async {
    await jalankanAplikasi(tester);

    await tester.tap(find.text('Gunung'));
    await tester.pumpAndSettle();
    expect(find.text('Gunung Bromo'), findsOneWidget);

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.byType(BerandaPage), findsOneWidget);
  });

  testWidgets('Lihat Detail mengirim nama wisata ke halaman Detail Wisata', (
    tester,
  ) async {
    await jalankanAplikasi(tester);

    await tester.tap(find.text('Pantai'));
    await tester.pumpAndSettle();

    // Tombol "Lihat Detail" milik kartu Pantai Pink (kartu kedua).
    await gulirDanTekan(
      tester,
      find.descendant(
        of: find.widgetWithText(KartuWisata, 'Pantai Pink'),
        matching: find.text('Lihat Detail'),
      ),
    );

    expect(find.byType(DetailWisataPage), findsOneWidget);
    final namaDiterima = tester.widget<Text>(
      find.byKey(const Key('nama-diterima')),
    );
    expect(namaDiterima.data, 'Pantai Pink');
    expect(find.text('Taman Nasional Komodo, NTT'), findsOneWidget);

    // Kembali ke halaman Pantai, bukan ke beranda.
    await gulirDanTekan(tester, find.text('Kembali'));
    expect(find.byType(DetailWisataPage), findsNothing);
    expect(find.byType(HalamanKategori), findsOneWidget);
    expect(
      find.descendant(of: find.byType(AppBar), matching: find.text('Pantai')),
      findsOneWidget,
    );
  });

  testWidgets('Detail Wisata tanpa parameter menampilkan pesan', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: DetailWisataPage()));

    expect(find.text('(tidak ada data)'), findsOneWidget);
    expect(
      find.text('Informasi tempat wisata tidak ditemukan.'),
      findsOneWidget,
    );
  });

  test('cariBerdasarkanNama menemukan wisata beserta kategorinya', () {
    final hasil = DataWisata.cariBerdasarkanNama('Rawon');
    expect(hasil, isNotNull);
    expect(hasil!.kategori.nama, 'Kuliner');
    expect(hasil.wisata.lokasi, 'Jawa Timur');
    expect(DataWisata.cariBerdasarkanNama('Tidak Ada'), isNull);
  });
}
