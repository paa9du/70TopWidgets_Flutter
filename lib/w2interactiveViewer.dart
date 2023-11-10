import 'package:flutter/material.dart';
import 'package:top70widgets/w3checkBoxListTile.dart';

class InteractiveViewerWidget extends StatefulWidget {
  const InteractiveViewerWidget({super.key});

  @override
  State<InteractiveViewerWidget> createState() =>
      _InteractiveViewerWidgetState();
}

class _InteractiveViewerWidgetState extends State<InteractiveViewerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('InterActiveBanner'),
      ),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to new screen'),
          ),
          body: Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckBoxListTileWidget(),
                  ),
                );
              },
              child: Text('Click Me for InteractiveViewer'),
            ),
          ),
        ),
      ),
    );
  }
}
