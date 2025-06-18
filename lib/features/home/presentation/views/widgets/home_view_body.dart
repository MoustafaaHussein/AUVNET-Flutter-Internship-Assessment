import 'package:auvnet_ecommerce/features/home/data/models/suggestions_model.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/code_offers_suggestions.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/custom_items_suggestions.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/offers_page_view.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/suggestions_list_view.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/welcome_header_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
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

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                CustomItemsSuggestions(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: CodeSuggestions(),
                ),
                SizedBox(height: 16),
                SuggestionsListView(model: suggestions),
                SizedBox(height: 20),
                OffersPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
