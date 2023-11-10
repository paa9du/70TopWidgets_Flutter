import 'package:flutter/material.dart';
import 'package:top70widgets/pageview.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
          title: Text("Flutter Map"),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.orange,
            child: Icon(Icons.home),
          ),
          Container(
            color: Colors.orange,
            child: Icon(Icons.settings),
          ),
          Container(
            color: Colors.orange,
            child: Icon(Icons.person),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageViewWidget(),
                    ),
                  );
                },
                child: Text('pageview')),
          )
        ]),
      ),
    );
  }
}
