import 'package:flutter/material.dart';

class SampleListtileListview extends StatelessWidget {
  SampleListtileListview({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  final List data = [
    {
      'image': "https://i.pravatar.cc/150?img=1",
      'name': "Fanda",
      'address': "Pauh",
    },
    {
      'image': "https://i.pravatar.cc/150?img=2",
      'name': "Pipiin",
      'address': "Kuranji",
    },
    {
      'image': "https://i.pravatar.cc/150?img=3",
      'name': "Afa",
      'address': "Lubeg",
    },
    {
      'image': "https://i.pravatar.cc/150?img=4",
      'name': "aaa",
      'address': "Lubeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Listtile & Listview"),
        backgroundColor: Colors.blue[400],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]["image"]),
            title: Text(
              data[index]["name"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(data[index]["address"]),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.amber[300],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            color: Colors.black,
          );
          //Divider == garis
        },
      ),
    );
  }
}
