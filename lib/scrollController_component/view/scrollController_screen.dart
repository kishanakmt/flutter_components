import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../routes/app_routes.dart';

class ScrollControllerScreen extends StatefulWidget {
  const ScrollControllerScreen({super.key});

  @override
  State<ScrollControllerScreen> createState() => _ScrollControllerScreenState();
}

class _ScrollControllerScreenState extends State<ScrollControllerScreen> {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/photos";
  int _page = 1;
  final int _limit = 10;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;
  List _posts = [];

  void _firstLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });

    try {
      final res = await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"),);

      if (res.statusCode == 200) {
        setState(() {
          _posts = jsonDecode(res.body);
        });
        log('receivedData : ${jsonDecode(res.body)}');
      }
    } catch (e) {
      if (kDebugMode) {
        log('Something went wrong');
      }
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  void _loadMore() async {
    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false) {
      setState(() {
        _isLoadMoreRunning = true;
      });
      _page++;
      try {
        final res = await http.get(Uri.parse('$_baseUrl?_page=$_page&_limit=$_limit'),);

       // log('url : $_baseUrl?_page=$_page&_limit=$_limit');
        if (res.statusCode == 200) {
          final List fetchedPost = jsonDecode(res.body);
          if (fetchedPost.isNotEmpty) {
            setState(() {
              _posts.addAll(fetchedPost);
            });
          } else {
            setState(() {
              _hasNextPage = false;
            });
          }
        }
      } catch (e) {
        if (kDebugMode) {
          log('something went wrong');
        }
      }
      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }

  // the controller for listView
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _firstLoad();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(_loadMore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScrollController Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),

      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   title: Text(
      //     'Scroll Controller Demo',
      //     style: TextStyle(
      //       color: Colors.black.withOpacity(0.52),
      //       fontSize: 20,
      //     ),
      //   ),
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.transparent,
      //   ),
      // ),
      body: _isFirstLoadRunning
          ? Center(
        child: CircularProgressIndicator(
          color: Colors.orange.withOpacity(0.50),
        ),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _controller
                ..addListener(() async {
                  if (_controller.position.pixels >
                      _controller.position.maxScrollExtent) {
                    _loadMore();
                  }
                }),
              physics: const BouncingScrollPhysics(),
              itemCount: _posts.length,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.065),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 0.5,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID : ${_posts.elementAt(index)['id']}',
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      'AlbumID : ${_posts.elementAt(index)['albumId']}',
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      'Title : ${_posts.elementAt(index)['title']}',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Image.network(
                            _posts.elementAt(index)['url'],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Image.network(
                            _posts.elementAt(index)['thumbnailUrl'],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // when the _loadMore running
          if (_isLoadMoreRunning == true)
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.amberAccent,
                  strokeWidth: 3,
                  backgroundColor: Colors.transparent,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ),

          if (_hasNextPage == false)
            SafeArea(
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                color: Colors.orangeAccent,
                child: const Text('you get all'),
              ),
            )
        ],
      ),
    );
  }
}



