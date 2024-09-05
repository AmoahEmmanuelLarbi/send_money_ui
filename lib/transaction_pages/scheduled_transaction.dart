import 'package:flutter/material.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/home_page.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/send_money_button.dart';
import 'package:hubtel_send_money_ui/transaction_pages/send_money.dart';

class ScheduledTransaction extends StatelessWidget {
  const ScheduledTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Scheduled Transaction'),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Send Money')),

          // send money button
          SendMoneyButton()
        ],
      ),
    );
  }
}
