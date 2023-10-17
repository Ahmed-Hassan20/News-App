import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

import 'model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? '',
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                color: mytheme.primarycolor,
              )),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            news.author ?? '',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: mytheme.black, fontSize: 16),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            news.title ?? '',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            news.publishedAt ?? '',
            textAlign: TextAlign.end,style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: mytheme.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
