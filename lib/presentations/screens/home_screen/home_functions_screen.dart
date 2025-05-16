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
        title: Text("My Ecommerce"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_on)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
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
          navigationHome(
            icon: Icons.home,
            selectedIcon: Icons.home,
            text: 'Home',
          ),
          navigation_distination(icon: Icons.account_box, text: 'Account'),
          navigation_distination(icon: Icons.search, text: 'Search'),
          navigation_distination(icon: Icons.shopping_cart, text: 'Cart'),
          navigation_distination(icon: Icons.sell_sharp, text: 'Selling'),
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

class navigationHome extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String text;

  const navigationHome({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: Icon(selectedIcon),
      icon: Icon(icon),
      label: text,
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
//messenger_sharp

void setState(Null Function() param0) {}
