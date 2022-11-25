import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:counter_7/drawer.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/WatchList.dart';
import 'package:flutter/material.dart';

class MyWatchlistPage extends StatefulWidget {
    const MyWatchlistPage({Key? key}) : super(key: key);

    @override
    _MyWatchlistPageState createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  Future<List<WatchList>> fetchMyWatchlist() async {
        var url = Uri.parse('https://tugas2-rakhan.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object ToDo
        List<WatchList> watchListToDo = [];
        for (var d in data) {
        if (d != null) {
            watchListToDo.add(WatchList.fromJson(d));
        }
        }

        return watchListToDo;
    }
  @override
  Widget build(BuildContext context) {
 
    return 
    Scaffold(
    appBar: AppBar(
        title: const Text('My Watchlist'),
    ),
    drawer: const DrawerApp(),

    body: FutureBuilder(
        future: fetchMyWatchlist(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada to do list :(",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0
                        )
                        ]
                    ),
                    
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            "${snapshot.data![index].title}",
                            style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].completed}"),
                        ],
                    ),
                    )
                );
            }
          }
        }
    )
);
}
}