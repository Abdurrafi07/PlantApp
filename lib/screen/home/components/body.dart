import 'package:flutter/material.dart';
import 'package:plantapp/constraints.dart';
import 'package:plantapp/screen/home/components/featured_plants.dart';
import 'package:plantapp/screen/home/components/header_with_searchbox.dart';
import 'package:plantapp/screen/home/components/recomend_plants.dart';
import 'package:plantapp/screen/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchbox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: _doNothing),
          RecomendPlants(),
          TitleWithMoreBtn(title: "Feature Plants", press: _doNothing),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }

  static void _doNothing() {}
}
