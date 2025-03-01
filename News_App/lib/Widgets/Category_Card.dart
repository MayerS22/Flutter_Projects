import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/Category_Model.dart';
import 'package:news_app_ui_setup/views/Category_Veiws.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  // Constructor to accept image and name
  const CategoryCard({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryVeiws();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.categoryImage),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
