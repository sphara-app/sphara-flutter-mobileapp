// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class CustomTimerSpinner extends StatefulWidget {
  const CustomTimerSpinner({Key? key, this.width, this.height})
      : super(key: key);

  final double? width;
  final double? height;
  // final Future<dynamic> Function()? action;

  @override
  _CustomTimerSpinnerState createState() => _CustomTimerSpinnerState();
}

class _CustomTimerSpinnerState extends State<CustomTimerSpinner> {
  DateTime _dateTime = DateTime.utc(0);
  // DateTime _dateTime = DateTime.now().subtract(Duration(
  //     hours: DateTime.now().hour,
  //     minutes: DateTime.now().minute,
  //     seconds: DateTime.now().second));

  int timeIntoMillisecond(DateTime date) {
    int time = 0;
    if (date.hour != 0) {
      time += date.hour * 3600000;

      print("hour " + time.toString());
    }
    if (date.minute != 0) {
      time += date.minute * 60000;

      print("minute " + time.toString());
    }
    if (date.second != 0) {
      time += date.second * 1000;
      print("second " + time.toString());
    }
    return time;
  }

  // late Timer _timer;
  // int _start = 1;
  // bool _timerActive = false;

  // void startTimer() {
  //   if (_timerActive) {
  //     _start = 1;
  //   } else {
  //     _timerActive = true;
  //   }
  //   const oneSec = Duration(seconds: 1);
  //   _timer = Timer.periodic(oneSec, (Timer timer) {
  //     if (_start == 0) {
  //       setState(() {
  //         timer.cancel();
  //         _timerActive = false;
  //       });
  //       // widget.action!();
  //     } else {
  //       setState(() {
  //         _start--;
  //       });
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   _dateTime.hour.toString().padLeft(2, '0') +
        //       ':' +
        //       _dateTime.minute.toString().padLeft(2, '0') +
        //       ':' +
        //       _dateTime.second.toString().padLeft(2, '0') +
        //       " " +
        //       timeIntoMillisecond(_dateTime).toString(),
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        Container(
          child: TimePickerSpinner(
            time: _dateTime,
            isShowSeconds: true,
            normalTextStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
            // normalTextStyle: TextStyle(fontSize: 24, color: Colors.deepOrange),
            highlightedTextStyle: TextStyle(fontSize: 30, color: Colors.white),
            // spacing: 50,
            // itemHeight: 80,
            alignment: Alignment.center,
            isForce2Digits: true,
            onTimeChange: (time) {
              FFAppState().update(() {
                FFAppState().timerValue = timeIntoMillisecond(time);
                FFAppState().finishTimer = DateTime.now()
                    .add(Duration(milliseconds: timeIntoMillisecond(time)));
              });
              setState(() {
                // _dateTime = time;
                // // startTimer();
              });
            },
          ),
        ),
      ],
    );
  }
}
