import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions=[
    Transaction(title:'book',amount:1000),
    Transaction(title:'shirt',amount:850),
    Transaction(title:'skirt',amount:600),
    Transaction(title:'shoes',amount:2500),
    Transaction(title:'cardigan',amount:1200),
  ];
  List<Transaction> getTransaction(){
    return transactions;
  }
  void addTransaction(Transaction transaction){
    transactions.add(transaction);
  }
}