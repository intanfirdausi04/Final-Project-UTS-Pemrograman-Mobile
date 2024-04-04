import 'package:flutter/material.dart';
import 'dosen.dart';
import 'lamanwebsiteresmi.dart';
import 'prestasimahasiswa.dart';
import 'akreditasi.dart';
import 'visi.dart';
import 'ketuaprogramstudi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ProfilFakultas(),
    );
  } 
}

class ProfilFakultas extends StatelessWidget {
  const ProfilFakultas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFIL FAKULTAS ILMU KOMPUTER UPN "VETERAN" JAWA TIMUR'),
      ),
      body: ListView( // Menggunakan ListView agar konten dapat di-scroll
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fakultas Ilmu Komputer merupakan salah satu dari 7 fakultas di UPN "Veteran" Jawa Timur yang terdiri dari program studi:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8), // Tambahkan jarak antara teks dan gambar
                Image.asset(
                  'asset/fasilkom.jpg', // Ganti URL dengan URL gambar fakultas Ilmu Komputer
                  height: 800, // Atur tinggi gambar sesuai kebutuhan
                  fit: BoxFit.cover, // Atur fit untuk mengisi ruang dengan gambar
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(), // Agar tidak melebihi ukuran parent ListView
              children: [
                ProgramStudiCard('Informatika', 'asset/logotifa.png', context),
                ProgramStudiCard('Sistem Informasi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfXCQCRn1AXlA7CESt3eZzK_gRV2_8l12Ogd_HNYhIMw&s', context),
                ProgramStudiCard('Sains Data', 'https://yt3.googleusercontent.com/ytc/AIdro_nUQyICFvW5NwmWKr_awk_DUU1unnA0kCznoV3Z=s900-c-k-c0x00ffffff-no-rj', context),
                ProgramStudiCard('Bisnis Digital', 'asset/logobd.jpg', context),
                ProgramStudiCard('Magister Teknologi Informasi', 'asset/logomti.jpg', context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add your profile menu item
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfilePage(
                      name: 'Intan Firdausi',
                      dateOfBirth: '4 Maret 2004',
                      address: 'Gresik',
                      phoneNumber: '+62 858-0601-0041',
                      email: '22082010059@upnjatim.ac.id',
                      githubProfileUrl: 'https://github.com/intanfirdausi04',
                    )),
                  );
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    Text('Intan Firdausi'), // Replace with your name
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String name;
  final String dateOfBirth;
  final String address;
  final String phoneNumber;
  final String email;
  final String githubProfileUrl;

  const ProfilePage({super.key, 
    required this.name,
    required this.dateOfBirth,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.githubProfileUrl,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Profil Mahasiswa'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('asset/rifa.jpg'),
          ),
          const SizedBox(height: 20),
          Text(
            name, // Gunakan properti name untuk menampilkan nama
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // Tambahkan widget untuk menampilkan informasi profil lainnya
          Text('Date of Birth: $dateOfBirth'),
          Text('Address: $address'),
          Text('Phone Number: $phoneNumber'),
          Text('Email: $email'),
          Text('GitHub Profile: $githubProfileUrl'),
        ],
      ),
    ),
  );
}
}


class ProgramStudiCard extends StatelessWidget {
  final String namaProgramStudi;
  final String urlToLogo;
  final BuildContext context;

  const ProgramStudiCard(this.namaProgramStudi, this.urlToLogo, this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailProgramStudi(namaProgramStudi, urlToLogo),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.network(
                urlToLogo,
                height: 64,
                width: 64,
              ),
              const SizedBox(width: 16),
              Text(
                namaProgramStudi,
                style: const TextStyle(fontSize: 18),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailProgramStudi extends StatelessWidget {
  final String namaProgramStudi;
  final String urlToLogo;

  const DetailProgramStudi(this.namaProgramStudi, this.urlToLogo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaProgramStudi),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                urlToLogo,
                height: 120,
                width: 120,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Profil Program Studi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ProgramStudiInfo(namaProgramStudi),
          ],
        ),
      ),
    );
  }
}

class ProgramStudiInfo extends StatelessWidget {
  final String namaProgramStudi;

  const ProgramStudiInfo(this.namaProgramStudi, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProgramStudiDetailItem(
  title: 'Visi dan Misi',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VisiDetail(namaProgramStudi),
      ),
    );
  },
),


        ProgramStudiDetailItem(
  title: 'Akreditasi',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => akreditasiDetail(namaProgramStudi),
      ),
    );
  },
),

        ProgramStudiDetailItem(
  title: 'Ketua Program Studi',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KaprodiDetail(namaProgramStudi),
      ),
    );
  },
),

ProgramStudiDetailItem(
  title: 'Dosen',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DosenDetail(namaProgramStudi),
      ),
    );
  },
),

ProgramStudiDetailItem(
  title: 'Laman Website Resmi',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebsiteEmailDetail(
          websiteUrl: 'http://if.upnjatim.ac.id', // Ganti dengan URL website resmi
          email: 'humas@upnjatim.ac.id', // Ganti dengan alamat email
        ),
      ),
    );
  },
),



ProgramStudiDetailItem(
  title: 'Prestasi Mahasiswa',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PrestasiMahasiswaDetail(namaProgramStudi),
      ),
    );
  },
),


      ],
    );
  }
  
  WebsiteDetail(String namaProgramStudi, String s) {}
  
  ketuaprogramstudiDetail(String namaProgramStudi) {}
}

class ProgramStudiDetailItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ProgramStudiDetailItem({super.key, 
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ),
    );
  }
}
