import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  // Run MaterialApp
  runApp(MaterialApp(
    home: Ball()
  ));
}



class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Set the Background Color to blue
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,

        // Text in the appBar
        title: Text('Ask Me Anything'),

        // Center the text
        centerTitle: true,
      ),

      // Use Column Widget to show the UI
      body: Column(
        children: <Widget> [

          // Make a space between the appbar with image
          SizedBox(
            height: 100.0,
          ),

          // Center the Image in the Column
          Center(
            child: BallPage(),
          ),

        ],
      ),
    );
  }
}


class BallPage extends StatefulWidget {

  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  // Define the ball Number
  int ballNumber = 0;

  // use void to make random function
  void RandomBallNum(){
    // Random the number between 1 - 6
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {

    // Use Container to show the image
    return Container(
      // Center the textbutton in container
      child: Center(
        child: TextButton(
          // when click will load the function
          onPressed: () {
            // When clicking button, the image will change
            setState(() {
              // Random function
              RandomBallNum();
            });

            // Show the text in console
            print('Ball Number is $ballNumber');
          },
          child: Image.asset(
            // Ternary Operator
            ballNumber == 0 ? 'assets/ball1.png' : 'assets/ball$ballNumber.png',
            width: 375.0, height: 350.0,
          ),
        ),
      ),
    );
  }
}

