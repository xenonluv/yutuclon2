import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtuclone2/src/controller/app_controller.dart';
import 'package:youtuclone2/src/pages/explore.dart';
import 'package:youtuclone2/src/pages/home.dart';
import 'package:youtuclone2/src/pages/library.dart';
import 'package:youtuclone2/src/pages/subscribe.dart';

class App extends GetView<Appcontroller> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Obx(() {
       switch(RouteName.values[controller.currnetIndex.value]) {
         case RouteName.HOME:
           return home();
           break;
         case RouteName.Explore:
         // TODO: Handle this case.
           return explore();
           break;
         case RouteName.Add:
         // TODO: Handle this case.
           break;
         case RouteName.Subs:
           return Subscribe();
         // TODO: Handle this case.
           break;
         case RouteName.Library:
         // TODO: Handle this case.
           return Library();
           break;
       }
       return Container();
     }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currnetIndex.value,
        showSelectedLabels: true,
        onTap: controller.changPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
            activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/icons/compass_off.svg",
            width: 22,),
            activeIcon: SvgPicture.asset("assets/svg/icons/compass_on.svg",
            width: 22,),
            label: "탐색",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset("assets/svg/icons/plus.svg",
                width: 35,),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/icons/subs_off.svg"),
            activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg"),
            label: "구독",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/icons/library_off.svg"),
            activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"),
            label: "보관함",
          ),
        ],
      ),
  ),
      );
  }
}
