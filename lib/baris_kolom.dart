import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom Belajar"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 1; i < 4; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var j = 1; j < 4; j++) Text("Baris $j, Kolom $i")
              ],
            )
          //   Text("Baris1, Kolom1 ,"),
          //   Text("Baris1, Kolom2 ,"),
          //   Text("Baris1, Kolom3 ,"),
          //   Text("Baris1, Kolom4 ")
          // ]),
          // Row(children: const [
          //   Text("Baris2, Kolom1, "),
          //   Text("Baris2, Kolom2, "),
          //   Text("Baris2, Kolom3, "),
          //   Text("Baris2, Kolom4 ")
          // ]),
          // Row(children: const [
          //   Text("Baris3, Kolom1, "),
          //   Text("Baris3, Kolom2, "),
          //   Text("Baris3, Kolom3, "),
          //   Text("Baris3, Kolom4 ")
          // ])
        ],
      ),
    );
  }
}
