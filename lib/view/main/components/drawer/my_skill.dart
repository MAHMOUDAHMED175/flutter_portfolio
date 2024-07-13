import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.title, this.image});
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image!,
                height: 15,
                width: 15,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
        ],
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
            title: 'Dart', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            title: 'Firebase', image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(
            title: 'Sqlite', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            title: 'Responsive Design', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'Clean Architecture', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'provider', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'Restful api', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'graphql', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'hive', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'shared preferences', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'payment', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'firebase auth storage', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'firebase messaginh , firestore',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'localization', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'freezed', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'github', image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            title: 'ui ux', image: 'assets/icons/flutter.png'),
      ],
    );
  }
}
