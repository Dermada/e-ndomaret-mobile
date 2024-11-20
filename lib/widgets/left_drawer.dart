import 'package:e_ndomaret/screens/list_productentry.dart';
import 'package:flutter/material.dart';
import 'package:e_ndomaret/screens/menu.dart';
import 'package:e_ndomaret/screens/productentry_form.dart'; // Import halaman MoodEntryFormPage

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'E-Ndomaret',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Mudah dan Hemat",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Products'),
            //Bagian redirection ke MoodEntryFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke MoodEntryFormPage di sini,
              setelah halaman MoodEntryFormPage sudah dibuat.
              */
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) => ProductEntryFormPage()
              ));
            },
          ),
          ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Product Entry'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}