import 'package:ecommerce/presentations/screens/NavigationBar/account_screen.dart';
import 'package:ecommerce/presentations/screens/NavigationBar/cart_functions.dart';
import 'package:ecommerce/presentations/screens/NavigationBar/home_screen.dart';
import 'package:ecommerce/presentations/screens/NavigationBar/search_function.dart';
import 'package:ecommerce/presentations/screens/NavigationBar/selling_functions.dart';
import 'package:ecommerce/presentations/screens/home_screen/add_product.dart';
import 'package:ecommerce/presentations/screens/home_screen/topMenu/message_functions.dart';
import 'package:ecommerce/presentations/screens/home_screen/topMenu/notifications_settings.dart';
import 'package:flutter/material.dart';

class HomeFunctionsScreen extends StatefulWidget {
  const HomeFunctionsScreen({super.key});

  @override
  State<HomeFunctionsScreen> createState() => _HomeFunctionsScreenState();
}

class _HomeFunctionsScreenState extends State<HomeFunctionsScreen> {
  List<Widget> pages = [
    HomeScreen(),
    AccountScreen(),
    SearchFunction(),
    CartFunctions(),
    SellingFunctions(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("My Ecommerce"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsSettings(),
                ),
              );
            },
            icon: Icon(Icons.notifications_on),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageFunctions()),
              );
            },
            icon: Icon(Icons.message),
          ),
        ],
      ),

      floatingActionButton: floatingActionButton(
        icon: Icons.add,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProduct()),
          );
        },
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        indicatorColor: Theme.of(context).colorScheme.inversePrimary,
        selectedIndex: currentPage,
        //selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.account_balance)),
            label: 'Account',
          ),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.shopping_cart)),
            label: 'Cart',
          ),
          NavigationDestination(icon: Icon(Icons.sell), label: 'Selling'),
        ],
      ),
      body:
          <Widget>[
            HomeScreen(),
            AccountScreen(),
            SearchFunction(),
            CartFunctions(),
            SellingFunctions(),
          ][currentPage],
    );
  }
}

class floatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const floatingActionButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}
