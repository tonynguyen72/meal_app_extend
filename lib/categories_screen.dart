import 'package:flutter/material.dart';
import 'package:meal_app/category_item.dart';
import 'package:meal_app/fuck_data.dart';

//?
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TonyMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: FUCK_CATEGORIES.map((catData) {
          return CategoryItem(catData.title, catData.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
