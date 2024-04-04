import 'package:flutter/material.dart';

class akreditasiDetail extends StatelessWidget {
  final String namaProgramStudi;

  akreditasiDetail(this.namaProgramStudi);

  @override
  Widget build(BuildContext context) {
    String akreditasi;
    switch (namaProgramStudi) {
      case 'Informatika':
        akreditasi = 'Program Studi Informatika Terakreditasi BAIK SEKALI';
        break;
      case 'Sistem Informasi':
        akreditasi = 'Program Studi Sistem Informasi Terakreditasi BAIK SEKALI';
        break;
      case 'Sains Data':
        akreditasi = 'Program Studi Sains Data Terakreditasi BAIK';
        break;
      case 'Bisnis Digital':
        akreditasi = 'Program Studi Bisnis Digital Belum Terakreditasi';
        break;
      case 'Magister Teknologi Informasi':
        akreditasi = 'Program Studi Magister Teknologi Informasi Terakreditasi BAIK';
        break;
      default:
        akreditasi = 'akreditasi tidak tersedia';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Akreditasi $namaProgramStudi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Akreditasi dari Program Studi $namaProgramStudi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              akreditasi,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
