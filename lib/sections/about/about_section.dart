import 'dart:js';

import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAboutTextSection(context),
              const SizedBox(height: kDefaultPadding * 2),
              _buildExperienceSection(),
              const SizedBox(height: kDefaultPadding * 2),
              _buildButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutTextSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
          Flexible(child: AboutTextWithSign()),
        const SizedBox(width: kDefaultPadding),
        Flexible(
          child: AboutSectionText(
            text:
                "We are recognized as the best in the field of web design and development. Our team of expert and passionate developers are committed to providing our clients with the best possible service.",
          ),
        ),
       
      ],
    );
  }

  Widget _buildExperienceSection() {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExperienceCard(numOfExp: "03"),
              const SizedBox(width: kDefaultPadding),
              Flexible(
                child: AboutSectionText(
                  text: "Trusted by Rural Municiplities : Aurahi , Chulachuli , Katahari etc.\n People influenced : 50,000+ \n Projects completed : 18+",
                ),
              ),
            ],
          );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: MyOutlineButton(
            imageSrc: "assets/images/hand.png",
            text: "Collabration !",
            press: () {},
          ),
        ),
        const SizedBox(width: kDefaultPadding * 1.5),
        Expanded(
          flex: 3,
          child: DefaultButton(
            imageSrc: "assets/images/download.png",
            text: "Download CV",
            press: () {},
          ),
        ),
      ],
    );
  }
}

class ResponsiveWidget {
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
}




