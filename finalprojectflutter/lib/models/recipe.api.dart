import 'dart:convert';

import 'package:finalprojectflutter/models/recipe.dart';
import 'package:http/http.dart' as http;


class RecipeApi{

static Future<List<Recipe>> getRecipe() async{

var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
    {'limit': '24', 'start': '0'});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '976fa36930mshf5a66740fac7af2p115fcfjsnbb3c0ec597b9',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
      'useQueryString': 'true'
        }
      );

      Map data = jsonDecode(response.body);
      List _temp = [];

      for (var i in data['feed']){
        _temp.add(i['content']['details']);
      }

      return Recipe.recipesFromSnapshot(_temp);
  }
}