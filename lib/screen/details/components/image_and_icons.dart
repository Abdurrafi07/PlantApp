import 'package:flutter/material.dart';
import 'package:plantapp/constraints.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(child: Padding(padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding * 2.0,
            )))
          ],
        ),
      ),
    );
  }
}