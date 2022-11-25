import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/objectModel.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: const DrawerApp(),

            body: ListView.builder(
              itemBuilder: (context,index) {
                return Card(
                  child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            BudgetModel.budgets[index].judul,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            BudgetModel.budgets[index].jenisTransaksi,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            BudgetModel.budgets[index].harga.toString(),
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                          BudgetModel.budgets[index].tanggal.toString(),
                          style: const TextStyle(fontSize: 12, color: Colors.black),
                        )
                        ],
                      ),
                    ],
                  ),
                ),              
                );
              },
              itemCount: BudgetModel.budgets.length,
              ),
        );
    }
}