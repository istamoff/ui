import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverA extends StatelessWidget {
  const SliverA({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver AppBar'),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 50.0,
                child: Center(
                  child: Text('${index+1}', textScaleFactor: 2),
                ),
              );
            },
            childCount: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(4.0),
            color: Colors.green,
            child: const Text('Grid Box' ,style: TextStyle( fontSize: 20),),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.green[100 * (index % 9)],
                child: Text('grid $index'),
              );
            },
              childCount: 20,

            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 3.0,
            )
        )


      ],
    );
  }
}
