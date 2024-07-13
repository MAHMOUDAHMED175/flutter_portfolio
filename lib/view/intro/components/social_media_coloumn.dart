import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.linkedin.com/in/mahmoud-ahmed-2101a4225'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://github.com/MAHMOUDAHMED175')),
        ),
        Center(
          child: IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://eng.mahmoudahmed176@gmail.com'));
            },
            icon: const Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
      ],
    );
  }
}
