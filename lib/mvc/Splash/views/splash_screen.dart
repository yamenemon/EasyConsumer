import 'package:easy_consumer_flutter/mvc/Login/view/login_screen.dart';
import 'package:easy_consumer_flutter/mvc/Splash/controller/SplashController.dart';
import 'package:easy_consumer_flutter/utils/extention.dart';
import 'package:easy_consumer_flutter/utils/navigation_service.dart';
import 'package:easy_consumer_flutter/utils/styles/k_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

final getSplashProvider =
    ChangeNotifierProvider<SplashController>((ref) => SplashController());

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF176EFF),
      bottomNavigationBar: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(bottom: 28.w),
          child: LinearPercentIndicator(
            barRadius: Radius.circular(30.w),
            alignment: MainAxisAlignment.center,
            backgroundColor: Colors.white.withOpacity(0.2),
            width: context.width * 0.7,
            animation: true,
            lineHeight: 4.h,
            percent: 1,
            progressColor: Colors.white,
            animationDuration: 5000,
            onAnimationEnd: () {
              LoginScreen().push(context);
            },
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              KAssetName.easy_splash_logo.imagePath,
              height: 72.h,
              width: 165.w,
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final controller = ref.watch(getSplashProvider);
              return Padding(
                padding: EdgeInsets.all(10.0.w),
                child: Text(
                  "VERSION : ${controller.version}",
                  style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.5),
                      height: 3.h,
                      letterSpacing: 1.w),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
