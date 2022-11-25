class BudgetModel {
  static List<BudgetModel> budgets = [];
  String judul;
  int harga;
  String jenisTransaksi;
  DateTime tanggal;


  BudgetModel({
    required this.judul,
    required this.harga,
    required this.jenisTransaksi,
    required this.tanggal

    

    
  });

  static void addNewBudget({
    required judul,harga,jenisTransaksi,tanggal
  }) {
    budgets.add(
      BudgetModel(
        judul: judul, 
        harga: harga, 
        jenisTransaksi: jenisTransaksi,
        tanggal: tanggal,
        ));
  }


}