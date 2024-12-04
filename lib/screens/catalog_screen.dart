import 'package:flutter/material.dart';
import 'package:shop/screens/skin_type_screen.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  String requestText = '';

  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 63,
          ),
          searchPanel(),
          const SizedBox(
            height: 39,
          ),
          titlePanel(),
        ],
      ),
    );
  }

  Widget searchPanel() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: 48,
      width: double.maxFinite,
      child: Expanded(
        child: TextField(
          controller: textFieldController,
          decoration: const InputDecoration(
            icon: Icon(Icons.search_outlined),
            hintText: "Поиск",
            hintStyle: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 18,
              letterSpacing: 0.015,
            ),
          ),
          onChanged: (value) => requestText = value,
        ),
      ),
    );
  }

  Widget titlePanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: const Text(
            "Назначение",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Тип средства",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Тип кожи",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Линия косметики",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Наборы",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Акции",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
        ListTile(
          title: const Text(
            "Консультация \nс косметологом ",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkinTypePage()),
            );
          },
        ),
      ],
    );
  }
}
