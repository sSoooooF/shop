import 'package:flutter/material.dart';

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
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 63,),
        searchPanel(),
        const Spacer(),
      ],
    ),
    );
  }

  Widget searchPanel(){
    return SizedBox(
      height: 48,
      width: double.maxFinite,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.search_outlined,),
              TextField(
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
                onChanged:(value) => requestText = value,
              ),
            ],
          ),
          const Spacer(),
          Container(height: 1,),
        ],
      ),
    );
  }
}
