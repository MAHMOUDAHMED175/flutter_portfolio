import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', icon: '01125345129',url: 'https://wa.me/+201125345129',),
        AreaInfoText(title: 'Email', icon: '',url: 'https://eng.mahmoudahmed176@gmail.com',),
        AreaInfoText(title: 'LinkedIn', icon: 'assets/icons/linkedin.svg',url: 'https://www.linkedin.com/in/mahmoud-ahmed-2101a4225',),
        AreaInfoText(title: 'Github', icon: 'assets/icons/github.svg',url: 'https://github.com/MAHMOUDAHMED175',),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
