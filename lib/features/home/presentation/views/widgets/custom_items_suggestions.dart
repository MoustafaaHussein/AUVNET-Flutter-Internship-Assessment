import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/list_view_items.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/images.dart';

class CustomItemsSuggestions extends StatelessWidget {
  const CustomItemsSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListViewItems(
          image: Assets.assetsImagesBurger,
          title: 'Up To 50% Off',
          subTitile: 'Fast Food',
        ),
        ListViewItems(
          image: Assets.assetsImagesHealthWellness,
          title: ' 20Mins ',
          subTitile: 'Health & \n Wellness',
        ),
        ListViewItems(
          image: Assets.assetsImagesGroceries,
          title: ' 15Mins ',
          subTitile: 'Groceries',
        ),
      ],
    );
  }
}
