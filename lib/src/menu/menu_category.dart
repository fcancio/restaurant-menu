import 'package:restaurant_menu/src/menu/menu_item.dart';

class MenuCategory {
  final String categoryName;
  final String? categoryDescription;
  final String? subCategoryName;
  final String? subCategoryDescription;
  final List<MenuItem> items;

  const MenuCategory({
    required this.categoryName,
    this.categoryDescription,
    this.subCategoryName,
    this.subCategoryDescription,
    required this.items,
  });
}
