import 'package:flutter/material.dart';
import 'package:hubtel_send_money_ui/transaction_pages/scheduled_transaction.dart';
import 'package:hubtel_send_money_ui/transaction_pages/send_money.dart';
import 'package:hubtel_send_money_ui/transaction_pages/transaction_history_page.dart';
import 'package:hubtel_send_money_ui/transaction_pages/transaction_homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variable for changing the index of bottom_nav_bar
  int _selectedIndex = 0;

  // a void function to keep track of the selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages
  final List<Widget> transactionPages = const [
    TransactionHomepage(),
    SendMoney(),
    TransactionHistoryPage(),
    ScheduledTransaction()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // change page based on selected index of bottom nav bar
        body: transactionPages[_selectedIndex],

        // bottom nav bar
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[400],
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            onTap: navigateBottomBar,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.send_to_mobile_outlined), label: 'Send'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined), label: 'Schedule'),
            ]));
  }
}
