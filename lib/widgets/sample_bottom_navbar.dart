import 'package:belajar_widget/widgets/sample_column_row.dart';
import 'package:belajar_widget/widgets/sample_container.dart';
import 'package:belajar_widget/widgets/sample_listview_builder.dart';
import 'package:belajar_widget/widgets/sample_padding.dart';
import 'package:flutter/material.dart';

class SampleBottomNavbar extends StatefulWidget {
  const SampleBottomNavbar({super.key});

  @override
  State<SampleBottomNavbar> createState() => _SampleBottomNavbarState();
}

class _SampleBottomNavbarState extends State<SampleBottomNavbar> {
  int _selectIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  List<Widget> page = [
    SampleColumnRow(),
    SamplePadding(),
    SampleContainer(),
    SampleListViewBuilder(),
  ];

  List<Widget> pages = [
    Text(
      'Beranda',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Search',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Favorite',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Setting',
      style: TextStyle(fontSize: 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Bottom Navigation Bar"),
          backgroundColor: Colors.blue,
        ),
        body: page[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //Jika mau manambahkan >3 item pada navigasi tambahkan type
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.amber,
          selectedFontSize: 20,
          iconSize: 30,
          showUnselectedLabels: false,
          currentIndex: _selectIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Cari"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorit"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ));
  }
}
