import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trackit/commons/widgets/custom_shapes/circular_container.dart';
import 'package:trackit/features/transactions/widgets/transaction_map.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<MapEntry<String, dynamic>> transactionList;
  final String title;
  final double height;
  final EdgeInsetsGeometry padding;
  final String? date;

  const TransactionList({
    super.key,
    required this.transactionList,
    this.title = 'Transactions',
    this.height = 200,
    this.date = 'Which Day Ogaa',
    this.padding = const EdgeInsets.symmetric(horizontal: 31.0),
  });

  @override
  Widget build(BuildContext context) {
    // final transactionList = TransactionEntries().transactions.entries.toList();
    // print(formattedDate);

    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 31.0),
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '$date',
                // 'Today:',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            // height: 200,
            height: height,
            child: ListView.builder(
              // addRepaintBoundaries: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: transactionList.length,
              itemBuilder: (context, index) {
                final entry = transactionList[index];
                final amount = entry.value.amount.toString();
                // final amount = entry.value['amount'].toString();
                final isIncome = entry.value.income ?? false;
                return ListTile(
                  // shape: BeveledRectangleBorder(),
                  leading: PCircularContainer(
                    width: 40,
                    height: 40,
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 202, 224, 241),
                    child: Center(child: Icon(entry.value.icon)),
                    // child: Center(child: Icon(entry.value['icon'])),
                  ),
                  title: Text(
                    // 'Home',
                    entry.value.category,
                    // entry.value['category'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  // subtitle: Text('Rent'),
                  subtitle: Text(
                    entry.value.categoryDetail,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  trailing: Text(
                    amount,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // color: (entry.value.income ?? false)
                      //     ? Colors.green
                      //     : Colors.red,
                      color: isIncome ? Colors.green : Colors.red,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
