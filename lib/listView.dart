import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  int currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Flutter Map'),
              tileColor: Colors.yellow,
              onTap: () {},
              leading: Icon(Icons.person),
              trailing: Icon(Icons.list),
            );
          },
          separatorBuilder: (context, index) => Divider(
                color: Colors.white,
              ),
          itemCount: 5),
    );
  }
}
