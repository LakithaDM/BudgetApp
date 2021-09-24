import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

final titleController = TextEditingController();
final amountController = TextEditingController();
  // String titleInput;
  // String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.lightBlue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    cursorColor: Colors.lightBlue,
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    /*onChanged: (val) {
                      titleInput = val;
                    },*/
                  ),
                  TextField(
                    cursorColor: Colors.lightBlue,
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    /*onChanged: (val) {
                      amountInput = val;
                    },*/
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.lightBlue,
                    onPressed: () {
                      print(titleController.text);
                      //print(titleInput);
                      //print(amountInput);
                    },
                  )
                ],
              ),
            ),
          ),
          TransactionList()
        ],
      ),
    );
  }
}
