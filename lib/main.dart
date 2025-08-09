import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Column and Row Layout",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildNumberContainer(
                  "1",
                  const Color.fromARGB(255, 5, 17, 178),
                ),
                SizedBox(width: 20),
                buildNumberContainer(
                  "2",
                  const Color.fromARGB(255, 10, 93, 49),
                ),
                SizedBox(width: 20),
                buildNumberContainer(
                  "3",
                  const Color.fromARGB(255, 172, 102, 4),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey,
              child: Text(
                "Large Container",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextContainer(
                  "Left",
                  const Color.fromARGB(255, 42, 124, 165),
                ),
                SizedBox(width: 20),
                buildTextContainer(
                  "Right",
                  const Color.fromARGB(255, 103, 15, 137),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumberContainer(String text, Color color) {
    return Container(
      height: 50,
      width: 50,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildTextContainer(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: color,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
