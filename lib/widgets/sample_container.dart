import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget container adalah widget yang gampang dimodifikasi height,width,warna,background
    return Container(
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      // edgeInsets memiliki
      // all -> berarti semua atas,kanan,bawah,kiri
      // only -> memiliki satu atau lebih -- EdgeInsets.only(top:10) -- top,right,left,bottom
      // symetric -> didadalamnya memiliki vertical dan horzontal  -- EdgeInsets.symmetric(horizontal:20,vertical:10)
      decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(25)),

      height: 300,
      width: 400,
      child: const Text("Selamat belajar Container, saya fanda alvaridzi aaaa"),
    );
  }
}
