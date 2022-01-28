import 'package:flutter/material.dart';

class AnimatedCrossFadedPage extends StatefulWidget {
  const AnimatedCrossFadedPage({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadedPageState createState() => _AnimatedCrossFadedPageState();
}

class _AnimatedCrossFadedPageState extends State<AnimatedCrossFadedPage> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Cross Faded"), actions: [
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: Text("Switch", style: TextStyle(color: Colors.white)),
        )
      ]),
      body: _showAnimated(),
    );
  }

  Widget _showAnimated() {
    return Center(
      child: AnimatedCrossFade(
        duration: Duration(seconds: 2),
        firstChild: Image.asset(
          "assets/icons/web-browser.png",
          width: 350,
        ),
        secondChild: Image.asset(
          "assets/icons/wifi.png",
          width: 350,
        ),
        crossFadeState:
            _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
