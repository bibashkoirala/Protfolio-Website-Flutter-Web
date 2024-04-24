import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.6),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.red),
              ),
              Text(
                "Codespec \nSolutions Pvt. Ltd.",
                style: MediaQuery.of(context).size.width > 700
                    ? TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        height: 1.5,
                      )
                    : TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        height: 1.5,
                      ),
              ),
              Text(
                " For web and mobile app development \n Collabration with governments, startups, and corporates",
                style: MediaQuery.of(context).size.width > 700
                    ? TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.5,
                      )
                    : TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.5,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
