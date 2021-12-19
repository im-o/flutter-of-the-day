import 'package:flutter/material.dart';
import 'package:flutter_of_the_day/data/model/widget_model.dart';
import 'package:flutter_of_the_day/widgets/bottom_nav_bar.dart';
import 'package:flutter_of_the_day/widgets/future_builder.dart';
import 'package:flutter_of_the_day/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter of the day")),
      body: _widgetList(),
    );
  }

  Widget _widgetList() {
    List<WidgetModel> widgetItems = [
      WidgetModel(id: 0, name: "Search Bar"),
      WidgetModel(id: 1, name: "Bottom Bar"),
      WidgetModel(id: 2, name: "FutureBuilder"),
    ];
    return ListView.builder(
      itemCount: widgetItems.length,
      itemBuilder: (context, index) {
        var name = widgetItems[index].name;
        var id = widgetItems[index].id;
        return InkWell(
          child: ListTile(
            title: Text(name),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              var widget;
              switch (id) {
                case 0:
                  widget = SearchBarPage();
                  break;
                case 1:
                  widget = BottomNavBarPage();
                  break;
                case 2:
                  widget = FutureBuilderPage();
                  break;
                default:
                  widget = SearchBarPage();
              }
              return widget;
            }));
          },
        );
      },
    );
  }
}
