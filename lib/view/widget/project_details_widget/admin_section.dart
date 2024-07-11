import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/view/widget/project_details_widget/scroll_image.dart';

class AdminWidget extends StatelessWidget {
  const AdminWidget({super.key, required this.projectDetails});
  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: CustomAnimated(
        animation: controller.animation,
        animationController: controller.animationController,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projectDetails['admin']['title'],
                      style: AppTheme.titleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(projectDetails['admin']['subtitle'],
                          style: AppTheme.subtitleStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: projectDetails['admin']['features'].length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              '-> ${projectDetails['admin']['features'][index]}',
                              style: AppTheme.subtitleStyle,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ImageViewWidget(
                images: projectDetails['admin']['images'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}