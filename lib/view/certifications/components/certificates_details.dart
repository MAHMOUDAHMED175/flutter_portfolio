import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/image_viewer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';

class CertificateStack extends StatelessWidget {
  const CertificateStack(
      {super.key,
      required this.index,
      required this.crossAxisCount,
      required this.childAspectRatio});
  final int index;
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (certificateList[index].image[0] != '') {
          ImageViewer(context, certificateList[index].image,
              crossAxisCount: crossAxisCount,
              childAspectRatio: childAspectRatio);
        }
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                certificateList[index].name,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    certificateList[index].organization,
                    maxLines: 2,
                    style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    certificateList[index].date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text.rich(
                maxLines: 1,
                TextSpan(
                    text: 'Skills : ',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: certificateList[index].skills,
                        style: const TextStyle(
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis),
                      )
                    ]),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              if (certificateList[index].image[0] != '')
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            offset: Offset(0, -1),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.red,
                            offset: Offset(0, 1),
                            blurRadius: 5),
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Credentials',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        CupertinoIcons.arrow_turn_up_right,
                        color: Colors.white,
                        size: 10,
                      )
                    ],
                  ),
                ),
            ],
          )),
    );
  }
}
