import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Widget Text"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: Text("Mari Belajar Text Widget Bersama-sama sampai bisa"),
            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                "Mari Belajar Text Widget Bersama-sama sampai bisa",
                textAlign: TextAlign.center,
                //textAlign --> untuk meratakan text
                overflow: TextOverflow.clip,
                //ellipsip --> jika text melebihi container maka akan ada titik dibelakangnya
                //visible --> jika text melebihi container maka text tetap tampil dan melebihi container
                //clip --> jika text melebihi container maka text yang berlebih tidak tampil
                //fade --> jika text melebihi container maka text yang berlebih menjadi bayang"

                textScaleFactor: 1,
                //untuk mengubah ukuran text menjadi n kali lipan tergatung value yang dimasukan
                style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.italic,
                    // untuk font family, fontnya di download dulu dan disimpan dalam sebuah folder misal aaset
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red[200],
                    decorationStyle: TextDecorationStyle.wavy,
                    //Wavy -->bergelombang
                    letterSpacing: 5,
                    //untuk jarak antar barik pada text
                    wordSpacing: 15),
              ),
            ),
          ],
        ));
  }
}
