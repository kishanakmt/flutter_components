import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    final token = box.read('token');
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offAllNamed(Routes.homeComponentScreen);
    });
    if (token.toString() != "null") {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Get.offAllNamed(Routes.homeComponentScreen);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Get.offAllNamed(Routes.homeComponentScreen);
      });
    }
  }
}
