import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '../model/data.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detail Pegawai",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(textAlign: TextAlign.left, 'Nama'),
                      Text(textAlign: TextAlign.left, 'NIP'),
                      Text(textAlign: TextAlign.left, 'Email'),
                      Text(textAlign: TextAlign.left, 'Tanggal Lahir'),
                      Text(textAlign: TextAlign.left, 'Nomor Telepon')
                    ]),
                Column(children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : ')
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pegawai.nama}"),
                    Text("${widget.pegawai.nip}"),
                    Text("${widget.pegawai.email}"),
                    Text("${widget.pegawai.tanggal_lahir}"),
                    Text("${widget.pegawai.nomor_telepon}")
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      "Ubah",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      "Hapus",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ));
  }
}
