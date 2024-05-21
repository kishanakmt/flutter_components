import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../routes/app_routes.dart';
import '../comman/auth_service.dart';

class AppleSignInIos extends StatefulWidget {
  const AppleSignInIos({super.key});

  @override
  State<AppleSignInIos> createState() => _AppleSignInIosState();
}

class _AppleSignInIosState extends State<AppleSignInIos> {


  Future<void> _handleSignInWithApple() async {
    print("Before Apple Sign-In");

    try {
      final  result = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      print("Apple Sign-In Success: ${result}");

      // Use the credential for further operations, e.g., authenticate with your backend
    } catch (error) {
      print("Apple Sign-In Error: $error");
      // Handle sign-in errors
    }

    print("After Apple Sign-In");
  }

  Future<void> _signInWithApple(BuildContext context) async {
    try {
      final authService = Provider.of<AuthService>(context, listen: false);
      final user = await authService.signInWithApple();
      print('uid: ${user.uid}');
    } catch (e) {
      // TODO: Show alert here
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final appleSignInAvailable =
    // Provider.of<AppleSignInAvailable>(context, listen: false);

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Sign In Apple",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
              signInWithAppleKishan(context: context);
            }, child: Text("Apple Auth")),

            SignInButton(
                Buttons.Apple,

                // style: ButtonStyle.black,
                // type: ButtonType.signIn,
                  onPressed: ()  {

                  //appleSign();
                 //   signInWithApple();
                    // appleSign();
                    //signInWithApple();
                  }
              ),
          ],),
      ),
    );
  }

  Future<void> signInWithApple()async {
    log("result  email===>");
    final result = await SignInWithApple.getAppleIDCredential(
      scopes: [AppleIDAuthorizationScopes.email,AppleIDAuthorizationScopes.fullName,],
    );
    log("result  email===>"+result.toString());

    final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
    final authCredential = oAuthProvider.credential(
      idToken: result.identityToken,
      accessToken: result.authorizationCode,
    );

    log("auth id  cred===>"+authCredential.idToken.toString());
    log("auth access  cred===>"+authCredential.accessToken.toString());

    UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(authCredential);

    User? user = authResult.user;
    var email=user!.email.toString();
    log("auth access  email===>"+email.toString());
  }

  Future<void> appleSign() async {
    try {
      print('User ID: ');

      final result = await SignInWithApple.getAppleIDCredential(

        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // Handle successful sign-in
      print('User ID: ${result}');
      print('Email: ${result.email}');
      print('Given Name: ${result.givenName}');
      print('Family Name: ${result.familyName}');
    } catch (error) {
      if (error is SignInWithAppleAuthorizationException) {
        // Handle specific error codes
        if (error.code == AuthorizationErrorCode.canceled) {
          print('Apple Sign In canceled by the user');
        } else if (error.code == AuthorizationErrorCode.unknown) {
          print('Unknown Apple Sign In error');
        } else {
          print('Error during Apple Sign In: ${error.toString()}');
        }
      } else {
        // Handle other errors
        print('Error during Apple Sign In: ${error.toString()}');
      }
    }
}


  Future<void> signInWithAppleKishan(
      {required BuildContext context}) async {
    try {




      final result = await SignInWithApple.getAppleIDCredential(
        scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
      );

      /*  final appleProvider = AppleAuthProvider();
      appleProvider.addScope('email');



      UserCredential authResult = await FirebaseAuth.instance.signInWithProvider(appleProvider);

      log("Applenckjsdc email===>"+authResult.user!.email.toString());*/

      final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
      final authCredential = oAuthProvider.credential(
        idToken: result.identityToken,
        accessToken: result.authorizationCode,
      );

      log("auth id  cred===>"+authCredential.idToken.toString());
      log("auth access  cred===>"+authCredential.accessToken.toString());



      UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(authCredential);

      User? user = authResult.user;
      var email=user!.email.toString();
      String? givenName = user.displayName;
      log("Apple email===>"+email);
     /* if (email != "null") {
        socialLoginController.socialLoginBlocMethod(
            context: context,
            userEmail: email,
            userFullName:  givenName==null?"":givenName,
            userSocialToken: result.userIdentifier??"",
            userSocialType: socialType,
            setProgressBar: () {
              AppDialogs.progressAlertDialog(context: context);
            }
        );
      }else{
        FlushBar().showFlushBar(context, AppStrings.EMAIL_EMPTY_SIGNUP);


      }
*/


    } catch (error) {
      print(error.toString());
      //AppDialogs.showToast(message: error.toString());
    }
  }

}


