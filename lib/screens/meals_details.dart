import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          Image.network(
            meal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 14)
        ],
      ),
    );
  }
}
