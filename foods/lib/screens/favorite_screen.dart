import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  const FavoriteScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoritesMeals[index]);
        },
      );
    }
  }
}
