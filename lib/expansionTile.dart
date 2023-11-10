import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _customIcon = false;
  int sliding = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Container(
            child: Column(
              children: <Widget>[
                ExpansionTile(
                  title: Text('Expansion Tile'),
                  trailing: Icon(_customIcon
                      ? Icons.arrow_back
                      : Icons.arrow_drop_down_circle),
                  children: <Widget>[
                    ListTile(
                      title: Text('This is Tile Number 2'),
                    ),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customIcon = expanded);
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
