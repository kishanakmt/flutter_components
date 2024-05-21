import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class AnimatedTextView extends StatefulWidget {
  const AnimatedTextView({super.key});

  @override
  State<AnimatedTextView> createState() => _AnimatedTextViewState();
}

class _AnimatedTextViewState extends State<AnimatedTextView> {

  List<Color> colorizeColors = [
    Colors.black,
    Colors.blue,
    Colors.orange,
    Colors.red,
  ];

  TextStyle colorizeTextStyle = const TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated TextView Screen",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueGrey,

          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.offAllNamed(Routes.homeComponentScreen,
              );
            },
          ),),
        body: Center(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          //------------------------------- text one by one up  ----------------------------------

                          SizedBox(
                            height: 60,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                color: Colors.brown,
                                fontSize: 40,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  WavyAnimatedText('Hello World!'),
                                  WavyAnimatedText('Flutter has grown!'),
                                ],
                              ),
                            ),
                          ),

                          //------------------------------- text fill animation  ----------------------------------

                          SizedBox(
                            height: 90,
                            child: TextLiquidFill(
                              boxHeight: 90.0,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                              boxBackgroundColor: Colors.black,
                              text: 'Flutter',
                              waveColor: Colors.black12,
                            ),
                          ),


                          //------------------------------- text bling animation  ----------------------------------

                          SizedBox(
                            height: 55,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                                fontSize: 35,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  FadeAnimatedText(
                                    'Flutter is cool!',
                                  ),
                                  FadeAnimatedText(
                                    'Flutter is amazing!',
                                  ),
                                  FadeAnimatedText(
                                    'Flutter is spectacular!',
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //------------------------------- text color double animation  ----------------------------------

                          SizedBox(
                            height: 70,
                            child: AnimatedTextKit(
                              repeatForever: true,
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText(
                                  'Alibaba',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                                ColorizeAnimatedText(
                                  'BMW',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                                ColorizeAnimatedText(
                                  'Google Ads',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                            ),
                          ),

                          //------------------------------- blink text animation  ----------------------------------

                          SizedBox(
                            height: 70,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w200,
                                fontSize: 50,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  ScaleAnimatedText('Build apps'),
                                  ScaleAnimatedText('Android'),
                                  ScaleAnimatedText('IOS'),
                                  ScaleAnimatedText('Web'),
                                ],
                              ),
                            ),
                          ),

                          //------------------------------- center to move text animation  ----------------------------------


                          SizedBox(
                            height: 65,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 45,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  TyperAnimatedText('Learn from docs,'),
                                  TyperAnimatedText('courses, youtube'),
                                  TyperAnimatedText('and many more.'),
                                ],
                              ),
                            ),
                          ),

                          //------------------------------- last text up to down go animation  ----------------------------------

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Flutter apps are ',
                                style: TextStyle(color: Colors.green, fontSize: 30),
                              ),
                              SizedBox(
                                height: 70,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 35,
                                  ),
                                  child: AnimatedTextKit(
                                    repeatForever: true,
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      RotateAnimatedText('fast'),
                                      RotateAnimatedText('smooth'),
                                      RotateAnimatedText('beautiful'),
                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ),

                          //------------------------------- 2 time blink text animation  ----------------------------------

                          SizedBox(
                            height: 70,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 50,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  FlickerAnimatedText('Android Studio'),
                                  FlickerAnimatedText('VS Code'),
                                  FlickerAnimatedText('IntelliJ IDEA'),
                                ],
                              ),
                            ),
                          ),
                          //------------------------------- left to right  text animation  ----------------------------------

                          SizedBox(
                            height: 70,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                  color: Colors.purple,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  TypewriterAnimatedText('Keep learning!'),
                                  TypewriterAnimatedText('Keep building!'),
                                  TypewriterAnimatedText('Keep fluttering!'),
                                ],
                              ),
                            ),
                          ),
                        ])))));
  }
}
