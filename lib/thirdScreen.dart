import 'package:audio_wave/audio_wave.dart';
import'package:flutter/material.dart';
import 'package:voicerecorder_ui/secondScreen.dart';


//import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';




class ThirdScreen extends StatefulWidget{
  @override
  ThirdScreenState createState() => ThirdScreenState();
}

class ThirdScreenState extends State<ThirdScreen> {

  int _currentIndex = 0;

  //static List<Widget> _viewList = [
  //Record(),
  //Pause(),
  //];

  onTappedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
         child: Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
             title: Text('Feedback'),
           ),

             body:new Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               AudioWave(
               height: 140,
               width: 140,
               spacing: 2.5,
               bars: [
                 AudioWaveBar(height: 10, color: Colors.deepOrangeAccent),
                 AudioWaveBar(height: 30, color: Colors.redAccent),
                 AudioWaveBar(height: 70, color: Colors.red),
                 AudioWaveBar(height: 40),
                 AudioWaveBar(height: 20, color: Colors.orange),
                 AudioWaveBar(height: 10, color: Colors.deepOrangeAccent),
                 AudioWaveBar(height: 30, color: Colors.redAccent),
                 AudioWaveBar(height: 70, color: Colors.red),
                 AudioWaveBar(height: 40),
                 AudioWaveBar(height: 20, color: Colors.orange),
                 AudioWaveBar(height: 10, color: Colors.deepOrangeAccent),
                 AudioWaveBar(height: 30, color: Colors.redAccent),
                 AudioWaveBar(height: 70, color: Colors.red),
                 AudioWaveBar(height: 40),
                 AudioWaveBar(height: 20, color: Colors.orange),
                 AudioWaveBar(height: 10, color: Colors.deepOrangeAccent),
                 AudioWaveBar(height: 30, color: Colors.redAccent),
                 AudioWaveBar(height: 70, color: Colors.red),
                 AudioWaveBar(height: 40),
                 AudioWaveBar(height: 20, color: Colors.orange),
               ],
             ),
           ]
         ),
        ),

           bottomNavigationBar: BottomNavigationBar(
               currentIndex: _currentIndex,
               iconSize: 30,

               items:[
                 BottomNavigationBarItem(
                   icon: Icon(Icons.fiber_manual_record, color: Colors.red,),
                   label: 'Record',
                 ),

                 BottomNavigationBarItem(
                   icon: Icon(Icons.pause, color: Colors.red,),
                   label: 'Pause',
                 ),
               ],

               onTap:(index){
              setState(() {
                _currentIndex = index;
              });

            Navigator.pop(
            context, MaterialPageRoute(
              builder: (context)=>SecondScreen()));
               }

               ),
         ),
    );
  }
}