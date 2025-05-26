import 'package:flutter/material.dart';

class SearchFunction extends StatelessWidget {
  const SearchFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyTextForm(title: 'Search'));
  }
}

class MyTextForm extends StatefulWidget {
  const MyTextForm({super.key, required this.title});

  final String title;

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search for anything',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
