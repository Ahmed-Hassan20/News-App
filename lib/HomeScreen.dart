import 'package:flutter/material.dart';
import 'package:news/Home_Drawer.dart';
import 'package:news/category%20details.dart';
import 'package:news/category_fragment.dart';
import 'package:news/model/CategoryDM.dart';
import 'package:news/my_theme.dart';
import 'package:news/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: mytheme.white,
          child: Image.asset(
            'assets/pattern.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
                selectedMenuItem == HomeDrawer.settings
                    ? 'Settings'
                    : selectedCategory == null
                        ? 'News App'
                        : selectedCategory!.title,
                style: Theme.of(context).textTheme.titleSmall),
          ),
          drawer: Drawer(
            child: HomeDrawer(
              onSideMenuItem: onSideMenuItem,
            ),
          ),
          body: selectedMenuItem == HomeDrawer.settings
              ? Settings()
              : selectedCategory == null
                  ? CategoryFragment(
                      onCategoryClick: onCategoryClick,
                    )
                  : CategoryDetails(category: selectedCategory!),
        )
      ],
    );
  }

  CategoryDM? selectedCategory;

  void onCategoryClick(CategoryDM newSelectedcategory) {
    selectedCategory = newSelectedcategory;
    setState(() {});
  }

  int selectedMenuItem = HomeDrawer.categories;
  void onSideMenuItem(int newSelectedMenuItem) {
    selectedMenuItem = newSelectedMenuItem;
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}
