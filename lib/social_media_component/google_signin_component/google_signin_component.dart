import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../routes/app_routes.dart';

class GoogleSigninComponent extends StatefulWidget {
  const GoogleSigninComponent({super.key});

  @override
  State<GoogleSigninComponent> createState() => _GoogleSigninComponentState();
}

class _GoogleSigninComponentState extends State<GoogleSigninComponent> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential?> _handleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        return await _auth.signInWithCredential(credential);
      }
    } catch (error) {
      print(error);
      return null;
    }
  }

  var name ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Sign In Google",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                UserCredential? userCredential = await _handleSignIn();
                if (userCredential != null) {
                  print("Signed in: ${userCredential.user?.displayName}");

                  setState(() {
                    name = userCredential.user?.displayName;
                  });

                } else {
                  print("Sign in failed");
                }
              },
              child: const Text("Google")),
          Text(name.toString()),
        ],
      ),
    );
  }
}
