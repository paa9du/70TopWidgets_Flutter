import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => GridTile(
            child: Image.asset('assests/ocean.jpg'),
            header: GridTileBar(
              backgroundColor: Colors.black54,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
