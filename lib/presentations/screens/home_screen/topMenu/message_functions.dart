import 'package:flutter/material.dart';

class MessageFunctions extends StatelessWidget {
  const MessageFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your messages'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Messages')],
        ),
      ),
    );
  }
}
