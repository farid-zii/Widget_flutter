import 'package:flutter/material.dart';

class SampleListViewBuilder extends StatelessWidget {
  SampleListViewBuilder({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Listview Bulder"),
          backgroundColor: Colors.blue[400],
        ),
        body: Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //Membuat bisa digeser dengan axis.horizontal
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return CircleAvatar(
                radius: 60,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/150?img=$index'),
                ),
              );
              return Container(
                color: Colors.pink[colorCodes[index]],
                width: 100,
              );
            },
            itemCount: colorCodes.length,
          ),
        )
        // body: ListView.builder(
        //   padding: EdgeInsets.all(15),
        //   itemBuilder: (context, index) {
        //     return Container(
        //       color: Colors.pink[colorCodes[index]],
        //       height: 100,
        //     );
        //   },
        //   itemCount: colorCodes.length,
        // ),
        );
  }
}
