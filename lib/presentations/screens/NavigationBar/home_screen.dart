import 'package:ecommerce/presentations/providers/products/products_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isGridMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          if (_isGridMode)
            IconButton(
              icon: const Icon(Icons.grid_on),
              onPressed: () {
                setState(() {
                  _isGridMode = false;
                });
              },
            )
          else
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                setState(() {
                  _isGridMode = true;
                });
              },
            ),
        ],
      ),

      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  bool _isGridMode = true;
  @override
  void initState() {
    super.initState();

    ref.read(availableProductsProvider.notifier).loadProducts();
  }

  Widget build(BuildContext context) {
    final products = ref.watch(availableProductsProvider);

    return _isGridMode
        ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          padding: const EdgeInsets.all(2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final productList = products[index];
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: Colors.blue,
                elevation: 7,
                child: Center(
                  child: Text(
                    productList.title,
                    style: const TextStyle(
                      fontFamily: 'Arial rounded MT Bold',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        )
        : ListView.builder(
          padding: const EdgeInsets.all(2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final productList = products[index];
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: Colors.blue,
                elevation: 7,
                child: Center(
                  child: Text(
                    productList.title,
                    style: const TextStyle(
                      fontFamily: 'Arial rounded MT Bold',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        );
  }

  /*
  // If you want to use ListView instead of GridView  
    ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final productList = products[index];
        return ListTile(title: Text(productList.title));
      },
    );
  }

body:
          _isGridMode
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
              )
              : GridView(
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
                            */
}
