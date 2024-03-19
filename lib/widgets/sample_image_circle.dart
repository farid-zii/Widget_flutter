import 'package:flutter/material.dart';

class SampleImageCirle extends StatelessWidget {
  const SampleImageCirle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Widget Image Cirle"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            // Image.network('https://picsum.photos/200/150'),
            Image.asset('assets/image/gambar.jpg'),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/image/gambar.jpg"),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/image/gambar.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            ClipOval(
              child: Image.asset(
                "assets/image/gambar.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/image/gambar.jpg"),
                    fit: BoxFit.fill,
                  )),
            )
          ],
        ));
  }
}
