class Transaction {
  String title;
  double amount;
  DateTime datetime;

  // Constructor to initialize the values for title and amount
  Transaction({required this.title, required this.amount, required this.datetime});

  get category => null;

  get date => null;
}
