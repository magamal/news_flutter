import 'package:flutter/material.dart';
import 'package:news_business/news_business.dart';

Widget articleItemWidget(NewsArticle article) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(article.title ?? "", style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 4),
      Text(article.content ?? "", style: const TextStyle(color: Colors.grey)),
    ],
  ),
);