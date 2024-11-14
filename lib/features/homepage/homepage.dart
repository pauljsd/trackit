import 'package:flutter/material.dart';
import 'package:trackit/commons/widgets/custom_shapes/circular_container.dart';
import 'package:trackit/features/homepage/widgets/home_appbar.dart';
import 'package:trackit/features/homepage/widgets/homepage_banner.dart';
import 'package:trackit/features/transactions/widgets/transaction_list.dart';
import 'package:trackit/features/transactions/widgets/transaction_map.dart';
import 'package:trackit/utils/device/device_utility.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String formattedDate = DateFormat("MMM d'th'").format(DateTime.now());

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    final todayTransactionList =
        TransactionEntries().transactions.entries.toList();
    final yesterdayTransactionList =
        TransactionEntries().yesterdayTransactions.entries.toList();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const PHomeAppBar(),
            const SizedBox(height: 20),
            const HomePageBanner(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 240, 0),
              child: Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            TransactionList(
              transactionList: todayTransactionList,
              date: 'Today: $formattedDate',
            ),
            SizedBox(
              height: 10,
            ),
            TransactionList(
              transactionList: yesterdayTransactionList,
              date: 'Yesterday',
            ),
          ]),
        ),
      ),
    );
  }
}
