import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:voicerecorder_ui/secondScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
void initState(){
    super.initState();
    Timer(Duration(seconds: 10),
            ()=>Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=>SecondScreen()))
    );
}

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/audio2.png',
              height: 200.0,
            ),
            SizedBox(height: 30.0),
            SpinKitWave(color: Colors.red,),
            Text(
              'GROUP FIVE',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),
    );
  }
}

