import 'package:flutter/material.dart';

class TransactionsModel {
  int id;
  String transaction;
  String date; // FIXME: Use actual date object
  IconData icon; // or Image
  double amount;
  Color amountColor;

  TransactionsModel(this.id, this.transaction, this.date, this.icon,
      this.amount, this.amountColor);

  static List<TransactionsModel> getTransactions() {
    return <TransactionsModel>[
      TransactionsModel(
        0,
        '5W Long Last Bulb',
        'Feb 27, 2020',
        Icons.lightbulb_outline,
        760,
        Colors.green,
      ),
      TransactionsModel(
        1,
        'EcoBank Transfer',
        'Jan 06, 2020',
        Icons.monetization_on,
        34.50,
        Colors.red,
      ),
      TransactionsModel(
        2,
        'ecocash Agent Transfer',
        'Jan 04, 2020',
        Icons.assignment_ind,
        1094,
        Colors.green,
      ),
      TransactionsModel(
        3,
        'HP probook 650',
        'Dec 12, 2019',
        Icons.computer,
        597,
        Colors.red,
      ),
    ];
  }
}
