import 'package:flutter/material.dart';

class PopupMenuButtonPage extends StatefulWidget {
  const PopupMenuButtonPage({Key? key}) : super(key: key);

  @override
  _PopupMenuButtonPageState createState() => _PopupMenuButtonPageState();
}

class _PopupMenuButtonPageState extends State<PopupMenuButtonPage> {
  String title = "Popup Menu Button";
  String firstPage = "First Page";
  String secondPage = "Second Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), actions: [
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(child: Text(firstPage), value: firstPage),
            PopupMenuItem(child: Text(secondPage), value: secondPage)
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
          },
        )
      ]),
    );
  }
}
