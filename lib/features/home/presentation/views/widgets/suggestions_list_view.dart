import 'package:auvnet_ecommerce/features/home/data/models/suggestions_model.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/suggestions_list_view_items.dart';
import 'package:flutter/material.dart';

class SuggestionsListView extends StatelessWidget {
  const SuggestionsListView({super.key, required this.model});
  final List<SuggestionsModel> model;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: model.length,
      itemBuilder: (context, index) {
        return SuggestionsListViewItems(
          image: model[index].image,
          title: model[index].title,
        );
      },
    );
  }
}
