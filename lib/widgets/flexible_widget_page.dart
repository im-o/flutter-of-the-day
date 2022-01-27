import 'package:flutter/material.dart';

class FlexibleWidgetPage extends StatefulWidget {
  const FlexibleWidgetPage({Key? key}) : super(key: key);

  @override
  _FlexibleWidgetPageState createState() => _FlexibleWidgetPageState();
}

class _FlexibleWidgetPageState extends State<FlexibleWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible Widget")),
      body: _showFlexibleWidget(),
    );
  }

  Widget _showFlexibleWidget() {
    return Center(
      child: Column(
        children: [
          _horizontalWidget(),
          _verticalWidget(Colors.red),
          _verticalWidget(Colors.yellow),
          _verticalWidget(Colors.green),
          _verticalWidget(Colors.blue),
        ],
      ),
    );
  }

  Widget _horizontalWidget() {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: 150.0,
            color: Colors.yellow,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: 150.0,
            color: Colors.green,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: 150.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _verticalWidget(Color customColor) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Container(
        height: 150.0,
        color: customColor,
      ),
    );
  }
}
