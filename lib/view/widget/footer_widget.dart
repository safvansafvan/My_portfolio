import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_url.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.only(top: 200, bottom: 100),
      child: CustomAnimated(
        animationController: controller.animationController,
        animation: controller.animation,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muhammed Safvan • 2024',
                style: AppTheme.smallText,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "I'm always up for a chat ☕",
                  style: AppTheme.smallText,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Get in touch below or directly at  ',
                    style: AppTheme.smallText,
                  ),
                  GestureDetector(
                      onTap: () async {
                        await controller.redirectToWeb(ProjectURL.gmailURL);
                      },
                      child: Text('sajusajuptl@gmail.com',
                          style: AppTheme.blueSmallText)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    TextButton(
                      style: AppTheme.underLineButtonStyle,
                      onPressed: () {},
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.blue[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        style: AppTheme.underLineButtonStyle,
                        onPressed: () {
                          controller.redirectToWeb(ProjectURL.resumeDriveURL);
                        },
                        child: Text(
                          'Resume',
                          style: TextStyle(color: Colors.blue[500]),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await controller.redirectToWeb(ProjectURL.linkedinURL);
                      },
                      child: Image.asset('assets/icon/linkedin.png',
                          height: 20, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () async {
                          await controller.redirectToWeb(ProjectURL.githubURL);
                        },
                        child: Image.asset('assets/icon/github.png',
                            height: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
