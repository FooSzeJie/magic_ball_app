import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ball()
  ));
}



class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget> [
          SizedBox(
            height: 100.0,
          ),

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

  int ballNumber = 0;

  void RandomBallNum(){
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              RandomBallNum();
            });
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

