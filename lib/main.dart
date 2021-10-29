import 'package:advanced_ui/pages/lists_page.dart';
import 'package:advanced_ui/pages/page_view.dart';
import 'package:advanced_ui/pages/sliver.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: BottomApp(),
    );
  }
}

class BottomApp extends StatefulWidget {
  const BottomApp({Key? key}) : super(key: key);

  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOption = [
    const PageViewP(),
    ListPage(),
    const SliverA(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Page View',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_sharp),
              label: 'Sliver',
              backgroundColor: Colors.green),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
