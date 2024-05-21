import 'package:component/ratingbar_component/controller/ratingbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../routes/app_routes.dart';

class RatingBarScreen extends StatefulWidget {
  const RatingBarScreen({super.key});

  @override
  State<RatingBarScreen> createState() => _RatingBarScreenState();
}

class _RatingBarScreenState extends State<RatingBarScreen> {
  RatingBarController ratingBarController = Get.put(RatingBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Rating bar Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Column(
          children: [
            Center(child: ratingbarStar(context)),
            SizedBox(
              height: 10.h,
            ),
            Center(child: ratingbarSmileStar(context)),
            SizedBox(
              height: 10.h,
            ),
            chartRow(context, '2.5', 50),
            SizedBox(
              height: 10.h,
            ),
            percentageIndicator(context),
          ],
        ),
      ),
    );
  }

  Widget ratingbarStar(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  Widget ratingbarSmileStar(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Icon(
              Icons.sentiment_very_dissatisfied,
              color: Colors.red,
            );
          case 1:
            return const Icon(
              Icons.sentiment_dissatisfied,
              color: Colors.redAccent,
            );
          case 2:
            return const Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
          case 3:
            return const Icon(
              Icons.sentiment_satisfied,
              color: Colors.lightGreen,
            );
          case 4:
            return const Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.green,
            );
          default:
            return const Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
        }
      },
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  Widget chartRow(BuildContext context, String label, int pct) {
    return Row(
      children: [
        Text(
          label,
        ),
        const SizedBox(width: 8),
        const Icon(Icons.star, color: Colors.green),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
          child: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(''),
            ),
            Container(
              width: MediaQuery.of(context).size.width * (pct / 100) * 0.7,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Text(''),
            ),
          ]),
        ),
        Text(
          '$pct%',
        ),
      ],
    );
  }

  percentageIndicator(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width - 50,
        animation: true,
        lineHeight: 20.0,
        animationDuration: 2500,
        percent: ratingBarController.percentage,
        center: const Text("50%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.green,
      ),
    );
  }
}
