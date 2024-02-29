class Condition {
  final String conditionName;
  final String? bodyPart;
  final String? categoryImg;
  final String? conditionImg;
  final String? description;
  final List<String>? usefulTips;
  final List<Recipe>? recipes;
  final List<String>? causes;
  final List<String>? links;

  Condition({
    required this.conditionName,
    this.bodyPart,
    this.categoryImg,
    this.conditionImg,
    this.description,
    this.usefulTips,
    this.recipes,
    this.causes,
    this.links, // Initialize the links field
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      conditionName: json['condition_name'] as String? ?? 'Unknown',
      bodyPart: json['body_part'] as String?,
      categoryImg: json['category_img'] as String?,
      conditionImg: json['condition_img'] as String?,
      description: json['description'] as String?,
      usefulTips: (json['useful_tips'] as List<dynamic>?)?.map((e) => e as String).toList(),
      recipes: (json['recipes'] as List<dynamic>?)?.map((x) => Recipe.fromJson(x)).toList(),
      causes: (json['causes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      links: (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(), // Parse links from JSON
    );
  }
}

class Recipe {
  final String recipeName;
  final List<String>? ingredients;
  final List<String>? images;
  final List<String>? howToPrepare;
  final List<String>? howToUse;

  Recipe({
    required this.recipeName,
    this.ingredients,
    this.images,
    this.howToPrepare,
    this.howToUse,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      recipeName: json['recipe_name'] as String? ?? 'Unknown Recipe',
      ingredients: (json['ingredients'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      howToPrepare: (json['how_to_prepare'] as List<dynamic>?)?.map((e) => e as String).toList(),
      howToUse: (json['how_to_use'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }
}
