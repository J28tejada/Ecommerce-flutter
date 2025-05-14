import 'package:flutter/material.dart';

class HomeFunctionsScreen extends StatefulWidget {
  const HomeFunctionsScreen({super.key});

  @override
  State<HomeFunctionsScreen> createState() => _HomeFunctionsScreenState();
}

class _HomeFunctionsScreenState extends State<HomeFunctionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ecommerce"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        padding: EdgeInsets.all(2),
        children: List.generate(
          8,
          (index) =>
              const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
        ),
      ),

      floatingActionButton: customButton(icon: Icons.add),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            //indicar accion
          });
        },
        indicatorColor: Theme.of(context).colorScheme.inversePrimary,
        //selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          navigation_destination_select(
            icon: Icons.home,
            selectedIcon: Icons.home,
          ),
          navigation_distination(icon: Icons.account_box, text: 'Account'),
          navigation_distination(
            icon: Icons.notifications_active,
            text: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  final IconData icon;

  const customButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        null;
      },
      tooltip: 'Increment',
      child: Icon(icon),
    );
  }
}

class navigation_destination_select extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;

  const navigation_destination_select({
    super.key,
    required this.icon,
    required this.selectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: Icon(selectedIcon),
      icon: Icon(icon),
      label: 'Home',
    );
  }
}

class navigation_distination extends StatelessWidget {
  final IconData icon;
  final String text;

  const navigation_distination({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: Icon(icon), label: (text));
  }
}

void setState(Null Function() param0) {}
