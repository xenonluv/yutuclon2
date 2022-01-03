import 'package:get/get.dart';
import 'package:youtuclone2/src/components/youtu_bottom_shit.dart';

enum RouteName { HOME, Explore, Add, Subs, Library }

class Appcontroller extends GetxService{

  static Appcontroller get to => Get.find();
  RxInt currnetIndex = 0.obs;

  void changPageIndex(int index){

    if(RouteName.values[index] == RouteName.Add){
      _showbottomshit();
    }
    else{
      currnetIndex(index);
    }
  }

  void _showbottomshit(){
    Get.bottomSheet(youtubottomshit());
  }

}