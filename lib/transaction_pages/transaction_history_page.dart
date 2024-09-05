import 'package:flutter/material.dart';
import 'package:hubtel_send_money_ui/transaction_pages/transaction_homepage.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/custom_tab_bar.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: CustomTabBar(),
          ),
        ),
        body: const TabBarView(children: [
          TransactionHomepage(),
          Center(
            child: Text(
              'Transaction Summary',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
