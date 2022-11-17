class BudgetModel {
  static List<BudgetModel> budgets = [];
  String judul;
  int harga;
  String jenisTransaksi;

  BudgetModel({
    required this.judul,
    required this.harga,
    required this.jenisTransaksi,
  });

  static void addNewBudget({
    required judul,harga,jenisTransaksi,
  }) {
    budgets.add(
      BudgetModel(
        judul: judul, 
        harga: harga, 
        jenisTransaksi: jenisTransaksi
        ));
  }


}