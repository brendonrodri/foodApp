import 'package:flutter/material.dart';
import 'package:foods/components/meal_item.dart';
import 'package:foods/data/dummy_data.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeals[index]);
            }));
  }
}
