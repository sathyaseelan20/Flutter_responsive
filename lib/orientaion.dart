import 'package:flutter/material.dart';

class Orient extends StatefulWidget {
  const Orient({super.key});

  @override
  State<Orient> createState() => _OrientState();
}

class _OrientState extends State<Orient> {
  @override
  Widget build(BuildContext context) {
     final screenOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: screenOrientation == Orientation.portrait ? mobileScreen() : tabScreen()
    );
  }
}

Widget mobileScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(height: 200, width: 400, color: Colors.blue[100]),
        Container(height: 200, width: 400, color: Colors.blue[200]),
        Container(height: 200, width: 400, color: Colors.blue[300]),
        Container(height: 200, width: 400, color: Colors.blue[400]),
      ],
    ),
  );
}

Widget tabScreen() {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 800, 
            width: 300, 
            color: Colors.blue[200]
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Expanded(    
                child: Container(
                          height: 300,  
                          color: Colors.blue[300]
                        ),
              ),
              Expanded(
                child: Container(
                  height: 350, 
                  color: Colors.blue[400]
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
  
  