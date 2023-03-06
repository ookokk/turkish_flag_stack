import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.orange,
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TurkBayragi(g: 200),
          ],
        ));
  }
}

class TurkBayragi extends StatelessWidget {
  double g;
  TurkBayragi({required this.g});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: g,
        width: g * 1.5,
        child: Stack(
          alignment: Alignment.center,
          //fit: StackFit.loose,
          children: <Widget>[
            Container(color: Colors.red),
            Positioned(
              left: 0.25 * g,
              top: 0.25 * g,
              child: myCircleContainer(
                  height: g * 0.5, weight: g * 0.5, color: Colors.white),
            ),
            Positioned(
              left: 0.3625 * g,
              top: 0.3 * g,
              child: myCircleContainer(
                  height: g * 0.4, weight: g * 0.4, color: Colors.red),
            ),
            Positioned(
              left: 0.7 * g,
              top: 0.375 * g,
              child: Container(
                transform: Matrix4.rotationZ(-0.25),
                child: Icon(
                  Icons.star_sharp,
                  color: Colors.white,
                  size: g * 0.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class myCircleContainer extends StatelessWidget {
  const myCircleContainer(
      {Key? key,
      //required this.g,
      required this.height,
      required this.weight,
      required this.color})
      : super(key: key);

  //final double g;
  final double height;
  final double weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weight,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle));
  }
}
