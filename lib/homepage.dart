import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    // final screenOrientation = MediaQuery.of(context).orientation;

    return Scaffold(body: screenWidth < 600 ? mobileScreen() : tabScreen());
  }
}

Widget mobileScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(height: 150, width: 400, color: Colors.blue[100]),
        Container(height: 150, width: 400, color: Colors.blue[200]),
        Container(height: 150, width: 400, color: Colors.blue[300]),
        Container(height: 150, width: 400, color: Colors.blue[400]),
      ],
    ),
  );
}

Widget tabScreen() {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 800, 
          width: 300, 
          color: Colors.blue[200]
        ),
        Column(
          children: [
            Container(
          height: 300, 
          width: 500, 
          color: Colors.blue[300]
        ),
        Container(
          height: 350, 
          width: 500, 
          color: Colors.blue[400]
        ),
          ],
        )
      ],
    ),
  );
}
