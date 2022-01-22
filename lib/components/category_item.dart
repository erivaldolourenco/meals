import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:meals/screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_){
            return CategoriesMealsScreen(category);
          },
    ));
  }

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(category.title,
          style: Theme.of(context).textTheme.caption,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
            category.color.withOpacity(0.5),
            category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
      ),
    );
  }

}