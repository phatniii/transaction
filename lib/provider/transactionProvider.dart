import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
   List<Transaction> transactions = [
    Transaction(title: 'Book', amount: 1000, datetime: DateTime.now()), 
    Transaction(title: 'Shirt', amount: 850, datetime: DateTime.now()), 
    Transaction(title: 'Skirt', amount: 600, datetime: DateTime.now()),
    Transaction(title: 'Shoes', amount: 2500, datetime: DateTime.now()),
    Transaction(title: 'Cardigan', amount: 1200, datetime: DateTime.now()),
  ];
  List<Transaction> getTransaction(){
    return transactions;
  }
  void addTransaction(Transaction transaction){
    transactions.add(transaction);
  }
}