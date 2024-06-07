import 'package:flutter_application_1/model/pasien.dart';

class Pasien {
  late int id;
  late String nomor_rm;
  late String nama;
  late String tanggal_lahir;
  late String nomor_telepon;
  late String alamat;

  Pasien(Map pasien) {
    id = pasien['id'];
    nomor_rm = pasien['nomor_rm'];
    nama = pasien['nama'];
    tanggal_lahir = pasien['tanggal_lahir'];
    nomor_telepon = pasien['nomor_telepon'];
    alamat = pasien['alamat'];
  }
}
