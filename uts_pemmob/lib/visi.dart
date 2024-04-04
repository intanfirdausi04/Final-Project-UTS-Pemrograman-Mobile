import 'package:flutter/material.dart';

class VisiDetail extends StatelessWidget {
  final String namaProgramStudi;

  const VisiDetail(this.namaProgramStudi, {super.key});

  @override
  Widget build(BuildContext context) {
    String visi;
    switch (namaProgramStudi) {
      case 'Informatika':
        visi = '“MENGEMBANGKAN KEILMUAN INFORMATIKA YANG UNGGUL DALAM BIDANG SISTEM CERDAS TEPAT GUNA BERKARAKTER BELA NEGARA”.';
        break;
      case 'Sistem Informasi':
        visi = ' menjadi program studi yang unggul berkarakter bela negara. Visi tersebut diwujudkan ke dalam roadmap keilmuan program studi untuk membangun Smart Village (Desa Cerdas) dengan dukungan teknologi/sistem informasi.';
        break;
      case 'Sains Data':
        visi = '\n VISI : \n Menjadi program studi Sains Data yang unggul di bidang Kecerdasan Buatan dan Big Data untuk industri 4.0 berkarakter Bela Negara. \n \n MISI : \n1. Menyelenggarakan pendidikan terbaik di bidang kecerdasan buatan dan Big Data bagi para mahasiswa agar mampu menjadi lulusan yang handal, berkarakter Belanegara, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0. \n2. Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang kecerdasan buatan dan Big Data yang memberikan dampak pada kemajuan disiplin akademik dan profesional. \n3. Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang kecerdasan buatan dan Big Data. \n4. Melaksanakan tata kelola yang baik dan bersih dalam rangka mencapai pengelolaan anggaran yang akuntabel. \n5. Mengembangkan kualitas Sumber Daya Manusia yang memiliki karakter unggul, handal, cerdas, dan berjiwa kepemimpinan. \n6. Mengembangkan sistem pengelolaan sarana dan prasarana terintegrasi yang mendukung operasional. \n7. Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridarma perguruan tinggi';
        break;
      case 'Bisnis Digital':
        visi = 'Program studi S1 Bisnis Digital UPN “Veteran” Jawa Timur kekhasan dengan menempatkan perilaku bisnis dan teknologi digital sebagai pondasi dasar keilmuan dan perilaku karakter keilmuan Belanegara. Tidak seperti halnya program studi kewirausahaan, informatika, sistem informasi, akuntansi dan manajemen yang biasanya berlandaskan ilmu komputer atau ilmu ekonomi, pendekatan bisnis dan teknologi digital ini berlandaskan kepada interaksi antara aspek humaniora, aspek sosial, aspek teknikal, dan sumber daya lain (termasuk teknologi digital) dalam perancangandan proses-proses organisasi serta manajemen fungsional yang berkarakter Belanegara. Program studi ini dikembangkan untuk mempersiapkan sumber daya manusia di bidang penguasaan manajemen pemasaran dan keuangan, transformasi digital, digital marketing, start-up digital, analisis data, hingga artificial intelligence, sehingga akan menjadi Program Studi yang berbasis Teknologi Bisnis Cerdas Digital (Smart Digital Intelligence Business Technology) berkarakter Kampus Belanegara.';
        break;
      case 'Magister Teknologi Informasi':
        visi = '\n VISI : \n  “Menjadi Program Studi yang Unggul di Bidang Teknologi Informasi berbasis Sistem Cerdas yang Berkarakter Bela Negara” \n \n MISI : \n1. Program Studi yang Unggul di Bidang Teknologi Informasi. \n2. Program Studi yang menyiapkan SDM yang tangguh sesuai eranya (era sistem cerdas menuju industri 4.0 dan Society 5.0). \n3. Program Studi yang menyiapkan SDM yang berahlak mulia yang cinta kepada negara dan bangsa (karakter Bela Negara).';
        break;
      default:
        visi = 'Visi tidak tersedia';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Visi $namaProgramStudi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visi dan Misi dari Program Studi $namaProgramStudi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              visi,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
