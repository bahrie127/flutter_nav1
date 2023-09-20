import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final dropdownList = <String>['Flutter', 'Dart', 'Java', 'Scala', 'Python'];
  String selected = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Your Favorite Language:'),
            const SizedBox(
              width: 8,
            ),
            DropdownButton(
              value: selected,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 20,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                ),
              ),
              items: dropdownList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  if (val != null) selected = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}