import 'package:flutter/material.dart';
import 'package:news_business/news_business.dart';
import 'package:news_presentation/src/widgets/article_item_widget.dart';

Widget newsListWidget(List<NewsArticle> articles) => ListView.separated(
  itemCount: articles.length,
  itemBuilder: (context, index) => articleItemWidget(articles[index]),
  separatorBuilder: (context, index) => const Divider(
    thickness: 1,
    endIndent: 8,
    indent: 8,
  ),
);