import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
   List<Transaction> transactions = [
    Transaction(title: 'Book', amount: 1000, datetime: DateTime(2025, 1, 20)), 
    Transaction(title: 'Shirt', amount: 850, datetime: DateTime(2025, 1, 15)), 
    Transaction(title: 'Skirt', amount: 600, datetime: DateTime(2025, 1, 10)),
    Transaction(title: 'Shoes', amount: 2500, datetime: DateTime(2025, 1, 5)),
    Transaction(title: 'Cardigan', amount: 1200, datetime: DateTime(2025, 1, 1)),
  ];
  List<Transaction> getTransaction(){
    return transactions;
  }
  void addTransaction(Transaction transaction){
    transactions.add(transaction);
  }
}