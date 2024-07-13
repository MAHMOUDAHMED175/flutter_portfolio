import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/certification_grid.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Certifications & ', title: 'License'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: CertificateGrid(
                    crossAxisCount: 3,
                    ratio: 1.2,
                  ),
                  extraLargeScreen:
                      CertificateGrid(crossAxisCount: 4, ratio: 1.3),
                  largeMobile: CertificateGrid(crossAxisCount: 1, ratio: 1.5),
                  mobile: CertificateGrid(crossAxisCount: 1, ratio: 1.1),
                  tablet: CertificateGrid(
                    ratio: 1.4,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
