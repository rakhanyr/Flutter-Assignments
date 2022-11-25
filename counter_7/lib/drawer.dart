import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'page/my_watchlist.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({key});

  @override
  Widget build(BuildContext context) {
    // Menambahkan drawer menu
      return Drawer(
            child: Column(
              children: [
                // Menambahkan clickable menu
                ListTile(
                  title: const Text('counter_7'),
                  onTap: () {
                    // Route menu ke halaman utama
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage(title: 'counter_7',)),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Data Budget'),
                  onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyDataPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Watchlist'),
                  onTap: () {
                      // Route menu ke halaman watchlist
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                    );
                  },
                ),
              ],
            ),
          );
  }
}