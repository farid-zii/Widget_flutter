import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   // MainAxisAlignment.spaceBetween,
    //   // MainAxisAlignment.spaceEvenly,
    //   // MainAxisAlignment.spaceAround,
    //   //Mulai dari mana
    //   children: [_box(), Text("Kotak 1"), _box(), Text("Kotak 2")],
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // MainAxisAlignment.spaceBetween,
      // MainAxisAlignment.spaceEvenly,
      // MainAxisAlignment.spaceAround,
      //Mulai dari mana
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _box(),
        Column(
          children: [Text("title"), Text("decs")],
        ),
        _box(),
        Text("Kotak 2")
      ],
    );
  }

  Widget _box() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(),
      ),
    );
  }
}
