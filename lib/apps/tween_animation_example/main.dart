import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({Key? key}) : super(key: key);

  @override
  _TweenAnimationPageState createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> {
  int count = 0;
  int? oldCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 700),
          tween: Tween(end: 0.0, begin: 1.0),
          key: Key(count.toString()),
          builder: (context, value, _) {
            return Stack(
              children: [
                if (oldCount != null)
                  Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset((1 - value) * 80, 0),
                      child: Text(
                        oldCount.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                Opacity(
                  opacity: 1 - value,
                  child: Transform.rotate(
                    angle: -value * pi,
                    child: Transform.translate(
                      offset: Offset(0, value * -100),
                      child: Text(
                        count.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              oldCount = count;
              count++;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
