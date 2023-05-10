class LocalData {
  List<Products>? products;

  LocalData({this.products});

  LocalData.fromJson(Map<String, dynamic> json) {
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data["products"] = products?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Products {
  List<String>? description;
  List<Rating>? rating;
  List<TopReviews>? topReviews;
  String? mainImage;
  List<String>? imageReview;

  Products(
      {this.description,
      this.rating,
      this.topReviews,
      this.mainImage,
      this.imageReview});

  Products.fromJson(Map<String, dynamic> json) {
    description = json["description"] == null
        ? null
        : List<String>.from(json["description"]);
    rating = json["rating"] == null
        ? null
        : (json["rating"] as List).map((e) => Rating.fromJson(e)).toList();
    topReviews = json["top_reviews"] == null
        ? null
        : (json["top_reviews"] as List)
            .map((e) => TopReviews.fromJson(e))
            .toList();
    mainImage = json["main_image"];
    imageReview = json["image_review"] == null
        ? null
        : List<String>.from(json["image_review"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (description != null) {
      data["description"] = description;
    }
    if (rating != null) {
      data["rating"] = rating?.map((e) => e.toJson()).toList();
    }
    if (topReviews != null) {
      data["top_reviews"] = topReviews?.map((e) => e.toJson()).toList();
    }
    data["main_image"] = mainImage;
    if (imageReview != null) {
      data["image_review"] = imageReview;
    }
    return data;
  }
}

class TopReviews {
  String? name;
  List<String>? reviews;

  TopReviews({this.name, this.reviews});

  TopReviews.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    reviews =
        json["reviews"] == null ? null : List<String>.from(json["reviews"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    if (reviews != null) {
      data["reviews"] = reviews;
    }
    return data;
  }
}

class Rating {
  int? percentage;
  String? reviews;

  Rating({this.percentage, this.reviews});

  Rating.fromJson(Map<String, dynamic> json) {
    percentage = json["percentage"];
    reviews = json["reviews"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["percentage"] = percentage;
    data["reviews"] = reviews;
    return data;
  }
}
