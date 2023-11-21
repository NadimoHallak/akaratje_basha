import 'package:akar_app/constant/constant_color.dart';
import 'package:akar_app/constant/custmization.dart';
import 'package:akar_app/constant/onbording.dart';
import 'package:akar_app/controller/onbording/onbording_controller.dart';
import 'package:akar_app/view/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<OnbordingController>(
          init: OnbordingController(),
          builder: (controller) {
            return ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 5.0.wp),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      controller.skipToLastPage(onbordingList.length - 1);
                    },
                    child: Text(
                      'تخطي',
                      style: TextStyle(
                        color: MyColor.orange,
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.0.wp,
                  ),
                  child: Container(
                    height: 500,
                    child: PageView.builder(
                      controller: controller.pageViewCtrl,
                      onPageChanged: (value) {
                        controller.changeIndex(value);
                      },
                      itemCount: onbordingList.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 12.0.wp, bottom: 10.0.wp),
                            child: SizedBox(
                              child: Image.asset(
                                onbordingList[index].iamge,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              onbordingList[index].title,
                              style: TextStyle(
                                fontSize: 25.0.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              child: Text(
                                onbordingList[index].discreption,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0.sp,
                                  color: MyColor.liteGray,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onbordingList.length,
                      (index) => Padding(
                        padding:
                            const EdgeInsets.only(right: 5, top: 5, left: 5),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          width: index == controller.currentIndex ? 15 : 10,
                          height: index == controller.currentIndex ? 15 : 10,
                          decoration: BoxDecoration(
                            color: index == controller.currentIndex
                                ? MyColor.orange
                                : MyColor.liteGray,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 10.0.wp,
                    left: 10.0.wp,
                    top: 15.0.wp,
                  ),
                  child: Mybutton(
                    onTap: () {
                      controller.nextPage();
                    },
                    text: controller.currentIndex == onbordingList.length - 1
                        ? 'لنبدأ'
                        : 'التالي',
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
