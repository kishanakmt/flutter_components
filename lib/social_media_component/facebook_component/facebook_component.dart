import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class FacebookComponent extends StatefulWidget {
  const FacebookComponent({super.key});

  @override
  State<FacebookComponent> createState() => _FacebookComponentState();
}

class _FacebookComponentState extends State<FacebookComponent> {
  Map<String, dynamic>? _userData;
  AccessToken? _accessToken;
  bool _checking = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkIfisLoggedIn();
  }

  _checkIfisLoggedIn() async {
    final accessToken = await FacebookAuth.instance.accessToken;

    setState(() {
      _checking = false;
    });

    if (accessToken != null) {
      print(accessToken.toJson());
      final userData = await FacebookAuth.instance.getUserData();
      _accessToken = accessToken;
      setState(() {
        _userData = userData;
      });
    } else {
      _login();
    }
  }

  _login() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;

      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
    } else {
      print(result.status);
      print(result.message);
    }
    setState(() {
      _checking = false;
    });
  }

  _logout() async {
    await FacebookAuth.instance.logOut();
    _accessToken = null;
    _userData = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          " Sign In FaceBook",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(
              Routes.homeComponentScreen,
            );
          },
        ),
      ),
      body: _checking
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _userData != null
                    ? Text('name: ${_userData!['name']}')
                    : Container(),
                _userData != null
                    ? Text('email: ${_userData!['email']}')
                    : Container(),
                // _userData != null
                //     ? Container(
                //   child: Image.network(
                //       _userData!['picture']['data']['url']),
                // )
                //     : Container(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _userData != null ? _logout : _login,
                    child: Text(
                      _userData != null ? 'LOGOUT' : 'Login with Facebook',
                      style: const TextStyle(color: Colors.deepPurple),
                    ))
              ],
            )),
    );
  }
}
