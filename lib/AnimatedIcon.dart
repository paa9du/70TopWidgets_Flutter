import 'package:flutter/material.dart';
import 'package:top70widgets/Grid.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;
  int counter = 0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              if (_isPlay == false) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              color: Colors.white,
              progress: _controller,
              size: 100,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              counter += 1;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(counter.toString()),
            ),
          ),
        ),
        // FadeInImage.assetNetwork(
        //     placeholder: 'assests/ocean.jpg', image: 'assests/youtube.png'),
        // FractionallySizedBox(
        //   widthFactor: 0.5,
        //   heightFactor: 0.5,
        // )
        // ChoiceChip(
        //   label: Text('Choice chip'),
        //   selected: _isPlay,
        //   selectedColor: Colors.orangeAccent,
        //   onSelected: (newState) => {
        //     setState(() {
        //       _isPlay = newState;
        //     })
        //   },
        // )
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewWidget()),
                );
              },
              child: Text('Grid View')),
        ),
      ],
    );
  }
}
