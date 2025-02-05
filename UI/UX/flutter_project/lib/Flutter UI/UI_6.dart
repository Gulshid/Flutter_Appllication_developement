import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return FoodCard(menuItems[index]);
          },
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final FoodItem item;

  const FoodCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: item.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            item.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            item.priceRange,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem {
  final String name;
  final String priceRange;
  final IconData icon;
  final Color color;

  FoodItem(this.name, this.priceRange, this.icon, this.color);
}

final List<FoodItem> menuItems = [
  FoodItem('Burger', '\$1 - \$10', Icons.fastfood, Colors.purple),
  FoodItem('Soup', '\$1 - \$10', Icons.ramen_dining, Colors.teal),
  FoodItem('Soft Drink', '\$1 - \$10', Icons.local_drink, Colors.orange),
  FoodItem('Beer', '\$1 - \$10', Icons.sports_bar, Colors.red),
  FoodItem('Pizza', '\$1 - \$10', Icons.local_pizza, Colors.blue),
  FoodItem('Donut', '\$1 - \$10', Icons.donut_large, Colors.deepPurple),
];
