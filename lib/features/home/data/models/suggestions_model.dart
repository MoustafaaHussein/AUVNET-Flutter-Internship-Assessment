import 'package:auvnet_ecommerce/core/helpers/images.dart';

class SuggestionsModel {
  final String title, image;

  SuggestionsModel({required this.title, required this.image});
}

List<SuggestionsModel> suggestions = [
  SuggestionsModel(
    title: 'Past \nOrders',
    image: Assets.assetsImagesTransactionOrders,
  ),
  SuggestionsModel(
    title: 'Super \nSaver',
    image: Assets.assetsImagesSecurityVault,
  ),
  SuggestionsModel(title: 'Must-Tires', image: Assets.assetsImagesMustTires),
  SuggestionsModel(title: 'Give Feedback', image: Assets.assetsImagesFeedback),
  SuggestionsModel(title: 'Best \nSellers', image: Assets.assetsImagesStar),
];
