import 'dart:async';

import 'package:flutter_clock_helper/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'diode_widget.dart';

/*
Diodes represent binary clock. You can read time solely from looking at the 
diodes, digital is a helper. For a quick tutorial on how to decode it, visit:
https://en.wikipedia.org/wiki/Binary_clock
*/

class Clock extends StatefulWidget {
  const Clock(this.model);

  final ClockModel model;

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _now = DateTime.now();
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    setState(() {
      _now = DateTime.now();
      _timer = Timer(
        Duration(seconds: 1) -
            Duration(milliseconds: _now.millisecond) -
            Duration(microseconds: _now.microsecond),
        _updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final hour =
        DateFormat(widget.model.is24HourFormat ? 'HH' : 'hh').format(_now);
    final minute = DateFormat('mm').format(_now);
    final second = DateFormat('ss').format(_now);
    final date = '${_now.day} / ${_now.month} / ${_now.year}';
    final location = widget.model.location;
    final temperature = widget.model.temperatureString;
    return Container(
      decoration: Theme.of(context).brightness == Brightness.light
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/jeremy-thomas-unsplash.jpg'),
              ),
            )
          : BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              HourDiodes(int.parse(hour)),
              MinuteSecondDiodes(_now.minute),
              MinuteSecondDiodes(_now.second),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$location, $temperature',
                    style: GoogleFonts.audiowide(
                      fontSize: MediaQuery.of(context).size.width / 48,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$hour : $minute : $second',
                    style: GoogleFonts.audiowide(
                      fontSize: MediaQuery.of(context).size.width / 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$date',
                    style: GoogleFonts.audiowide(
                      fontSize: MediaQuery.of(context).size.width / 32,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
