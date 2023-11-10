import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

List<String> options = ['Option 1', 'option 2'];

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  String currentoption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text('option 1'),
          value: options[0],
          groupValue: currentoption,
          onChanged: (value) {
            setState(() {
              currentoption = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('option 2'),
          value: options[1],
          groupValue: currentoption,
          onChanged: (value) {
            setState(() {
              currentoption = value.toString();
            });
          },
        ),
      ],
    );
  }
}
