import 'package:flutter/material.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/transaction_made.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/transaction_date_ui.dart';
import 'package:hubtel_send_money_ui/main_ui_pages/ui_search_bar.dart';

class TransactionHomepage extends StatelessWidget {
  const TransactionHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // custom search bar
              const UiSearchBar(),

              // transaction date
              const UiDate(),

              // List of Transactions,
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        elevation: 4,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        icon: const Icon(
          Icons.add_circle_outline,
          color: Colors.white,
        ),
        label: const Text(
          'SEND NEW',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
