import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/model/objectModel.dart';



class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    int _harga = 0;
    String? _jenisTransaksi;
    var _kumpulanJenis = ["Pemasukan","Pengeluaran"];
    List<String> _listJudul = [];
    List<int> _listHarga = [];
    List<String> _listJenis = [];
    DateTime tanggal = DateTime.now();


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            drawer: const DrawerApp(),

            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Contoh: Sate Pacil",
                            labelText: "Judul",
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        // Menambahkan behavior saat nama diketik 
                        onChanged: (String? value) {
                            setState(() {
                                _judul = value!;
                            });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                            setState(() {
                                _judul = value!;
                            });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                                return 'Judul tidak boleh kosong!';
                            }
                            return null;
                        },
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Contoh: 10000",
                            labelText: "Nominal",
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        // Menambahkan behavior saat nama diketik 
                        onChanged: (value) {
                            setState(() {
                                _harga = int.parse(value);
                            });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (value) {
                            setState(() {
                                _harga = int.parse(value!);
                            });
                        },
                        // Validator sebagai validasi form
                          // Validator sebagai validasi form
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                                return 'Judul tidak boleh kosong!';
                            }
                            return null;
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(tanggal.toString()),
                      // make tanggal to center
                      trailing: const Icon(Icons.keyboard_arrow_down),
                      onTap: () async {
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: tanggal,
                          firstDate: DateTime(2015, 8),
                          lastDate: DateTime(2101),
                        );
                        if (picked != null && picked != tanggal) {
                          setState(() {
                            tanggal = picked;
                          });
                        }
                      },
                    ),

                    DropdownButtonFormField(
                      value: _jenisTransaksi,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Text("Pilih jenis"),
                      items: _kumpulanJenis.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _jenisTransaksi = newValue!;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Harap memilih jenis!";
                        }

                        return null;
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        BudgetModel.addNewBudget(
                            judul: _judul,
                            harga: _harga,
                            jenisTransaksi: _jenisTransaksi,
                            tanggal: tanggal,
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyFormPage()),
                        );
                        
                      },
                    ),
                    ],
                  ),
                ),
              ),
            ),
        );
    }
}