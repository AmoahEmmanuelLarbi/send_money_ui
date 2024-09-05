import 'package:flutter/material.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/transaction_made.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/transaction_date_ui.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/ui_search_bar.dart';

class TransactionHomepage extends StatelessWidget {
  const TransactionHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UiSearchBar(),
            const UiDate(),
            // TransactionDetail(),
            Expanded(
              child: ListView(children: const [
                TransactionMade(
                  senderName: 'Emmanuel Rockson Kwabena Uncle Ebo',
                  amount: '400',
                  reference: 'Something small',
                  senderPhoneNumber: '024 567 8902',
                  //subName: '',
                  transactionStatus: 'Success',
                ),

                // transaction 2
                TransactionMade(
                  senderName: 'Absa Bank',
                  amount: '500',
                  reference: 'Cool your heart wai',
                  senderPhoneNumber: '024 567 8902',
                  //subName: '',
                  transactionStatus: 'Successful',
                ),

                //transaction 3
                TransactionMade(
                  senderName: 'Kwabena Uncle Ebo',
                  amount: '500',
                  reference: 'Cool your heart wai',
                  senderPhoneNumber: '024 123 4567',
                  //subName: 'Kwabena Uncle Ebo',
                  transactionStatus: 'successful',
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
