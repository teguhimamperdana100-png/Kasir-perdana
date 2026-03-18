import 'package:flutter/material.dart';

void main() {
  runApp(KasirPerdanaApp());
}

class KasirPerdanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kasir Perdana',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Parfum 10ml", "price": 15000},
    {"name": "Parfum 20ml", "price": 30000},
    {"name": "Parfum 30ml", "price": 45000},
    {"name": "Casing HP", "price": 25000},
    {"name": "Charger", "price": 50000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kasir Perdana"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return ListTile(
            title: Text(item['name']),
            subtitle: Text("Rp ${item['price']}"),
            trailing: Icon(Icons.add_shopping_cart),
          );
        },
      ),
    );
  }
} 
