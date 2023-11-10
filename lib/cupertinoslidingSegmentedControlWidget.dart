import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertinoWidget extends StatefulWidget {
  const cupertinoWidget({super.key});

  @override
  State<cupertinoWidget> createState() => _cupertinoWidgetState();
}

class _cupertinoWidgetState extends State<cupertinoWidget> {
  int sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CupertinoSlidingSegmentedControl(
            children: {
              0: Text('Data 1'),
              1: Text('Data 1'),
              2: Text('Data 1'),
            },
            groupValue: sliding,
            onValueChanged: (int? newValue) {
              setState(() {
                newValue;
              });
            }),
      ),
    );
  }
}
