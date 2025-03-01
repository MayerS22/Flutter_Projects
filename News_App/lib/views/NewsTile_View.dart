import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/NewsTile_Model.dart';

import '../Services/News_Services.dart';
import '../Widgets/news_tile.dart';

class NewstileView extends StatefulWidget {
  const NewstileView({super.key});

  @override
  State<NewstileView> createState() => _NewstileViewState();
}

class _NewstileViewState extends State<NewstileView> {
  late Future<List<NewsTileModel>> _newsFuture;

  @override
  void initState() {
    super.initState();
    _newsFuture = NewsService(Dio()).getNews(category: 'general');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsTileModel>>(
      future: _newsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingIndicator();
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return _buildNewsList(snapshot.data!);
        } else {
          return _buildEmptyState();
        }
      },
    );
  }

  // Loading state component
  Widget _buildLoadingIndicator() {
    return const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  // Error state component
  Widget _buildErrorWidget(Object? error) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text("Error: ${error}"),
      ),
    );
  }

  // News list component
  Widget _buildNewsList(List<NewsTileModel> newsTileList) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return _buildNewsItem(newsTileList[index]);
        },
        childCount: newsTileList.length,
      ),
    );
  }

  // Individual news item component
  Widget _buildNewsItem(NewsTileModel newsTileModel) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: NewsTile(
        newsTileModel: newsTileModel,
      ),
    );
  }

  // Empty state component
  Widget _buildEmptyState() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text("No news available."),
      ),
    );
  }
}
