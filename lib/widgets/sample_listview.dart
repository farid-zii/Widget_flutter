import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  const SampleListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Listview"),
        backgroundColor: Colors.blue[400],
      ),
      body: ListView(
        reverse: true,
        //membalikkan dari bawah ke atas
        padding: EdgeInsets.all(20),
        children: [
          Container(
            color: Colors.purple[700],
            height: 100,
          ),
          Container(
            color: Colors.purple[600],
            height: 100,
          ),
          Container(
            color: Colors.purple[500],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
          Container(
            color: Colors.purple[700],
            height: 100,
          ),
          Container(
            color: Colors.purple[600],
            height: 100,
          ),
          Container(
            color: Colors.purple[500],
            height: 100,
          ),
          Container(
            color: Colors.purple[400],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
        ],
      ),
    );
  }
}
