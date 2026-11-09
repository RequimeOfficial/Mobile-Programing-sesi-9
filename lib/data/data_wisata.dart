import 'package:flutter/material.dart';

import '../models/wisata.dart';
import '../routes/app_routes.dart';

/// Data statis yang ditampilkan aplikasi.
class DataWisata {
  DataWisata._();

  static const KategoriWisata pantai = KategoriWisata(
    nama: 'Pantai',
    subjudul: 'Pesona pesisir Nusantara',
    deskripsi:
        'Indonesia memiliki garis pantai yang sangat panjang dengan pasir '
        'putih, pasir merah muda, hingga pantai berombak besar yang cocok '
        'untuk menikmati matahari terbenam.',
    ikon: Icons.beach_access,
    warna: Color(0xFF0277BD),
    route: AppRoutes.pantai,
    daftar: [
      Wisata(
        nama: 'Pantai Kuta',
        lokasi: 'Badung, Bali',
        deskripsiSingkat:
            'Pantai paling terkenal di Bali dengan ombak landai untuk '
            'belajar selancar dan pemandangan matahari terbenam.',
        deskripsiLengkap:
            'Pantai Kuta berada di sisi barat Pulau Bali sehingga menjadi '
            'tempat favorit untuk melihat matahari terbenam. Ombaknya relatif '
            'bersahabat untuk peselancar pemula, dan di sepanjang pantai '
            'terdapat banyak tempat kursus selancar, kuliner, serta pusat '
            'oleh-oleh.',
        ikon: Icons.surfing,
        fakta: [
          'Lokasinya dekat dengan Bandara I Gusti Ngurah Rai.',
          'Banyak sekolah selancar untuk pemula.',
          'Waktu terbaik berkunjung: sore hari menjelang senja.',
        ],
      ),
      Wisata(
        nama: 'Pantai Pink',
        lokasi: 'Taman Nasional Komodo, NTT',
        deskripsiSingkat:
            'Pantai berpasir merah muda yang langka, dikelilingi perbukitan '
            'savana dan laut jernih untuk snorkeling.',
        deskripsiLengkap:
            'Warna merah muda Pantai Pink berasal dari pecahan cangkang '
            'organisme laut kecil (foraminifera) berwarna merah yang '
            'bercampur dengan pasir putih. Pantai ini termasuk kawasan Taman '
            'Nasional Komodo dan biasanya dikunjungi dengan kapal dari Labuan '
            'Bajo.',
        ikon: Icons.water,
        fakta: [
          'Taman Nasional Komodo adalah Situs Warisan Dunia UNESCO.',
          'Terumbu karangnya cocok untuk snorkeling.',
          'Akses utama melalui perjalanan kapal dari Labuan Bajo.',
        ],
      ),
      Wisata(
        nama: 'Pantai Parangtritis',
        lokasi: 'Bantul, D.I. Yogyakarta',
        deskripsiSingkat:
            'Pantai berombak besar di selatan Yogyakarta yang lekat dengan '
            'legenda Nyi Roro Kidul.',
        deskripsiLengkap:
            'Parangtritis menghadap langsung ke Samudra Hindia sehingga '
            'ombaknya besar dan pengunjung dilarang berenang. Wisatawan '
            'biasanya menikmati pantai dengan naik andong, ATV, atau '
            'mengunjungi Gumuk Pasir Parangkusumo yang berada di dekatnya.',
        ikon: Icons.waves,
        fakta: [
          'Dekat dengan Gumuk Pasir Parangkusumo.',
          'Tersedia wisata andong dan ATV di tepi pantai.',
          'Ombak besar, pengunjung tidak dianjurkan berenang.',
        ],
      ),
    ],
  );

  static const KategoriWisata gunung = KategoriWisata(
    nama: 'Gunung',
    subjudul: 'Puncak-puncak eksotis',
    deskripsi:
        'Sebagai negara yang berada di jalur cincin api, Indonesia memiliki '
        'banyak gunung dengan panorama matahari terbit, danau kawah, dan '
        'lautan pasir yang memukau.',
    ikon: Icons.terrain,
    warna: Color(0xFF2E7D32),
    route: AppRoutes.gunung,
    daftar: [
      Wisata(
        nama: 'Gunung Bromo',
        lokasi: 'Jawa Timur',
        deskripsiSingkat:
            'Gunung berapi aktif setinggi 2.329 mdpl yang dikelilingi '
            'lautan pasir dan terkenal dengan matahari terbitnya.',
        deskripsiLengkap:
            'Gunung Bromo berada di kawasan Taman Nasional Bromo Tengger '
            'Semeru. Pengunjung biasanya berangkat dini hari menuju Penanjakan '
            'untuk melihat matahari terbit, lalu menyeberangi lautan pasir '
            'dan menaiki tangga menuju bibir kawah.',
        ikon: Icons.wb_twilight,
        fakta: [
          'Ketinggian sekitar 2.329 meter di atas permukaan laut.',
          'Suku Tengger menggelar upacara Yadnya Kasada setiap tahun.',
          'Titik favorit melihat matahari terbit: Penanjakan.',
        ],
      ),
      Wisata(
        nama: 'Gunung Rinjani',
        lokasi: 'Lombok, Nusa Tenggara Barat',
        deskripsiSingkat:
            'Gunung berapi setinggi 3.726 mdpl dengan Danau Segara Anak '
            'di dalam kalderanya.',
        deskripsiLengkap:
            'Rinjani adalah salah satu gunung berapi tertinggi di Indonesia. '
            'Di dalam kalderanya terdapat Danau Segara Anak dan anak gunung '
            'bernama Gunung Barujari. Jalur pendakiannya populer di kalangan '
            'pendaki dalam dan luar negeri.',
        ikon: Icons.hiking,
        fakta: [
          'Ketinggian sekitar 3.726 meter di atas permukaan laut.',
          'Memiliki danau kawah bernama Segara Anak.',
          'Kawasannya ditetapkan sebagai UNESCO Global Geopark.',
        ],
      ),
      Wisata(
        nama: 'Gunung Semeru',
        lokasi: 'Jawa Timur',
        deskripsiSingkat:
            'Gunung tertinggi di Pulau Jawa (3.676 mdpl) dengan puncak '
            'bernama Mahameru.',
        deskripsiLengkap:
            'Semeru menjadi tujuan para pendaki karena merupakan atap Pulau '
            'Jawa. Sebelum mencapai puncak Mahameru, pendaki biasanya '
            'beristirahat di Ranu Kumbolo, danau jernih yang sangat indah '
            'di ketinggian sekitar 2.400 mdpl.',
        ikon: Icons.landscape,
        fakta: [
          'Gunung tertinggi di Pulau Jawa.',
          'Puncaknya disebut Mahameru.',
          'Ranu Kumbolo menjadi lokasi berkemah favorit pendaki.',
        ],
      ),
    ],
  );

  static const KategoriWisata budaya = KategoriWisata(
    nama: 'Budaya',
    subjudul: 'Ragam tradisi daerah',
    deskripsi:
        'Setiap daerah di Indonesia memiliki seni pertunjukan dan tradisi '
        'khas yang diwariskan turun-temurun dan menjadi identitas bangsa.',
    ikon: Icons.theater_comedy,
    warna: Color(0xFFE65100),
    route: AppRoutes.budaya,
    daftar: [
      Wisata(
        nama: 'Tari Kecak',
        lokasi: 'Bali',
        deskripsiSingkat:
            'Tarian massal yang diiringi seruan "cak-cak-cak" dari puluhan '
            'penari pria tanpa alat musik.',
        deskripsiLengkap:
            'Tari Kecak menceritakan kisah Ramayana. Para penari pria duduk '
            'melingkar sambil menyerukan "cak" secara berirama sebagai '
            'pengganti musik. Pertunjukan ini sering digelar saat matahari '
            'terbenam, misalnya di kawasan Pura Uluwatu.',
        ikon: Icons.groups,
        fakta: [
          'Mengangkat kisah epos Ramayana.',
          'Iringan musik berasal dari suara para penari.',
          'Sering dipentaskan di Uluwatu menjelang senja.',
        ],
      ),
      Wisata(
        nama: 'Reog Ponorogo',
        lokasi: 'Ponorogo, Jawa Timur',
        deskripsiSingkat:
            'Seni pertunjukan dengan topeng kepala harimau berhias bulu '
            'merak (dadak merak) yang sangat berat.',
        deskripsiLengkap:
            'Dalam Reog Ponorogo, pembarong mengangkat topeng dadak merak '
            'yang beratnya puluhan kilogram dengan kekuatan gigi. Tokoh lain '
            'dalam pertunjukan antara lain Warok, Jathil, Bujang Ganong, dan '
            'Prabu Klono Sewandono.',
        ikon: Icons.festival,
        fakta: [
          'Topeng dadak merak diangkat menggunakan gigi.',
          'Diakui UNESCO sebagai Warisan Budaya Takbenda.',
          'Rutin tampil pada Grebeg Suro di Ponorogo.',
        ],
      ),
      Wisata(
        nama: 'Wayang Kulit',
        lokasi: 'Jawa Tengah & D.I. Yogyakarta',
        deskripsiSingkat:
            'Pertunjukan bayangan boneka kulit yang dimainkan dalang dengan '
            'iringan gamelan.',
        deskripsiLengkap:
            'Wayang kulit dimainkan oleh seorang dalang di balik kelir (layar) '
            'yang disinari lampu, diiringi gamelan dan sinden. Ceritanya '
            'banyak diambil dari Mahabharata dan Ramayana, dan pertunjukannya '
            'dapat berlangsung semalam suntuk.',
        ikon: Icons.nightlife,
        fakta: [
          'Diakui UNESCO sebagai Warisan Budaya Takbenda sejak 2003.',
          'Hari Wayang Nasional diperingati setiap 7 November.',
          'Satu pertunjukan dapat berlangsung semalam suntuk.',
        ],
      ),
    ],
  );

  static const KategoriWisata kuliner = KategoriWisata(
    nama: 'Kuliner',
    subjudul: 'Cita rasa khas daerah',
    deskripsi:
        'Kekayaan rempah Nusantara melahirkan beragam makanan khas daerah '
        'dengan cita rasa yang kuat dan cara memasak yang unik.',
    ikon: Icons.restaurant_menu,
    warna: Color(0xFFC62828),
    route: AppRoutes.kuliner,
    daftar: [
      Wisata(
        nama: 'Rendang',
        lokasi: 'Sumatera Barat',
        deskripsiSingkat:
            'Daging sapi yang dimasak lama dengan santan dan rempah hingga '
            'bumbunya meresap dan kering.',
        deskripsiLengkap:
            'Rendang adalah masakan khas Minangkabau. Daging dimasak '
            'perlahan dengan santan, cabai, serta rempah seperti lengkuas, '
            'serai, dan daun kunyit selama berjam-jam. Proses ini membuat '
            'rendang awet sehingga dahulu menjadi bekal para perantau.',
        ikon: Icons.lunch_dining,
        fakta: [
          'Dimasak berjam-jam hingga santan mengering.',
          'Pernah dinobatkan sebagai salah satu makanan terlezat dunia.',
          'Tahan lama, cocok sebagai bekal perjalanan.',
        ],
      ),
      Wisata(
        nama: 'Gudeg',
        lokasi: 'D.I. Yogyakarta',
        deskripsiSingkat:
            'Olahan nangka muda dengan santan dan gula jawa yang bercita '
            'rasa manis gurih.',
        deskripsiLengkap:
            'Gudeg dibuat dari nangka muda (gori) yang dimasak lama bersama '
            'santan, gula jawa, dan daun jati sehingga berwarna cokelat. '
            'Biasanya disajikan dengan nasi, krecek, telur, dan opor ayam. '
            'Karena sangat populer, Yogyakarta dijuluki Kota Gudeg.',
        ikon: Icons.rice_bowl,
        fakta: [
          'Bahan utama: nangka muda (gori).',
          'Warna cokelat berasal dari daun jati.',
          'Yogyakarta dijuluki Kota Gudeg.',
        ],
      ),
      Wisata(
        nama: 'Rawon',
        lokasi: 'Jawa Timur',
        deskripsiSingkat:
            'Sup daging berkuah hitam pekat dari kluwek dengan rasa gurih '
            'yang khas.',
        deskripsiLengkap:
            'Warna hitam kuah rawon berasal dari buah kluwek. Rawon biasanya '
            'disajikan dengan nasi putih, tauge pendek, telur asin, sambal, '
            'dan kerupuk udang. Hidangan ini mudah ditemukan di berbagai kota '
            'di Jawa Timur.',
        ikon: Icons.soup_kitchen,
        fakta: [
          'Kuah hitam berasal dari buah kluwek.',
          'Pelengkap khas: tauge pendek dan telur asin.',
          'Populer di seluruh Jawa Timur.',
        ],
      ),
    ],
  );

  /// Urutan menu pada GridView di beranda.
  static const List<KategoriWisata> semuaKategori = [
    pantai,
    gunung,
    budaya,
    kuliner,
  ];

  /// Mencari data wisata berdasarkan nama yang dikirim lewat parameter.
  /// Mengembalikan null bila nama tidak ditemukan.
  static ({Wisata wisata, KategoriWisata kategori})? cariBerdasarkanNama(
    String nama,
  ) {
    for (final kategori in semuaKategori) {
      for (final wisata in kategori.daftar) {
        if (wisata.nama == nama) {
          return (wisata: wisata, kategori: kategori);
        }
      }
    }
    return null;
  }
}
