import 'package:flutter/material.dart';

class DosenDetail extends StatelessWidget {
  final String namaProgramStudi;

  DosenDetail(this.namaProgramStudi);

  @override
  Widget build(BuildContext context) {
    List<Dosen> dosenList = DosenData.getForProgramStudi(namaProgramStudi);

    return Scaffold(
      appBar: AppBar(
        title: Text('Dosen $namaProgramStudi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menentukan jumlah kolom dalam grid
            crossAxisSpacing: 16, // Spasi antar kolom
            mainAxisSpacing: 16, // Spasi antar baris
            childAspectRatio: 0.7, // Merubah rasio aspek gambar
          ),
          itemCount: dosenList.length,
          itemBuilder: (context, index) {
            Dosen dosen = dosenList[index];
            return buildDosenItem(dosen.nama, dosen.imageUrl);
          },
        ),
      ),
    );
  }

  Widget buildDosenItem(String nama, String imageUrl) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8), // Mengurangi margin pada Card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: imageUrl.isNotEmpty
                ? Image.asset(
                    imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Center(
                    child: Text('Gambar tidak tersedia'),
                  ),
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

class Dosen {
  final String nama;
  final String imageUrl;

  Dosen(this.nama, this.imageUrl);
}

class DosenData {
  static List<Dosen> getForProgramStudi(String namaProgramStudi) {
    switch (namaProgramStudi) {
      case 'Informatika':
        return [
          Dosen('Intan Yuniar Purbasari, S.Kom. MSc.', 'asset/dosentifa1.png'),
          Dosen('Budi Nugroho, S.Kom. M.Kom.', 'asset/dosentifa2.png'),
          Dosen('Chrystia Aji Putra, S.Kom, M.T', 'asset/dosentifa3.png'),
          // Tambahkan Dosen Informatika lainnya jika ada
        ];
      case 'Sistem Informasi':
        return [
          Dosen('NUR CAHYO WIBOWO, S.Kom, M.Kom', 'asset/dosensifo1.png'),
          Dosen('PRISA MARGA KUSUMANTARA, S.Kom, M.Cs', 'asset/dosensifo2.png'),
          Dosen('SITI MUKAROMAH, S.Kom, M.Kom', 'asset/dosensifo3.png'),
          // Tambahkan Dosen SI lainnya jika ada
        ];
      case 'Sains Data':
        return [
          Dosen('Tresna Maulana Fahrudin, S.ST., M.T.', 'asset/dosensada1.png'),
          Dosen('Prismahardi Aji Riyantoko, S.Si, M.Si', 'asset/dosensada2.jpg'),
          Dosen('Kartika Maulida Hindrayani S.Kom, M.Kom', 'asset/dosensada3.jpg'),
          // Tambahkan Dosen Sains Data lainnya jika ada
        ];
      case 'Bisnis Digital':
        return [
          Dosen('Hendra Maulana, S.Kom, M.Kom', 'asset/dosenbd1.jpg'),
          Dosen('Dhian Satria Yudha Kartika, S.Kom, M.Kom', 'asset/dosenbd2.jpg'),
          Dosen('Pratama Wirya Atmaja, S.Kom, M.Kom', 'asset/dosenbd3.jpg'),
          // Tambahkan Dosen Bisnis Digital lainnya jika ada
        ];
      case 'Magister Teknologi Informasi':
        return [
          Dosen('Dr. Basuki Rahmat, S.Si., MT', 'asset/dosenmti1.jpeg'),
          Dosen('Dr. Gede Susrama Mas Diyasa, ST., MT., IPU', 'asset/dosenmti2.jpeg'),
          Dosen('Dr. Eng. Ir. Dwi Arman Prasetya, S.T., M.T., IPU', 'asset/dosenmti2.jpeg'),
          // Tambahkan Dosen MTI lainnya jika ada
        ];
      default:
        return [];
    }
  }
}
