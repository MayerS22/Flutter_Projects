import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/NewsTile_View.dart';

class CategoryVeiws extends StatelessWidget {
  const CategoryVeiws({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [NewstileView()],
      ),
    );
  }
}
