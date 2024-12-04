import 'package:flutter/material.dart';
import 'package:shop/screens/product_screen.dart';

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("По типу кожи"),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          ListTile(
            title: const Text(
              "Жирная",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ProductsPage(title: "Средства для жирной кожи"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Комбинированная",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsPage(
                      title: "Средства для комбинированной кожи"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Нормальная",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ProductsPage(title: "Средства для нормальной кожи"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Сухая",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ProductsPage(title: "Средства для сухой кожи"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Любой тип",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsPage(
                      title: "Средства для любого типа кожи"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
