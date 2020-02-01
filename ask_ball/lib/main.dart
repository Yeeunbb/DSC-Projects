import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(
            child: Text('마법의 소라고동'),
          ),
          backgroundColor: Colors.blue.shade800,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var sentences = ['그만둬', '사랑이군', '배가 고프군', '당연하지', 
  '가끔은 쉬어도 좋아', '사람이 맞나?', '우리 그만하자', '힘내'];
  int senNum = 1;
  var godongsay = '난 고동이다';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: (){
              setState(() {
                senNum = Random().nextInt(7);
                godongsay = sentences[senNum];
              });
            },
            child: Center(child: Image.asset('images/maagic.png'),),
          ),
          Text(
            godongsay,
            style: TextStyle(
              fontFamily: 'NanumMyeonjo',
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
