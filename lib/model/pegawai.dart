class Pegawai {
  late int id;
  late String nip;
  late String nama;
  late String tanggal_lahir;
  late String nomor_telepon;
  late String email;
  late String password;

  Pegawai(Map pegawai) {
    id = pegawai['id'];
    nip = pegawai['nip'];
    nama = pegawai['nama'];
    tanggal_lahir = pegawai['tanggal_lahir'];
    nomor_telepon = pegawai['nomor_telepon'];
    email = pegawai['email'];
    password = pegawai['password'];
  }
}
