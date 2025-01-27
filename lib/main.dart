import 'package:account/formScrenn.dart';
import 'package:account/model/transaction.dart';
import 'package:account/provider/transactionprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context){
          return TransactionProvider();

        })
      ],
      child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context){
              return FormScreen();
            }));
            // Add your functionality here
          },
        ),
      ],
    ),
          body: Consumer(
          builder: (context, TransactionProvider provider, Widget? child) {
            return ListView.builder(
              itemCount: provider.transactions.length,
              itemBuilder: (context, int index) {
                Transaction data = provider.transactions[index];
              return Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: ListTile(
                      title: Text(data.title),
                      subtitle: Text('วันที่เพิ่มข้อมูล'),
                      leading: CircleAvatar(
                          child: FittedBox(
                        child: Text(data.amount.toString()),
                      ),
                      ),
                      ),
                      );
            }
            );
          },
        )
        );
  }
}
