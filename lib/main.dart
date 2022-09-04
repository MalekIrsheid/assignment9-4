import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                  child: Text(
                    "First button",
                    style: TextStyle(fontSize: 20),
                  ),
                  colorBrightness: Brightness.light,
                  color: Colors.purple[100],
                  onPressed: () {
                    print("1st button");
                  }),
            ),
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                  onLongPress: () {
                    print("pressed too long");
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.purple,
                      onPrimary: Colors.green,
                      primary: Colors.brown,
                      elevation: 20),
                  child: Text(
                    "second button",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    print("normal click");
                  }),
            )
          ],
        )),
      ),
    );
  }
}
