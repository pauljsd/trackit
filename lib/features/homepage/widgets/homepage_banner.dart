import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trackit/features/homepage/widgets/banner_entries.dart';

import '../../../commons/widgets/custom_shapes/circular_container.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PCircularContainer(
      padding: 10,
      backgroundColor: Colors.blueAccent,
      width: 350,
      height: 180,
      radius: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Balance
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Entries(entryText: 'Total Balance', entryAmount: '1,250,000'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Income
              Entries(
                entryText: 'Expense',
                entryAmount: '350,000',
                amountSize: 18,
                icon: Icon(Iconsax.paintbucket),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Entries(
                    entryText: 'Expenses',
                    entryAmount: '450, 000',
                    amountSize: 18,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
