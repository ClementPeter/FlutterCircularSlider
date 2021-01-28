import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(FlutterChallenge());
}

class FlutterChallenge extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        //backgroundColor: Colors.blue
        backgroundColor: Color(0XFF211d2d),
        body: SafeArea(child: FlutterLagos()),
      ),
    );
  }
}

class FlutterLagos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
              alignment: Alignment.topRight,
            ),
          ),
          Center(
            child: Text(
              'BarBell',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Bench Press',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '10:01:21',
            style: TextStyle(
              //fontWeight: FontWeight.normal,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: SleekCircularSlider(
              min: 0,
              max: 30,
              initialValue: 1,
              onChange: (double value) {
                // callback providing a value while its being changed (with a pan gesture)
                value++;
              },
              innerWidget: (double value) {
                // use your custom widget inside the slider (gets a slider value from the callback)
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        value.toStringAsFixed(1),
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('from 30')
                  ],
                );
              },
              appearance: CircularSliderAppearance(
                size: 300.0,
                startAngle: -100.0,
                angleRange: 360.0,
                customColors: CustomSliderColors(
                  trackColor: Color(0XFF777575),
                  progressBarColors: [
                    Colors.orange,
                    Colors.pinkAccent,
                    Colors.pink
                  ],
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 30.0,
                  progressBarWidth: 30,
                  handlerSize: 12.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding:
                      EdgeInsets.only(top: 12, left: 40, right: 40, bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      colors: [Colors.pinkAccent, Colors.orangeAccent],
                      begin: Alignment.center,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.pause),
                      SizedBox(width: 10),
                      Text(
                        "Pause",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  )),
              SizedBox(width: 40),
              Container(
                padding:
                    EdgeInsets.only(top: 15, left: 40, right: 40, bottom: 15),
                child: Text(
                  'Skip This',
                  style: TextStyle(color: Colors.white54, fontSize: 18.0),
                ),
                decoration: BoxDecoration(
                    color: Color(0XFF777575),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                    //gradient:
                    ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              'Next: Arm Circles',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '40 Seconds Active, 2 sets',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
