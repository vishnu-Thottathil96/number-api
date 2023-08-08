import 'package:flutter/material.dart';

import 'apis.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _numberController = TextEditingController();

  String resultText = 'Type Number and press to get the result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Number', border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final result =
                      await getNumberData(number: _numberController.text);
                  setState(() {
                    resultText = result.text ?? 'Error 404';
                  });
                },
                child: const Text(
                  'Result',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                resultText,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            )
          ],
        ),
      )),
    );
  }
}
