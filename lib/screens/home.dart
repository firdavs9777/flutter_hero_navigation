import 'package:flutter/material.dart';
import 'package:hero_animation/screens/fly.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                child: Hero(
                  tag: 'format_paint',
                  child: Icon(Icons.format_color_fill_sharp,
                      color: Colors.lightGreen, size: 4
                      2),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Fly()));
                },
              ),
            ),
            Center(
                child: Text(
              'Hello World',
              style: TextStyle(color: Colors.blue, fontSize: 28),
            ))
          ],
        ),
      ),
    );
  }
}
