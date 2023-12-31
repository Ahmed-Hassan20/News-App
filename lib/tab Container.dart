import 'package:flutter/material.dart';
import 'package:news/NewsContainer.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/tabItem.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourceList;
  TabContainer({required this.sourceList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourceList.length,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sourceList
                    .map((source) => TabItem(
                        source: source,
                        isSelected:
                            selectedIndex == widget.sourceList.indexOf(source)))
                    .toList()),
            SizedBox(height: 12),
            Expanded(child: NewsContainer(source: widget.sourceList[selectedIndex]))
          ],
        ));
  }
}
