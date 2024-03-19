import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Widget Image"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            // Image.network('https://picsum.photos/200/150'),
            Image.asset('assets/image/gambar.jpg'),
            Container(
              margin: EdgeInsets.all(5),
              height: 400,
              width: 400,
              decoration: BoxDecoration(border: Border.all()),
              child: Image.asset(
                'assets/image/gambar.jpg',
                // Image.network(
                //   'https://picsum.photos/200/150',
                alignment: Alignment.bottomLeft,
                color: Colors.red,
                colorBlendMode: BlendMode.softLight,
                //blendmode --> untuk mencapur warna gambar dan warna color yg di masukan
                // colorBlendMode: BlendMode.darken,
                // fit: BoxFit.fill,
                //cover --> gambar penuh tapi gambar terpotong/ga semua gambar keliatan
                //contain --> menyesuaikan dengan lebar/tinggi yang paling rendah
                //fill --> menyeuasikan gambar dengan parent
                repeat: ImageRepeat.repeat,
                //untuk memenuhi container
              ),
            ),
          ],
        ));
  }
}
