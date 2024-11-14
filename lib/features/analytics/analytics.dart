import 'package:flutter/material.dart';
import 'package:trackit/commons/widgets/appbar/appbar.dart';
import 'package:trackit/commons/widgets/cart/cart.dart';
import 'package:trackit/features/notification/notification_icon.dart';
import 'package:trackit/utils/constants/colors.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
        showBackArrow: true,
        title: Text('Analytics'),
        actions: [
          PNotificationIcon(
            onPressed: () {},
            iconColor: PColors.white,
          )
        ],
      ),
      body: Center(
        child: Text('Analytics Page under build'),
      ),
    );
  }
}
