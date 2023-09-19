import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String? description;
  final double? price;

  MenuItem({
    required this.name,
    this.description,
    this.price,
  });
}

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
                      fontSize: 16, fontWeight: FontWeight.w500),
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