import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final Function getTransaction;

  NewTransaction({Key key, @required this.getTransaction}) : super(key: key);

  void submitData() {
    final enterTitle = _titleController.text;
    final enterAmount = double.parse(_amountController.text);

    if (enterTitle.isEmpty || enterAmount <= 0) {
      return;
    }
    getTransaction(enterTitle, enterAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Title",
              ),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              onPressed: submitData,
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
