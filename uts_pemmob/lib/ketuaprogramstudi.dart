import 'package:flutter/material.dart';

class KaprodiDetail extends StatelessWidget {
  final String namaProgramStudi;

  KaprodiDetail(this.namaProgramStudi);

  @override
  Widget build(BuildContext context) {
    List<ketuaprogramstudi> ketuaprogramstudiList = KaprodiData.getForProgramStudi(namaProgramStudi);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ketua Program Studi $namaProgramStudi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: ketuaprogramstudiList.length,
                itemBuilder: (context, index) {
                  ketuaprogramstudi kaprodi = ketuaprogramstudiList[index];
                  return buildKaprodiItem(kaprodi.nama, kaprodi.imageUrl);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildKaprodiItem(String nama, String imageUrl) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              nama,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ketuaprogramstudi {
  final String nama;
  final String imageUrl;

  ketuaprogramstudi(this.nama, this.imageUrl);
}

class KaprodiData {
  static List<ketuaprogramstudi> getForProgramStudi(String namaProgramStudi) {
    switch (namaProgramStudi) {
      case 'Informatika':
        return [
          ketuaprogramstudi('Fetty Tri Anggraeny, S.Kom. M.Kom', 'asset/kaproditifa.png'),
          // Tambahkan Kaprodi Informatika lainnya jika ada
        ];
      case 'Sistem Informasi':
        return [
          ketuaprogramstudi('Agung Brastama Putra, S.Kom, M.Kom', 'asset/kaprodisifo.png'),
          // Tambahkan Kaprodi SI lainnya jika ada
        ];
      case 'Sains Data':
        return [
          ketuaprogramstudi('Dr.Eng.Ir.Dwi Arman Prasetya.,ST.,MT.,IPU., Asean. Eng', 'asset/kaprodisada.png'),
          // Tambahkan Kaprodi Sains Data lainnya jika ada
        ];
      case 'Bisnis Digital':
        return [
          ketuaprogramstudi('Sugiarto, S.Kom., M.Kom', 'asset/kaprodibisdig.png'),
          // Tambahkan Kaprodi Bisnis Digital lainnya jika ada
        ];
      case 'Magister Teknologi Informasi':
        return [
          ketuaprogramstudi('Dr. Eng. Agussalim, S.Pd., MT', 'asset/kaprodimti.jpeg'),
          // Tambahkan Kaprodi MTI lainnya jika ada
        ];
      default:
        return [];
    }
  }
}