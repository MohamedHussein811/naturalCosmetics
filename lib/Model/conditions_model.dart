class Condition {
  final String conditionName;
  final String? conditionLink;
  final String? bodyPart;
  final String? categoryImg;
  final String? conditionImg;
  final String? description;
  final List<String>? usefulTips;
  final List<Recipe>? recipes;
  final List<String>? causes;

  Condition({
    required this.conditionName,
    this.conditionLink,
    this.bodyPart,
    this.categoryImg,
    this.conditionImg,
    this.description,
    this.usefulTips,
    this.recipes,
    this.causes,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      conditionName: json['condition_name'] as String? ?? 'Unknown',
      conditionLink: json['condition_link'] as String? ?? 'Unknown',
      bodyPart: json['body_part'] as String?,
      categoryImg: json['category_img'] as String?,
      conditionImg: json['condition_img'] as String?,
      description: json['description'] as String?,
      usefulTips: (json['useful_tips'] as List<dynamic>?)?.map((e) => e as String).toList(),
      recipes: (json['recipes'] as List<dynamic>?)?.map((x) => Recipe.fromJson(x)).toList(),
      causes: (json['causes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }
}

class Recipe {
  final String recipeName;
  final List<String>? ingredients;
  final List<String>? images;
  final List<String>? howToPrepare;
  final List<String>? howToUse;
  final List<Link>? links; // Change type to List<Link>

  Recipe({
    required this.recipeName,
    this.ingredients,
    this.images,
    this.howToPrepare,
    this.howToUse,
    this.links,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      recipeName: json['recipe_name'] as String? ?? 'Unknown Recipe',
      ingredients: (json['ingredients'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      howToPrepare: (json['how_to_prepare'] as List<dynamic>?)?.map((e) => e as String).toList(),
      howToUse: (json['how_to_use'] as List<dynamic>?)?.map((e) => e as String).toList(),
      links: (json['links'] as List<dynamic>?)?.map((e) => Link.fromJson(e)).toList(), // Parse links as Link objects
    );
  }
}

class Link {
  final String linkText;
  final String url;

  Link({
    required this.linkText,
    required this.url,
  });

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      linkText: json['link_text'] as String,
      url: json['url'] as String,
    );
  }
}
