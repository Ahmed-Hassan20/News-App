import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/my_theme.dart';

class TabItem extends StatelessWidget {
  Source source;
  bool isSelected;
  TabItem({required this.source, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(vertical: 6,horizontal: 14),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(width: 3, color: Theme.of(context).primaryColor),
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent),
      child: Text(
        source.name ?? '',
        style: isSelected
            ? Theme.of(context)
                .textTheme
                .titleSmall?.copyWith(fontSize: 16)
            : Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: mytheme.primarycolor,fontSize: 16),
      ),
    );
  }
}
