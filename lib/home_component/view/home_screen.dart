import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../button_component/comman/button_comman_widget.dart';
import '../../routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueGrey,

        //     leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Colors.white),
        // onPressed: () => Navigator.of(context).pop(),
        // ),),
        //
        //   appBar:  AppBar(
        //     backgroundColor: Colors.blueGrey,
        //       title: Center(child: Text("Hello Appbar")),
        //       automaticallyImplyLeading: true
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                splashComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                buttonComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                animatedButtonComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                textViewComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                animatedTextViewComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                animatedTextViewComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                editBoxComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                radioButtonComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                listviewBuilderComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                scrollControllerComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                pullToRefreshComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                checkBoxControllerComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                appBarComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                dropdownComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                dialogComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                imageViewComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                tabBarComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                drawerComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                bottomNavigationComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                bottomSheetComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                gridViewComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                googleSignInComponentComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                facebookComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                appleSignInIosComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ratingbarComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                dateAndTimeComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                switchComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                cardComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                onBoardingControllerComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
                formValidationComponentWidget(),
                const Divider(
                  height: 5,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

 Widget splashComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.splash);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Splash Screen",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.buttonComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Button Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget animatedButtonComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.animatedButtonComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Animated Button Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget textViewComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.textViewComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "TextView Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget animatedTextViewComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.animatedTextComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Animated Text Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget editBoxComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.textFieldComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "EditBox Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget radioButtonComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.radioButtonComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Radio Button Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget listviewBuilderComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.listviewBuilderComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Listview Builder Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget scrollControllerComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.scrollControllerComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Scroll Controller Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget pullToRefreshComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.pullToRefreshComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Pull to refers Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget checkBoxControllerComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.checkBoxControllerComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "check box Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget appBarComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.appBarComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Appbar Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget dropdownComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.dropdownComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "DropDown Button Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget dialogComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.dialogComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Dialog Box Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageViewComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.imageViewComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Imageview Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget tabBarComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.tabBarComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Tabview Component Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.drawer);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Navigation Bar(Drawer) ",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.bottomNavigationComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Bottom Navigation Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheetComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.bottomSheetComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Bottom Sheet Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget gridViewComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.gridViewComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "GridView.Builder Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget googleSignInComponentComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.googleSignInComponentComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sign In With Google",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget facebookComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.facebookComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sign In With Facebook",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget appleSignInIosComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.appleSignInIosComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sign In With Apple",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget ratingbarComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.ratingbarComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Rating Bar Slider",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget dateAndTimeComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.dateAndTimeComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Date & Time Picker",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget switchComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.switchComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Switch Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.cardComponent);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "CardView Component",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget onBoardingControllerComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.onBoardingControllerComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "OnBoarding Page /(Pager)",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget formValidationComponentWidget() {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.formValidationComponentScreen);
      },
      child: Container(
        height: 40,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Form Validation",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
