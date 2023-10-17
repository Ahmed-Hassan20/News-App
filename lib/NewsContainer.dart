import 'package:flutter/material.dart';
import 'package:news/News%20Item.dart';
import 'package:news/api%20manager.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';

class NewsContainer extends StatefulWidget {
  Source source;
  NewsContainer({required this.source});

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNewsBySourceId(widget.source.id ?? ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data?.message ?? 'Something went wrong',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.black),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ApiManager.getNewsBySourceId(widget.source.id ?? '');
                        setState(() {});
                      },
                      child: Text('Try Again'))
                ],
              ),
            );
          }
          if (snapshot.data?.status != 'ok') {
            return Text(snapshot.data?.message ?? "Something went wrong");
          }
          var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(itemBuilder: (context, index) {
            return NewsItem(news: newsList[index]);
          },itemCount: newsList.length);
        });
  }
}
