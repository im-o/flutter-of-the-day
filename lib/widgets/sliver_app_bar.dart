import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            title: Text("Sliver"),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Expand"),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Text(
              "SLIVER",
              style: TextStyle(fontSize: 600),
            ),
          ]))
        ],
      ),
    );
  }
}
