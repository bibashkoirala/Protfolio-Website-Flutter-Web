
import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 600, minHeight: 400),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/Hover.png"),
        ),
      ),
      child: Container(
         margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              left: kDefaultPadding * 2,
              right: kDefaultPadding * 2,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 400) {
                    return Center(
                      child: Menu(scrollController: ScrollController(),),
                    );
                  } else {
                    return Align(
                      alignment: Alignment.bottomRight,
                      child: Menu(scrollController: ScrollController(),),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}
