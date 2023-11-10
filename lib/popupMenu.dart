import 'package:flutter/material.dart';
import 'package:top70widgets/AnimatedIcon.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  String title = "First Time";
  String item1 = "First";
  String item2 = "Second";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopUpMenu'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(item1),
                  value: item1,
                ),
                PopupMenuItem(
                  child: Text(item2),
                  value: item2,
                ),
              ],
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 150,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              height: 200,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 200,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimatedIconWidget(),
                ),
              );
            },
            backgroundColor: Colors.amber,
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
