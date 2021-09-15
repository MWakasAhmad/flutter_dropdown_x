import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String _selected = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Field"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropDownField(
              hintText: 'Please choose one',
              value: _selected,
              onChanged: (v) {
                setState(() {
                  _selected = v;
                });
              },
              dataSource: const [
                {
                  "display": "value 1",
                  "value": "1",
                },
                {
                  "display": "value 2",
                  "value": "2",
                },
                {
                  "display": "value 3",
                  "value": "3",
                },
                {
                  "display": "value 4",
                  "value": "4",
                },
                {
                  "display": "value 5",
                  "value": "5",
                },
                {
                  "display": "value 6",
                  "value": "6",
                },
                {
                  "display": "value 7",
                  "value": "7",
                },
              ],
              textField: 'display',
              valueField: 'value',

            ),

            const SizedBox(height: 20,),

            Text("Selected value is $_selected"),
          ],
        ),
      ),
    );
  }
}
