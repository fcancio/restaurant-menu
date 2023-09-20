import 'package:flutter/material.dart';
import 'package:restaurant_menu/src/menu/menu_category_page.dart';
import 'package:restaurant_menu/src/menu/menu_item.dart';
import 'package:restaurant_menu/src/menu/menu_category.dart';

/// Main landing page, displays AppBar, Navigation tabs, and listed menu items
class MenuPage extends StatelessWidget {
  const MenuPage({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    // ALL MENU CATEGORIES AND ITEMS
    final List<MenuCategory> menuCategories = [
      // APPETIZERS
      MenuCategory(
        categoryName: 'APPETIZERS',
        items: [
          MenuItem(
            name: 'Iceberge Wedge Salad with House Cured Bacon',
            description: 'tomato salsa gorgonzola',
            price: 7.50,
          ),
          MenuItem(
            name: 'Sautéed Shreddeed Brussels Sprouts',
            description: 'bacon hazelnuts gorgonzola',
            price: 6.95,
          ),
          MenuItem(
            name: 'Kale Salad',
            description: 'parmesan crisp corn radish garlic-lemon vinaigrette',
            price: 7.50,
          ),
          MenuItem(
            name: 'Pecan Crusted Utah Goat Cheese with Basil-Mint Pesto',
            description: 'grilled tomato salsa crostini',
            price: 6.95,
          ),
          MenuItem(
            name: 'Chicken and Cabbage Eggrolls',
            description: 'hot & sour dipping sauce',
            price: 6.95,
          ),
        ],
      ),

      // ENTREES
      MenuCategory(
        categoryName: 'ENTREES',
        items: [
          MenuItem(
            name: 'Farfalle Pasta with Braised Pork in Tomato Cream',
            description: 'capers butternut squash kale',
            price: 12.95,
          ),
          MenuItem(
            name: 'Stout Braised Bratwurst',
            description:
                'horseradish mashed potatoes roasted root veggies grilled onion',
            price: 13.95,
          ),
          MenuItem(
            name: 'Salmon & Crispy Tofu in Yellow Curry Sauce',
            description: 'vegetable sauté golden raisin chutney',
            price: 15.95,
          ),
          MenuItem(
            name: 'Sesame Shrimp',
            description:
                'udon noodles ramen broth shiitake mushrooms bean sprouts scallions',
            price: 13.95,
          ),
        ],
      ),

      // COLD SANDWICHES
      MenuCategory(
        categoryName: 'COLD SANDWICHES',
        categoryDescription:
            'Served with choice of house pasta salad, green salad, or fresh fruit. For an additional ${'1.50'}, you can “upgrade” (by substituting) to ½ pasta salad of the day, French onion soup or soup of the day.',
        subCategoryDescription:
            'Choice of sourdough, whole wheat, or rye bread',
        items: [
          MenuItem(name: 'half sandwich', price: 7.95),
          MenuItem(name: 'full sandwich', price: 9.25),
          MenuItem(
            name: 'Turkey & Avocado',
            description: 'with tomato',
          ),
          MenuItem(
            name: 'Pub Club',
            description: 'turkey, bacon. lettuce, tomato',
          ),
          MenuItem(
            name: 'Rare Roast Beef & Swiss',
            description: 'sweet-hot mustard, lettuce, red onion',
          ),
          MenuItem(
            name: 'Veggie',
            description: 'pepper jack, avocado, sprout, tomato',
          ),
        ],
      ),

      // HOT SANDWICHES
      MenuCategory(
        categoryName: 'HOT SANDWICHES',
        categoryDescription:
            'Served with choice of house pasta salad, green salad, or fresh fruit. For an additional ${'1.50'}, you can “upgrade” (by substituting) to ½ pasta salad of the day, French onion soup or soup of the day.',
        subCategoryDescription: 'Choice of whole wheat or cheese & onion bun',
        items: [
          MenuItem(
            name:
                'Southwest Chicken Breast Grilled Onion, Poblano Pepper, Tomato, Lettuce, Jack Cheese',
            price: 9.50,
          ),
          MenuItem(
            name:
                'Portobello Fresh Mozzarella Caramelized Onion, Roasted Pepper, Tomato, Field Greens, Basil Aioli ',
            price: 9.50,
          ),
          MenuItem(
            name: 'Chipotle BBQ Pork Sandwich with Pickled Jalapeño Slaw',
            price: 9.50,
          ),
          MenuItem(
            name: 'Bacon Burger* Swiss, Lettuce, Tomato',
            price: 9.25,
          ),
          MenuItem(
            name:
                'Mexi Burger* Pepper Relish, Pepper Jack, Tomato, Lettuce, Guacamole',
            price: 10.95,
          ),
          MenuItem(
            name:
                'Herb Marinated Top Sirloin* Crimini Mushrooms, Caramelized Onion, Gorgonzola, Basil Aioli, Served Open Faced on Fococcia',
            price: 10.95,
          ),
          MenuItem(
            name:
                'Roast Beef with Ancho Au Jus Jack Cheese, Grilled Onions, Served on Crumb Bros. Baguette',
            price: 9.75,
          ),
          MenuItem(
            name:
                'Blackened Catfish Creole Peppers & Onions, Fresh Herb Aioli, Served on house made Sourdough',
            price: 9.75,
          ),
        ],
      ),

      // SOUP & SALAD COMBOS
      MenuCategory(
        categoryName: 'SOUP & SALAD COMBOS',
        items: [
          MenuItem(
            name: 'French Onion or Soup of the Day',
            price: 4.95,
          ),
          MenuItem(
            name: 'with small green salad, fresh fruit or house pasta',
            price: 7.25,
          ),
          MenuItem(
            name: 'with half pasta of the day',
            price: 8.75,
          ),
        ],
      ),

      // FAJITAS
      MenuCategory(
        categoryName: 'FAJITAS',
        items: [
          MenuItem(
            name:
                'Served with red rice, black beans, corn & romaine salad, tortilla chips',
            price: 9.95,
          ),
          MenuItem(
            name:
                'Beer Battered Fish with Jalapeño Remoulade, Roasted Salsa, Cabbage',
          ),
          MenuItem(
            name:
                'Carne Asada (marinated sirloin) with Guacamole, Tomatillo Salsa',
          ),
          MenuItem(
            name: 'Citrus Marinated Chicken with Guacamole, Tomatillo Salsa',
          ),
          MenuItem(
            name:
                'Grilled Veggie with Zucchini, Yellow Squash, Bell Peppers, Onion, Guacamole, Tomatillo Salsa',
          ),
        ],
      ),

      // ENCHILADAS
      MenuCategory(
        categoryName: 'ENCHILADAS',
        categoryDescription:
            'with Southwestern Succotash, Black Beans with Chipotle Crema \nChoice of Beef, Chicken, Cheese, or Veggie',
        items: [
          MenuItem(
            name: 'uno',
            price: 8.50,
          ),
          MenuItem(
            name: 'dos',
            price: 9.95,
          ),
          MenuItem(
            name: 'tres',
            price: 11.50,
          ),
        ],
      ),

      // QUICHE
      MenuCategory(
        categoryName: 'QUICHE',
        items: [
          MenuItem(
            name:
                'Bacon, Swiss, Mushroom, Zucchini and Mushroom Quiche Choice of Fresh Fruit or Green Salad',
            price: 8.95,
          ),
        ],
      ),

      // GREEN SALADS
      MenuCategory(
        categoryName: 'GREEN SALADS',
        items: [
          MenuItem(
            name:
                'Grilled Red Trout Lentils, Tomatoes, Cukes, Green Beans, Red Bells, Almonds, Sundried Tomato Vinaigrette',
            price: 10.95,
          ),
          MenuItem(
            name:
                'Smoked Turkey Cheese Tortellini, Bacon, Tomato, Cucumber, Egg, Black Bean-Corn Salsa, Avocado',
            price: 9.95,
          ),
          MenuItem(
            name:
                'Asian Grilled Chicken Snow Peas, Carrot Slaw, Red Bells, Water Chestnut, Peanuts, Baby Corn, Cilantro, Cukes, Spicy Peanut Dressing',
            price: 10.50,
          ),
          MenuItem(
            name:
                'Southwest Grilled Chicken Tomato, Guacamole, pepitas, Jicama, Corn & Black Bean Salsa, Orange Wedges, Spicy Citrus Vinaigrette',
            price: 10.50,
          ),
          MenuItem(
            name:
                'Mediterranean Italian Sausage, Artichoke Hearts, Green Beans, Roma Tomato, Kalamatas, Red Onion, Cucumber, Croutons, Parmesan, Fresh Mozzarella, Gorgonzola Vinaigrette',
            price: 9.95,
          ),
          MenuItem(
            name:
                'Grilled Salmon Artichoke tapenade, shredded kale, corn, radish, parmesan crisps',
            price: 11.50,
          ),
        ],
      )
    ];

    return DefaultTabController(
      length: menuCategories.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Restuarant Menu',
            style: TextStyle(
              color: Color.fromRGBO(49, 70, 96, 1),
            ),
          ),
          leading: Image.asset('assets/images/ourself_logo.jpeg'),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 245, 235, 228),

          // SETTINGS DISABLED UNTIL THEME DATA IS COMPLETE
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.settings),
          //     onPressed: () {
          //       // Navigate to the settings page. If the user leaves and returns
          //       // to the app after it has been killed while running in the
          //       // background, the navigation stack is restored.
          //       Navigator.restorablePushNamed(context, SettingsView.routeName);
          //     },
          //   ),
          // ],
        ),
        body: Column(
          children: [
            TabBar(
                isScrollable: true,
                labelColor: const Color.fromRGBO(149, 59, 112, 1),
                indicatorColor: const Color.fromRGBO(235, 145, 40, 100),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: menuCategories
                    .map((category) => Tab(text: category.categoryName))
                    .toList()),
                    
            Expanded(
              child: TabBarView(
                  children: menuCategories
                      .map((category) => MenuCategoryPage(category: category))
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}
