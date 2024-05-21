import 'package:component/animated_button-component/view/animated_button_component.dart';
import 'package:component/bottomNavigation_component/view/bottomnavigation_screen.dart';
import 'package:component/bottomsheet_component/view/bottomsheet_screen.dart';
import 'package:component/button_component/view/button_screen.dart';
import 'package:component/card_component/view/card_screen.dart';
import 'package:component/checkbox_component/view/checkboxScreen.dart';
import 'package:component/dialog_component/view/dialog_component.dart';
import 'package:component/drawer_component/view/drawer.dart';
import 'package:component/dropdownbutton_component/view/dropdown_screen.dart';
import 'package:component/gridview_component/view/gridview_screen.dart';
import 'package:component/home_component/view/home_screen.dart';
import 'package:component/listview_component/view/listview_component.dart';
import 'package:component/onBoarding_component/view/landingpage_screen.dart';
import 'package:component/pulltorefresh_component/view/pulltorefreshScreen.dart';
import 'package:component/radio_component/view/radiobutton_component.dart';
import 'package:component/social_media_component/facebook_component/facebook_component.dart';
import 'package:component/social_media_component/google_signin_component/google_signin_component.dart';
import 'package:component/scrollController_component/view/scrollController_screen.dart';
import 'package:component/switch_component/view/switch_screen.dart';
import 'package:component/tabBar_component/view/tabbar_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../animated_text_component/view/animated_text_component.dart';
import '../appbarAndbackButton_component/view/appbar_screen.dart';
import '../dateandtime_component/view/dateandtime_screen.dart';
import '../formvalidation_component/view/formValidationController_screen.dart';
import '../imageview_component/view/imageview_component.dart';
import '../ratingbar_component/view/ratingbar_screen.dart';
import '../social_media_component/ios_component/view/apple_sign_ios.dart';
import '../splash_module/view/splash_screen.dart';
import '../textfeild_component/view/textfield_screen.dart';
import '../textview_module/view/textview_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;
  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => const SplashScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.cardComponent,
        page: () => const CardScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.switchComponent,
        page: () => const SwitchScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.textViewComponent,
        page: () => const TextViewScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.textFieldComponent,
        page: () => const TextFieldScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.buttonComponent,
        page: () => const ButtonScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.dialogComponent,
        page: () => const DialogComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.imageViewComponent,
        page: () => const ImageviewComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.dateAndTimeComponent,
        page: () => const DateAndTimeScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.ratingbarComponent,
        page: () => const RatingBarScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.radioButtonComponent,
        page: () => const RadioButtonComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.gridViewComponent,
        page: () => const GridViewScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.bottomSheetComponent,
        page: () => const BottomSheetScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.bottomNavigationComponent,
        page: () => const BottomNavigationScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.drawer,
        page: () => const DrawerScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.listviewBuilderComponent,
        page: () => const ListviewComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.appleSignInIosComponent,
        page: () => const AppleSignInIos(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.googleSignInComponentComponent,
        page: () => const GoogleSigninComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.scrollControllerComponent,
        page: () => const ScrollControllerScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.tabBarComponent,
        page: () => const TabBarScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.formValidationComponentScreen,
        page: () => const FromValidationControllerScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.pullToRefreshComponentScreen,
        page: () => const PullToRefreshScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.checkBoxControllerComponentScreen,
        page: () => const CheckBoxScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.onBoardingControllerComponentScreen,
        page: () => LandingPage(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.appBarComponentScreen,
        page: () => const AppBarScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.dropdownComponentScreen,
        page: () => const DropDownScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.facebookComponentScreen,
        page: () => const FacebookComponent(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.animatedButtonComponentScreen,
        page: () => const AnimatedButton(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.animatedTextComponentScreen,
        page: () => const AnimatedTextView(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.homeComponentScreen,
        page: () => const HomeScreen(),
        transition: Transition.native),
  ];
}
