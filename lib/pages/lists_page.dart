import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);

  final List<String> entry = [
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('ListView')),
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, int index) {
            return Container(
              height: 50,
              color: Colors.green[index.isOdd ? 100 : 500],
              child: Center(
                child: Text(entry[index]),
              ),
            );
          }),
    );
  }
}
