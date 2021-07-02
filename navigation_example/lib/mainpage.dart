import 'package:flutter/material.dart';
import 'package:navigation_example/firstpage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to First Page"),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return FirstPage();
            }));
          },
        ),
      ),
    );
  }
}
