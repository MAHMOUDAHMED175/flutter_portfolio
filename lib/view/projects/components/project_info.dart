import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_deatail.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import 'image_viewer.dart';

class ProjectStack extends StatelessWidget {
  const ProjectStack({super.key, required this.index, required this.crossAxisCount, required this.childAspectRatio});
  final int index;
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ImageViewer(context,projectList[index].image ,  crossAxisCount: crossAxisCount, childAspectRatio: childAspectRatio);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: ProjectDetail(index: index,),
      ),
    );
  }
}



