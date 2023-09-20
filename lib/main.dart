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
      home: DialogWiget(),
    );
  }
}

class DialogWiget extends StatefulWidget {
  const DialogWiget({Key? key}) : super(key: key);

  @override
  State<DialogWiget> createState() => _DialogWigetState();
}

class _DialogWigetState extends State<DialogWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Info'),
                      content: const Text('Your order  was placed!'),
                      actions: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Ok"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Open Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
