import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function getTransaction;
  NewTransaction({Key key, @required this.getTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController();
    final _amountController = TextEditingController();

    return Card(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
              decoration: InputDecoration(
                labelText: "Title",
              ),
            ),
            TextField(
              controller: _amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
              decoration: InputDecoration(
                labelText: "Amount",
              ),
            ),
            FlatButton(
              onPressed: () {
                getTransaction(_titleController.text,
                    double.parse(_amountController.text));
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
