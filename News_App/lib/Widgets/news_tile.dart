import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/NewsTile_Model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsTileModel});

  final NewsTileModel newsTileModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            newsTileModel.newsTileImage ??
                'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Icon(Icons.error_outline, size: 50),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        Text(
          newsTileModel.newsTileTitle ?? 'No Title Available',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          newsTileModel.newsTileSubTitle ?? 'No Description Available',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
