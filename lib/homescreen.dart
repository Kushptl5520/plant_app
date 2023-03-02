import 'package:flutter/material.dart';
import 'package:plant_app/container.dart';
import 'package:plant_app/custom_navbar.dart';
import 'package:plant_app/landingpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> gridmap = [
    {
      "tittle": 'PLANT',
      "images": 'assets/images/plant1.png',
    },
    {
      "tittle": 'PLANT',
      "images": 'assets/images/plant2.png',
    },
    {
      "tittle": 'PLANT',
      "images": 'assets/images/plant3.png',
    },
    {
      "tittle": 'PLANT',
      "images": 'assets/images/plant4.png',
    },
    {
      "tittle": 'PLANT',
      "images": 'assets/images/plant5.png',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFF17463F)),
              child: Column(
                children: [
                  CustomNavBar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: LandingPage(),
                  ),

                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(
            child: Column(
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
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
                              height: 200,
                              width: 200,
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
              ],
            ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}
