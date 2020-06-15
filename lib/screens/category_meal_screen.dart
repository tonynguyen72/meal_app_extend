import 'package:flutter/material.dart';
import 'package:meal_app/fuck_data.dart';
import 'package:meal_app/widgets/meal_item.dart';

//?
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  //
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          final categoryMeal = categoryMeals[index];
          return MealItem(
            id: categoryMeal.id,
            title: categoryMeal.title,
            imageUrl: categoryMeal.imageUrl,
            duration: categoryMeal.duration,
            complexity: categoryMeal.complexity,
            affordability: categoryMeal.affordability,
          );
        },
      ),
    );
  }
}
