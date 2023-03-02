import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
List<Widget> pageChildren(double width) {
  final List<Map<String, dynamic>> gridmap = [
    {
      "tittle": 'RING',
      "images": 'assets/images/plant1.png',
    },
    {
      "tittle": 'NECKLESS',
      "images": 'assets/images/plant2.png',
    },
    {
      "tittle": 'EARRING',
      "images": 'assets/images/plant3.png',
    },
    {
      "tittle": 'DIAMOND NECKLESS',
      "images": 'assets/images/plant4.png',
    },
    {
      "tittle": 'BANGLES',
      "images": 'assets/images/plant5.png',
    },
    {
      "tittle": 'RING',
      "images": 'assets/images/plant6.png',
    },
    {
      "tittle": 'NECKLESS',
      "images": 'assets/images/plant1.png',
    },
  ];
  return <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: gridmap.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                  offset: Offset(0,2),
                    blurRadius: 3,
                  blurStyle: BlurStyle.solid,
                  color: Colors.black12
                ),],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(gridmap[index]['images']),
                    height: 100,
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      gridmap[index]['tittle'],
                    ),
                  )
                ],
              ),
            );
          }),
    ),
  ];
}