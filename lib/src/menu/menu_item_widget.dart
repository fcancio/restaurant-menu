import 'package:flutter/material.dart';
import 'package:restaurant_menu/src/menu/menu_item.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItem item;

  const MenuItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ITEM NAME
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(49, 70, 96, 1),
                  ),
                ),
              ),

              // ITEM DESCRIPTION
              item.description != null
                  ? Text(item.description!)
                  : const SizedBox(),
            ],
          ),
        ),
        const SizedBox(width: 12.0),

        // ITEM PRICE
        item.price != null
            ? Text('\$${item.price!.toStringAsFixed(2)}')
            : const SizedBox(),
      ],
    );
  }
}
