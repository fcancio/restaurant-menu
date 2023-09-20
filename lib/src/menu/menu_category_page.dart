import 'package:flutter/material.dart';
import 'package:restaurant_menu/src/menu/menu_category.dart';
import 'package:restaurant_menu/src/menu/menu_item.dart';

/// Each page holds the menu items of the corresponding category
class MenuCategoryPage extends StatelessWidget {
  final MenuCategory category;

  const MenuCategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          category.categoryDescription != null
              ? Text(category.categoryDescription!)
              : Container(),
          const SizedBox(
            height: 8.0,
          ),
          category.subCategoryDescription != null
              ? Text(category.subCategoryDescription!)
              : Container(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              children: category.items.map((item) {
                return MenuItemWidget(item: item);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
