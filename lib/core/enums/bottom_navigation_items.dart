import 'package:cheap_tickets_app/core/constants/assets_path.dart';

enum BottomNavigationItems {
  plane(label: 'Авиабилеты', assetPath: planeIconAsset),
  hotel(label: 'Отели', assetPath: bedIconAsset),
  briefly(label: 'Короче', assetPath: geoIconAsset),
  subscriptions(label: 'Подписки', assetPath: bellIconAsset),
  profile(label: 'Профиль', assetPath: profileIconAsset);

  const BottomNavigationItems({
    required this.label,
    required this.assetPath,
  });

  final String label;
  final String assetPath;
}
