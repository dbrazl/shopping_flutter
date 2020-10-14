import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          child: Icon(
            SimpleLineIcons.home,
          ),
        ),
        Tab(
          child: Icon(
            Feather.shopping_cart,
          ),
        ),
        Tab(
          child: Icon(
            Feather.user,
          ),
        ),
      ],
      labelColor: Theme.of(context).primaryColor,
      unselectedLabelColor: Color(0xff808080),
      indicatorPadding: EdgeInsets.all(5),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Theme.of(context).primaryColor,
    );
  }
}
