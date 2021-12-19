import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 1));
  // throw "An error occurred";
  return "It Works";
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Builder")),
      body: Center(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              }
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(snapshot.data.toString()),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text("Refresh"))
                  ],
                );
              }
            }),
      ),
    );
  }
}
