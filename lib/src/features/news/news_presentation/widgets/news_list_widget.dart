import 'package:flutter/material.dart';

import '../../news.dart';
import 'article_item_widget.dart';

class NewsListWidget extends StatelessWidget {
  final List<NewsArticle> articles;

  const NewsListWidget(this.articles, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: articles.length,
      itemBuilder: (context, index) => ArticleItemWidget(articles[index]),
      separatorBuilder: (context, index) => divider(),
    );
  }

  divider() => const Divider(
        thickness: 1,
        endIndent: 8,
        indent: 8,
      );
}
