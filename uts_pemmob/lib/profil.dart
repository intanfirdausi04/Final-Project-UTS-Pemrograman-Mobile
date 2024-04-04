import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final String nama;
  final String ttl;
  final String alamat;
  final String nohp;
  final String email;
  final String githubProfileUrl;
  final String educationHistory;
  final List<String> awards;

  ProfileDetails({
    required this.nama,
    required this.ttl,
    required this.alamat,
    required this.nohp,
    required this.email,
    required this.githubProfileUrl,
    required this.educationHistory,
    required this.awards,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('asset/rifa.jpg'), // Add your profile image URL
            ),
            SizedBox(height: 40),
            Text(
              nama, // Display the name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Tanggal Lahir: $ttl\n'
              'Address: $alamat\n'
              'Phone Number: $nohp\n'
              'Email: $email\n'
              'GitHub Profile: $githubProfileUrl\n'
              'Education History: $educationHistory\n'
              'Awards: ${awards.join(", ")}', // Display other profile details
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}