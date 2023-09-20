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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            debugPrint("pickedDate: $pickedDate");
          },
          child: TextFormField(
            initialValue: '2022-08-01',
            maxLength: 20,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Birth date',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              suffixIcon: Icon(Icons.date_range),
              helperText: "What's your birth date?",
            ),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}