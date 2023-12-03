import 'package:finalprojectflutter/models/recipe.api.dart';
import 'package:finalprojectflutter/widget/RecipeCard.dart';
import 'package:flutter/material.dart';

import '../../models/recipe.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState(){
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async{
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading 
      ? Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index){
          return RecipeCard(
            title: _recipes[index].name,
            cookTime:  _recipes[index].totalTime,
            rating: _recipes[index].rating.toString(),
            thumbnailUrl: _recipes[index].images);
        },
        ));
  }
}