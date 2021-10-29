import 'package:flutter/material.dart';

class PageViewP extends StatelessWidget {
   const PageViewP({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: PageController(initialPage: 0),
        children:  const [
          Center(
            child: Text('First Page'),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
        ]


    ));
  }
}
