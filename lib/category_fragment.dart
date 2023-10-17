import 'package:flutter/material.dart';
import 'package:news/Category_Item.dart';
import 'package:news/model/CategoryDM.dart';

class CategoryFragment extends StatelessWidget {
  var categoryList = CategoryDM.getCategories();
  Function onCategoryClick;
  CategoryFragment({required this.onCategoryClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Pick your category \nof interest ",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      onCategoryClick(categoryList[index]);
                    },
                    child: CategoryItem(
                        category: categoryList[index], index: index));
              },
              itemCount: categoryList.length,
            ),
          )
        ],
      ),
    );
  }
}
