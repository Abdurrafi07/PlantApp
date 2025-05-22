import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constraints.dart';
import 'package:plantapp/screen/details/components/icon_card.dart';

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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 2.0,
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        icon: SvgPicture.asset("assets/icon/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const IconCard(icon: "assets/icons/icon_2.svg"),
                    const IconCard(icon: "assets/icons/icon_3.svg"),
                    const IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
