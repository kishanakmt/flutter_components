import 'package:component/routes/app_pages.dart';
import 'package:component/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {

  // await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Firebase.initializeApp();
  runApp(MyApp());

  // final appleSignInAvailable = await AppleSignInAvailable.check();
  // runApp(Provider<AppleSignInAvailable>.value(

  //   value: appleSignInAvailable,
  //   child: MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(),
        child: ScreenUtilInit(
          designSize: const Size(360.0, 640.0),
          builder: (BuildContext context, Widget? child) {
            return GetMaterialApp(
              color: Colors.transparent,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.homeComponentScreen,
              getPages: AppPages.routes,
            );
          },
        ));

  }
}
