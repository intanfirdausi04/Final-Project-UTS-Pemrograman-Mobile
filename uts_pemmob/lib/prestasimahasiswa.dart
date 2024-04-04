import 'package:flutter/material.dart';

class PrestasiMahasiswaDetail extends StatelessWidget {
  final String namaProgramStudi;

  PrestasiMahasiswaDetail(this.namaProgramStudi);

  @override
  Widget build(BuildContext context) {
    List<PrestasiMahasiswa> prestasiList = PrestasiMahasiswaData.getForProgramStudi(namaProgramStudi);

    return Scaffold(
      appBar: AppBar(
        title: Text('Prestasi Mahasiswa $namaProgramStudi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Prestasi Mahasiswa dari Program Studi $namaProgramStudi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: prestasiList.length,
                itemBuilder: (context, index) {
                  PrestasiMahasiswa prestasi = prestasiList[index];
                  return buildPrestasiItem(prestasi.judul, prestasi.imageUrl);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPrestasiItem(String title, String imageUrl) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class PrestasiMahasiswa {
  final String judul;
  final String imageUrl;

  PrestasiMahasiswa(this.judul, this.imageUrl);
}

class PrestasiMahasiswaData {
  static List<PrestasiMahasiswa> getForProgramStudi(String namaProgramStudi) {
    switch (namaProgramStudi) {
      case 'Informatika':
        return [
          PrestasiMahasiswa('Medali Emas Cabor Hockey Putra Prov Jatim 2023', 'asset/tifa1.png'),
          PrestasiMahasiswa('Top 20 Product Based Capstore Project Bangkit 2023', 'asset/tifa2.png'),
          PrestasiMahasiswa('Juara 1-Poomsae Beregu Senior Putri', 'asset/tifa3.png'),
          // Tambahkan prestasi Informatika lainnya jika ada
        ];
      case 'Sistem Informasi':
        return [
          PrestasiMahasiswa('Juara Favorit Lomba Baca Puisi 2023', 'asset/sifo1.png'),
          PrestasiMahasiswa('Juara 1 Lomba Esai Nasional 2023', 'asset/sifo2.png'),
          PrestasiMahasiswa('Juara 2 Kyorugi Festival Putri', 'asset/sifo3.png'),
          // Tambahkan prestasi SI lainnya jika ada
        ];
      case 'Sains Data':
        return [
          PrestasiMahasiswa('Genbi Infographics Competition 2023', 'asset/sada1.jpg'),
          PrestasiMahasiswa('BMC Dies Natalis Fasilkom 2023', 'asset/sada2.jpg'),
          PrestasiMahasiswa('Awardee Beasiswa Bank Indonesia 2023', 'asset/sada3.jpg'),
          PrestasiMahasiswa('Peraih Pendanaan PKM-KC Skema Pendanaan Tahun 2023', 'asset/sada4.jpg'),
          // Tambahkan prestasi Sains Data lainnya jika ada
        ];
      case 'Bisnis Digital':
        return [
          PrestasiMahasiswa('', ''),
          PrestasiMahasiswa('', ''),
          // Tambahkan prestasi Bisnis Digital lainnya jika ada
        ];
      case 'Magister Teknologi Informasi':
        return [
          PrestasiMahasiswa('', ''),
          PrestasiMahasiswa('', ''),
          // Tambahkan prestasi MTI lainnya jika ada
        ];
      default:
        return [];
    }
  }
}