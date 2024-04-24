import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.6,
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      child: Image.asset(
        "assets/images/person.png",
        scale: MediaQuery.of(context).size.width < 1000 ? 0.6 : 0.8,
      ),
    );
  }
}
