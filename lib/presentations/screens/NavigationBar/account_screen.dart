import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final List<String> entries = <String>[
    '❤️ Watchlist',
    '❤️ Saved',
    '🛍️ Buy again',
    '🛍️ Purchases',
    '🙋🏻‍♂️ Bids & offers',
    '👀 Recently viewed',
    '📏 Sizes',
  ];
  final List<int> colorCodes = <int>[600, 500, 100];
  AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 50,
          child: Center(
            child: Text(
              ' ${entries[index]}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
