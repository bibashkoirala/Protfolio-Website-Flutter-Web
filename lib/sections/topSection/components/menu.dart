import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  final ScrollController scrollController;
  const Menu({Key? key, required this.scrollController}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  late ItemScrollController itemScrollController;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];

  @override
  void initState() {
    super.initState();
    itemScrollController = ItemScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: widget.scrollController,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: 1110),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow],
        ),
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          itemScrollController: itemScrollController,
          itemCount: menuItems.length,
          itemBuilder: (BuildContext context, int index) {
            return buildMenuItem(index);
          },
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) {
    return InkWell(
      onTap: () {
        itemScrollController.scrollTo(
          index: index,
          duration: Duration(milliseconds: 300),
        );
      },
      child: Container(
        constraints: BoxConstraints(minWidth: 122),
        height: 100,
        child: Center(
          child: Text(
            menuItems[index],
            style: TextStyle(fontSize: 20, color: kTextColor),
          ),
        ),
      ),
    );
  }
}


