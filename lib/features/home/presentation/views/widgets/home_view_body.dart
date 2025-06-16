import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/list_view_items.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/welcome_header_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeHeaderCard(),
        SizedBox(height: 16),
        // Add more widgets here
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Services:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        Row(
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
        ),
      ],
    );
  }
}
