import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top70widgets/DraggableScrollable.dart';
import 'package:top70widgets/animatedcrossFade.dart';
import 'package:top70widgets/dismissible.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool? _ischecked = false;
  bool selected = false;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTimeRange selectedDates =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxListTitle'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CheckboxListTile(
                title: Text('check box list title'),
                value: _ischecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _ischecked = newValue;
                  });
                },
                activeColor: Color.fromARGB(255, 78, 43, 184),
                checkColor: Colors.white,
                tileColor: Colors.red,
                subtitle: Text('This is a subtitle'),
                // tristate: true,
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 35,
                    backgroundImage: AssetImage("assests/youtube.png"),
                    child: Text('hai'),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimatedCrossFadeWidget(),
                        ),
                      );
                    },
                    child: Text('Click Me for AnimatedCrossFade'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CupertinoContextMenu(
                  child: Image.asset("assests/youtube.png"),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: Text("one"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckBoxListTileWidget(),
                          ),
                        );
                      },
                    ),
                    CupertinoContextMenuAction(
                      child: Text("two"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckBoxListTileWidget(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text('Show Alert Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                      title: Text('Flutter Alert'),
                      contentPadding: EdgeInsets.all(8),
                      content: Text('This is an Alert'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Center(
                  child: AnimatedContainer(
                    width: selected ? 200 : 100,
                    height: selected ? 100 : 200,
                    color: selected ? Colors.blueGrey : Colors.white,
                    alignment: selected
                        ? Alignment.center
                        : AlignmentDirectional.topCenter,
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceInOut,
                    child: FlutterLogo(
                      size: 75,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Card(
                elevation: 20,
                color: Colors.amberAccent,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text('This is a flutter card'),
                      TextButton(
                        onPressed: () {},
                        child: Text('Press'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}',
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );
                      if (dateTime != null) {
                        setState(() {
                          selectedDate = dateTime;
                        });
                      }
                    },
                    child: Text('Choose One'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${selectedTime.hour} - ${selectedTime.minute}"),
                  ElevatedButton(
                      onPressed: () async {
                        final TimeOfDay? timeOfDay = await showTimePicker(
                          context: context,
                          initialTime: selectedTime,
                          initialEntryMode: TimePickerEntryMode.dial,
                        );
                        if (timeOfDay != null) {
                          setState(() {
                            selectedTime = timeOfDay;
                          });
                        }
                      },
                      child: Text("choose Time"))
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${selectedDates.duration.inDays}",
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final DateTimeRange? dateTimeRange =
                          await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );
                      if (dateTimeRange != null) {
                        setState(() {
                          selectedDates = dateTimeRange;
                        });
                      }
                    },
                    child: Text('Choose Dates'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
