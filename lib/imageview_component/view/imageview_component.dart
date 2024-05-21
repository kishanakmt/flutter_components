import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../comman/assest_images.dart';
import '../../routes/app_routes.dart';

class ImageviewComponent extends StatefulWidget {
  const ImageviewComponent({super.key});

  @override
  State<ImageviewComponent> createState() => _ImageviewComponentState();
}

class _ImageviewComponentState extends State<ImageviewComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imageview Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),

      backgroundColor: Colors.grey,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AssetsImages.splashBackground,
                  scale: 3.5,
                  //  color: Colors.brown,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        'https://www.tutorialkart.com/img/hummingbird.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: Image.network(
                      'https://www.tutorialkart.com/img/hummingbird.png'),
                ),
            
                // Container(
                //   width: 200,
                //
                //   child: Image.network(
                //
                //       'https://www.tutorialkart.com/img/hummingbird.png'),
                // ),
            
                Container(
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            AssetsImages.splashBackground,
                          ),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black54, BlendMode.darken))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://googleflutter.com/sample_image.jpg'),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
