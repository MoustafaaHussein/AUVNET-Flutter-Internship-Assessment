import 'package:auvnet_ecommerce/features/home/data/models/popular_resturants_model.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/popular_resturants_list_view_items.dart';
import 'package:flutter/material.dart';

class PopularResturantListView extends StatelessWidget {
  const PopularResturantListView({super.key, required this.model});
  final List<PopularResturantsModel> model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // fixed height avoids unbounded issues
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.length,
        itemBuilder: (context, index) {
          return PopularResturantsListViewItems(
            image: model[index].image,
            title: model[index].title,
            dilveryTime: model[index].dilveryTime,
          );
        },
      ),
    );
  }
}
