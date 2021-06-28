import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  var counter = 1;

  // constructor
  // _MyAppState() {
  //   for (var i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       "Data ke" + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        // provide scrolling using ListView. Not provide it using Column
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(
                        Text(
                          "Data ke" + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ),
                      );
                      counter++;
                    });
                  },
                  child: Text("Tambah Data"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text("Hapus Data"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
