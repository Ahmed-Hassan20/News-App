import 'package:flutter/material.dart';
import 'package:news/api%20manager.dart';
import 'package:news/model/CategoryDM.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/tab%20Container.dart';

class CategoryDetails extends StatefulWidget {
  static const String routename = 'categorydetails';
  CategoryDM category;
CategoryDetails({required this.category});
  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<SourceResponse>(
          future: ApiManager.getSources(widget.category.id),
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
                          ApiManager.getSources(widget.category.id);
                          setState(() {});
                        },
                        child: Text('Try Again'))
                  ],
                ),
              );
            }
            if (snapshot.data?.status != 'ok') {
              return Column(
                children: [
                  Text(
                    snapshot.data?.message ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ApiManager.getSources(widget.category.id);
                      },
                      child: Text('Try Again'))
                ],
              );
            }
            var sourceList = snapshot.data?.sources ?? [];

            return TabContainer(sourceList: sourceList);
          },
    );
  }
}
