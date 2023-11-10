import 'package:flutter/material.dart';
import 'package:top70widgets/TabBar.dart';
import 'package:top70widgets/expansionTile.dart';
import 'package:top70widgets/radiolistTile.dart';
import 'package:top70widgets/roatedBox.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentstep = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body: Column(
        children: [
          Center(
            child: Stepper(
              steps: [
                Step(
                  isActive: currentstep == 0,
                  title: Text(
                    'Step-1',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Text(
                    "Information for Step-1",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Step(
                  isActive: currentstep == 0,
                  title: Text(
                    'Step-2',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Text(
                    "Information for Step-2",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Step(
                  isActive: currentstep == 0,
                  title: Text(
                    'Step-3',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Text(
                    "Information for Step-3",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  currentstep = newIndex;
                });
              },
              currentStep: currentstep,
              onStepContinue: () {
                if (currentstep != 2) {
                  setState(() {
                    currentstep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (currentstep != 0) {
                  setState(() {
                    currentstep -= 1;
                  });
                }
              },
              // type: StepperType.horizontal,
            ),
          ),
          Container(
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('TabPageSelector'),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarWidget(),
                  ),
                );
              },
              child: Text('TabBar'),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RadioListTileWidget(),
                  ),
                );
              },
              child: Text('RadioListTile'),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoatedBoxWidget(),
                  ),
                );
              },
              child: Text('RoatedBoxWidget'),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpansionTileWidget(),
                  ),
                );
              },
              child: Text('expansionTile'),
            ),
          ),
        ],
      ),
    );
  }
}
