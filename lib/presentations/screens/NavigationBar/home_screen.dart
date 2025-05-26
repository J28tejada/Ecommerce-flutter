import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: EdgeInsets.all(2),
        children: List.generate(
          16,
          (index) => const Padding(
            padding: EdgeInsets.all(15),
            child: Card(
              color: Colors.blue,
              elevation: 7,
              child: Center(
                child: Text(
                  'Product images',
                  style: TextStyle(
                    fontFamily: 'Arial rounded MT Bold',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
