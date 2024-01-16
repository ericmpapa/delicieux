import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 243, 240),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 248, 243, 240),
      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color.fromARGB(255, 245, 105, 73),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(Icons.home),
            label: "acceuil",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            icon: Icon(Icons.shopping_cart),
            label: "commandes",
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              TextField(),
              const SizedBox(height: 10),
              const Text(
                "Plats par catégorie",
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
