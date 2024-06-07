import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tambah Pegawai",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pegawai")),
              SizedBox(height: 15),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir")),
              SizedBox(height: 15),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor Telepon")),
              SizedBox(height: 15),
              TextField(decoration: const InputDecoration(labelText: "Email")),
              SizedBox(height: 15),
              TextField(
                  decoration: const InputDecoration(labelText: "Password")),
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
