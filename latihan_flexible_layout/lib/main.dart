import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.purple,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(5),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
