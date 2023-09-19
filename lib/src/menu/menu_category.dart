import 'package:flutter/material.dart';
import 'package:restaurant_menu/src/menu/menu_item.dart';

class MenuCategory extends StatelessWidget {
  final String? categoryName;
  final String? categoryDescription;
  final String? subCategoryName;
  final String? subCategoryDescription;
  final List<MenuItem> items;

  const MenuCategory({
    super.key,
    this.categoryName,
    this.categoryDescription,
    this.subCategoryName,
    this.subCategoryDescription,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CATEGORY TITLE
          categoryName != null
              ? Text(
                  '- $categoryName -',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const SizedBox(),

          // CATEGORY DESCRIPTION
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
            child: categoryDescription != null
                ? Text(
                    categoryDescription!,
                  )
                : Container(),
          ),

          // SUBCATEGORY TITLE
          subCategoryName != null
              ? Text(
                  subCategoryName!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const SizedBox(),

          // SUBCATEGORY DESCRIPTION
          subCategoryDescription != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    subCategoryDescription!,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                )
              : const SizedBox(),

          // MENU ITEMS
          Column(
            children: items.map((item) => MenuItemWidget(item: item)).toList(),
          ),
        ],
      ),
    );
  }
}

