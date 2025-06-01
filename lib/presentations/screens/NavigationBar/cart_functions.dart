import 'package:flutter/material.dart';

class CartFunctions extends StatelessWidget {
  const CartFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Don't have products in your cart")],
        ),
      ),
    );
  }
}
