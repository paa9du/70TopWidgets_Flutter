import 'package:flutter/material.dart';

class DraggableScrollableWidget extends StatelessWidget {
  const DraggableScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return Container(
          color: Colors.orange,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 25,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Items $index'),
              );
            },
          ),
        );
      },
    );
  }
}
