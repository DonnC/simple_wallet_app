import 'package:flutter/material.dart';
import 'package:simple_wallet_app/models/transactions_model.dart';

class Transaction extends StatelessWidget {
  final List<TransactionsModel> transactions = TransactionsModel.getTransactions();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: transactions.length,
      itemBuilder: (BuildContext context, int index) {
        TransactionsModel transaction = transactions[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 22.0,
            backgroundColor: Colors.blue,
            child: Center(
              child: Icon(
                transaction.icon,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            transaction.transaction,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            transaction.date,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          trailing: Text(
            '${getSign(transaction.amountColor)}\$${transaction.amount}',
            style: TextStyle(
              color: transaction.amountColor,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () => print('Transaction History ${transaction.id} pressed'),
        );
      },
    );
  }
}

// this is madness!, but well it just worked
String getSign(Color color)
{
  if(color == Colors.green)
  {
    return '+';
  }

  else{
    return '-';
  }
}