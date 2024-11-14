import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trackit/commons/widgets/appbar/appbar.dart';
import 'package:trackit/features/notification/notifications.dart';

import '../../../commons/widgets/images/p_cicular_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_string.dart';
import '../../../utils/constants/text_strings.dart';
import '../../notification/notification_icon.dart';
import 'package:get/get.dart';

class PHomeAppBar extends StatelessWidget {
  const PHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(UserController());

    return ListTile(
      leading: const PCircularImage(
        image: PImages.user,
        width: 50,
        height: 50,
      ),
      title: Text(
        'Welcome, ATL',
        // controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: PColors.black),
      ),
      subtitle: Text(
        // controller.user.value.email,
        'Morning, Great Day, ',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: PColors.black),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.notification1,
          color: PColors.black,
        ),
      ),
      onTap: () {},
    );
  }
}
