import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories=1;
  static const int settings=2;

  Function onSideMenuItem;
  HomeDrawer({required this.onSideMenuItem});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08),
          color: mytheme.primarycolor,
          child: Text(
            'News App',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: mytheme.white),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            onSideMenuItem(HomeDrawer.categories);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.list),
                Text(' Categories',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            onSideMenuItem(HomeDrawer.settings);

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.settings),
                Text(' Settings',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
        )
      ],
    );
  }
}
