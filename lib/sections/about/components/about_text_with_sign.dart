import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "About \nOur story",
            style: MediaQuery.of(context).size.width > 600
                ? Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 80)
                : Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          SizedBox(height: kDefaultPadding * 2),
           Image.asset("assets/images/sign.png")
        ],
      ),
    );
  }
}
