import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top70widgets/listView.dart';
import 'package:top70widgets/popupMenu.dart';
import 'package:top70widgets/stepper.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer & animatedCrossFade'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: Text(
              'switch',
              style: TextStyle(color: Colors.black),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assests/ocean.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assests/stars.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopUpMenu(),
                    ),
                  );
                },
                child: const Text("PopUp Menu Button")),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewWidget(),
                    ),
                  );
                },
                child: Text('ListView')),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StepperWidget(),
                    ),
                  );
                },
                child: Text('stepper')),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
