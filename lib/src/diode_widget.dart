import 'package:flutter/material.dart';

class Diode extends StatelessWidget {
  Diode(this.isOn);

  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: Theme.of(context).brightness == Brightness.light
          ? BoxDecoration(
              color: isOn ? Colors.white : Colors.black,
              borderRadius: BorderRadius.circular(32),
            )
          : BoxDecoration(
              color: isOn ? Colors.white : Colors.white10,
              borderRadius: BorderRadius.circular(32),
            ),
    );
  }
}

class HourDiodes extends StatefulWidget {
  HourDiodes(this.time);

  final int time;

  @override
  _HourDiodesState createState() => _HourDiodesState();
}

class _HourDiodesState extends State<HourDiodes> {
  bool _diode12 = false;
  bool _diode11 = false;
  bool _diode24 = false;
  bool _diode23 = false;
  bool _diode22 = false;
  bool _diode21 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Diode(_diode12),
            Diode(_diode11),
          ],
        ),
        Column(
          children: <Widget>[
            Diode(_diode24),
            Diode(_diode23),
            Diode(_diode22),
            Diode(_diode21),
          ],
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(HourDiodes oldWidget) {
    super.didUpdateWidget(oldWidget);
    switch (widget.time) {
      case 0:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 1:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 2:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 3:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 4:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 5:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 6:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 7:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 8:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 9:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 10:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 11:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 12:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 13:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 14:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 15:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 16:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 17:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 18:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 19:
        setState(() {
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 20:
        setState(() {
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 21:
        setState(() {
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 22:
        setState(() {
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 23:
        setState(() {
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      default:
        setState(() {
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
    }
  }
}

class MinuteSecondDiodes extends StatefulWidget {
  MinuteSecondDiodes(this.time);

  final int time;

  @override
  _MinuteSecondDiodesState createState() => _MinuteSecondDiodesState();
}

class _MinuteSecondDiodesState extends State<MinuteSecondDiodes> {
  bool _diode13 = false;
  bool _diode12 = false;
  bool _diode11 = false;
  bool _diode24 = false;
  bool _diode23 = false;
  bool _diode22 = false;
  bool _diode21 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Diode(_diode13),
            Diode(_diode12),
            Diode(_diode11),
          ],
        ),
        Column(
          children: <Widget>[
            Diode(_diode24),
            Diode(_diode23),
            Diode(_diode22),
            Diode(_diode21),
          ],
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(MinuteSecondDiodes oldWidget) {
    super.didUpdateWidget(oldWidget);
    switch (widget.time) {
      case 0:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 1:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 2:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 3:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 4:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 5:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 6:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 7:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 8:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 9:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 10:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 11:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 12:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 13:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 14:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 15:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 16:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 17:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 18:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 19:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 20:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 21:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 22:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 23:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 24:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 25:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 26:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 27:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 28:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 29:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 30:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 31:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 32:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 33:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 34:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 35:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 36:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 37:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 38:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 39:
        setState(() {
          _diode13 = false;
          _diode12 = true;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 40:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 41:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 42:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 43:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 44:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 45:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 46:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 47:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 48:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 49:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = false;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 50:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 51:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 52:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 53:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = false;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 54:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 55:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      case 56:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = false;
        });
        break;
      case 57:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = false;
          _diode23 = true;
          _diode22 = true;
          _diode21 = true;
        });
        break;
      case 58:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
      case 59:
        setState(() {
          _diode13 = true;
          _diode12 = false;
          _diode11 = true;
          _diode24 = true;
          _diode23 = false;
          _diode22 = false;
          _diode21 = true;
        });
        break;
      default:
        setState(() {
          _diode13 = false;
          _diode12 = false;
          _diode11 = false;
          _diode24 = false;
          _diode23 = false;
          _diode22 = false;
          _diode21 = false;
        });
        break;
    }
  }
}
