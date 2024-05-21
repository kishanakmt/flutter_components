import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../comman/ThreeDButton.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final double _maxSize = 50;
  final double _minSize = 30;

  bool _showText = true;
  bool _isButtonDisabled = false;

  static const double _shadowHeight = 4;
  double _position = 4;

  @override
  void initState() {
    super.initState();

    //--------------------- press me -------------------------------------------

    // _controller = AnimationController(
    //   duration: const Duration(milliseconds: 100),
    //   vsync: this, // Assuming this function is within a StatefulWidget class
    // );

    //--------------------- check your pulse  -------------------------------------------

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
      setState(() {});
    });

    _controller.repeat(reverse: true);
  }

  void animated() {}

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  double _getSize() {
    double t = _controller.value;
    return _minSize + (1 - t) * (_maxSize - _minSize);
  }

  @override
  Widget build(BuildContext context) {
    const double _height = 64 - _shadowHeight;

    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Button Screen",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueGrey,

          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.offAllNamed(Routes.homeComponentScreen,
              );
            },
          ),),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //------------------------------- onPress color change ----------------------------------
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.red.withOpacity(0.8);
                      }
                      return Colors.transparent;
                    },
                  ),
                ),
                child: const Text('Press me'),
              ),

              //------------------------------- onPress Shrink button ----------------------------------

              Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      _controller.forward();
                      Future.delayed(const Duration(milliseconds: 200), () {
                        _controller.reverse();
                      });
                      print('Shrink');
                    },
                    child: ScaleTransition(
                      scale: Tween<double>(
                        begin: 1.0,
                        end: 0.7,
                      ).animate(_controller),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          disabledBackgroundColor: Colors.blue,
                          disabledForegroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        child: const Text('Press me'),
                      ),
                    ),
                  )),

              //------------------------------- onPress blink heart button ----------------------------------

              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite, size: _getSize()),
                        label: const Text('Check Your Pulse'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //-------------------------------  Button Switch Label with Icon Animation ----------------------------------

              GestureDetector(
                onTap: () {
                  setState(() {
                    _showText = !_showText;
                  });
                },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    child: _showText
                        ? const Text(
                      'Button',
                      key: ValueKey('text'),
                    )
                        : const Icon(
                      Icons.check,
                      key: ValueKey('icon'),
                    ),
                  ),
                ),
              ),

              //-------------------------------------------- Disable Flutter Button after tap -----------------------------------
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: _isButtonDisabled
                          ? null
                          : () {
                        setState(() {
                          _isButtonDisabled = true;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: _isButtonDisabled
                            ? const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )
                            : const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          child: _isButtonDisabled
                              ? Icon(Icons.check, key: UniqueKey())
                              : Text('Button', key: UniqueKey()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //-------------------------------------------- Disable Flutter Button 3d effect -----------------------------------

              ThreeDButton(
                text: 'Press Me',
                onPressed: () {
                  print('Button Pressed');
                },
              ),
              const SizedBox(
                height: 20,
              ),

              //--------------------------------------------  3d effect in button click -----------------------------------

              Center(
                child: GestureDetector(
                  onTapUp: (_) {
                    setState(() {
                      _position = 4;
                    });
                  },
                  onTapDown: (_) {
                    setState(() {
                      _position = 0;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      _position = 4;
                    });
                  },
                  child: Container(
                    height: _height + _shadowHeight,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: _height,
                            width: 200,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          curve: Curves.easeIn,
                          bottom: _position,
                          duration: const Duration(milliseconds: 70),
                          child: Container(
                            height: _height,
                            width: 200,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Click me!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ]));
  }
}
