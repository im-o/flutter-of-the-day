import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Cell 1"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Cell 2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Cell 3"),
      ),
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: const FixedColumnWidth(120.0),
            children: <TableRow>[
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
            ],
          ),
        ),
      ),
    );
  }
}
