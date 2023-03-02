import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
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

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Think Green and \nPlant Something",
              style: TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontSize: 55.0,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Find your dream plant for your home,\ndecoration with us,and ww will make it happen.",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  wordSpacing: 2,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Color(0xFF17463F),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Image(
            height: 380,
            image: AssetImage('assets/images/plant.png'),
          ))
    ];
  }
}
