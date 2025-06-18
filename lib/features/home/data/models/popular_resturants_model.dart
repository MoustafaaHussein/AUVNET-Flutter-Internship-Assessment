import 'package:auvnet_ecommerce/core/helpers/images.dart';

class PopularResturantsModel {
  final String image;
  final String title;
  final String dilveryTime;

  PopularResturantsModel(
    this.dilveryTime, {
    required this.image,
    required this.title,
  });
}

List<PopularResturantsModel> popularResturants = [
  PopularResturantsModel(
    '32 min',
    image: Assets.assetsImagesResturant1,
    title: 'Allo Beruit',
  ),
  PopularResturantsModel(
    '38 min',
    image: Assets.assetsImagesResturant2,
    title: 'Laffah',
  ),
  PopularResturantsModel(
    '44 min',
    image: Assets.assetsImagesResturant3,
    title: 'Falafil AlnRabiah Al kha...',
  ),
  PopularResturantsModel(
    '34 min',
    image: Assets.assetsImagesResturant4,
    title: 'Barbar',
  ),
];
