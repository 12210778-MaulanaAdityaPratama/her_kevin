import 'package:flutter/material.dart';

class DetailBiodata extends StatelessWidget {
  final String nim, nama, email;

  DetailBiodata({required this.nim, required this.nama, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Biodata')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NIM: $nim'),
            Text('Nama: $nama'),
            Text('Email: $email'),
          ],
        ),
      ),
    );
  }
}
