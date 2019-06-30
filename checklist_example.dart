import 'package:flutter/material.dart';

class ChecklistExamplePage extends StatefulWidget {
  @override
  _ChecklistExamplePageState createState() => _ChecklistExamplePageState();
}

class _ChecklistExamplePageState extends State<ChecklistExamplePage> {
  var items = [
    {
      "id": 101,
      "name": "DS",
      "active": false,
    },
    {
      "id": 102,
      "name": "DF",
      "active": false,
    },
    {
      "id": 103,
      "name": "ETC",
      "active": false,
    },
    {
      "id": 104,
      "name": "PS",
      "active": false,
    },
    {
      "id": 105,
      "name": "DBS[A]²",
      "active": false,
    },
    {
      "id": 106,
      "name": "DF[B]",
      "active": false,
    }
  ];

  getListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];

        return Card(
          child: ListTile(
            title: Row(
              children: <Widget>[
                Text(item["name"]),
                Spacer(),
                Switch(
                  value: item["active"],
                  onChanged: (value) {
                    setState(() {
                      item["active"] = item["active"] == true ? false : true;
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Checklist"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: getListView(),
      ),
    );
  }
}
