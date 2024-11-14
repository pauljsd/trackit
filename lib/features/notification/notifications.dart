
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:trackit/commons/widgets/appbar/appbar.dart';
import 'package:trackit/utils/constants/sizes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
        showBackArrow: true,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(PSizes.defaultSpace),
        child: Text('hello'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => (),
          child: const Text('Checkout \$290'),
        ),
      ),
    );
  }
}
