import 'package:flutter/material.dart';
import 'package:top70widgets/w2interactiveViewer.dart';

class W1MaterialBanner extends StatelessWidget {
  const W1MaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.redAccent, Colors.orangeAccent]),
            ),
            child: SafeArea(
              child: Center(
                child: ListTile(
                  title: Text("This is a ListTile in PrefferedSize"),
                  subtitle: Text("Top70 Widgets"),
                  dense: true,
                  leading: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  trailing: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(50)),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                      padding: EdgeInsets.all(20),
                      content: Text("Subscribe!"),
                      leading: Icon(Icons.notifications_active),
                      // elevation: 12,
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text("Dismiss"),
                        ),
                      ]),
                );
              },
              child: Text("Click Me"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: ElevatedButton(
              child: Text("Modal Bottom Sheet"),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('close'),
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InteractiveViewerWidget(),
                  ),
                );
              },
              child: Text('Click Me for InteractiveViewer'),
            ),
          ),
        ],
      ),
    );
  }
}
