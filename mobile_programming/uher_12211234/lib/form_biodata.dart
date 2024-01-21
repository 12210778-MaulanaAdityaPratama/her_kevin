import 'package:flutter/material.dart';
import 'detail_biodata.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BiodataForm(),
    );
  }
}

class BiodataForm extends StatefulWidget {
  @override
  _BiodataFormState createState() => _BiodataFormState();
}

class _BiodataFormState extends State<BiodataForm> {
  final TextEditingController nimController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Biodata Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: nimController,
                decoration: InputDecoration(labelText: 'NIM')),
            TextField(
                controller: namaController,
                decoration: InputDecoration(labelText: 'Nama')),
            TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailBiodata(
                    nim: nimController.text,
                    nama: namaController.text,
                    email: emailController.text,
                  ),
                ),
              ),
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
