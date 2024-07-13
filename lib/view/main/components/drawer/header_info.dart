import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText(
      {super.key, required this.title, required this.url, required this.icon});
  final String title;
  final String icon;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse(url));
            },
            child: icon == ''
                ? const Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 17,
                  )
                : SvgPicture.asset(
                    icon,
                    color: Colors.white,
                    height: 15,
                    width: 15,
                  ),
          )
        ],
      ),
    );
  }
}
