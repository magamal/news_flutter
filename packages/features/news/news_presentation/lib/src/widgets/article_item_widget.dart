import 'package:flutter/material.dart';
import 'package:news_business/news_business.dart';

class ArticleItemWidget extends StatelessWidget {
  NewsArticle newsArticle;
  ArticleItemWidget(this.newsArticle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(newsArticle.title ?? "", style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(newsArticle.content ?? "", style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
