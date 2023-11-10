import 'package:flutter/material.dart';

class RoatedBoxWidget extends StatefulWidget {
  const RoatedBoxWidget({super.key});

  @override
  State<RoatedBoxWidget> createState() => _RoatedBoxWidgetState();
}

class _RoatedBoxWidgetState extends State<RoatedBoxWidget> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: FlutterLogo(
                  size: 200,
                ),
              ),
            ),
          ),
          Container(
            child: SelectableText(
              "This is selectableText",
              style: TextStyle(fontSize: 30),
              onSelectionChanged: (selection, cause) {},
            ),
          ),
          Container(
            child: Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Fluter Map'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    ),
                  );
                },
                child: Text('snakBar')),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Wrap(
                spacing: 10.0,
                runSpacing: 50.0,
                children: List.generate(
                  10,
                  (index) => Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    label: Text('data'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: OverflowBar(
              spacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Flutter Map'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Flutter Map'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Flutter Map'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Flutter Map'),
                ),
              ],
            ),
          ),
          Container(
            // width: double.infinity,
            width: 100,
            color: Colors.yellow,
            child: FittedBox(child: Text('asdfgh ytreds dfghj ytr')),
          ),
        ],
      ),
    );
  }
}
