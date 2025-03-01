import 'package:flutter/material.dart';
import '../Widgets/Category_Card.dart';
import '../Models/Category_Model.dart'; // Import the CategoryModel

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample category list with images and names
    List<CategoryModel> categories = [
      CategoryModel(
          categoryImage: "assets/business.avif", categoryName: "Business"),
      CategoryModel(
          categoryImage: "assets/technology.jpeg", categoryName: "Technology"),
      CategoryModel(
          categoryImage: "assets/health.avif", categoryName: "Health"),
      CategoryModel(
          categoryImage: "assets/general.avif", categoryName: "General"),
      CategoryModel(
          categoryImage: "assets/entertaiment.avif",
          categoryName: "Entertainment"),
      CategoryModel(
          categoryImage: "assets/science.avif", categoryName: "Science"),
      CategoryModel(
          categoryImage: "assets/sports.avif", categoryName: "Sports"),
      // Add more categories as needed
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
