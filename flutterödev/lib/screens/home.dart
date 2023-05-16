import 'package:flutter/material.dart';
import 'package:petgoapp/utils/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0;

  List<Widget> bodyList = [
    Text("Ana Sayfa"),
    Text("Kurumsal"),
    Text("İletişim"),
    Text("Ayarlar"),
  ];
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(child: bodyList[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _selectedIndex == 0 ? Colors.cyan[900] : Colors.black38),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work,
                color: _selectedIndex == 1 ? Colors.cyan[900] : Colors.black38),
            label: 'Kurumsal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone,
                color: _selectedIndex == 2 ? Colors.cyan[900] : Colors.black38),
            label: 'İletişim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: _selectedIndex == 3 ? Colors.cyan[900] : Colors.black38),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan[900],
        onTap: (int index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
}
