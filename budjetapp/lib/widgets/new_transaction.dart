import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                addTx(
                  titleController.text,
                  double.parse(amountController.text), //conversion of text to double
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
