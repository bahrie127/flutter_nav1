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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.blue,
              onChanged: (val) {
                setState(() {
                  if (val != null) {
                    isChecked = val;
                  }
                });
              },
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Agree Term & Conditions',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}