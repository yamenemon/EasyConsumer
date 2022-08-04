import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_consumer_flutter/global/widget/global_toggle_button.dart';
import 'package:easy_consumer_flutter/mvc/Login/controller/LoginController.dart';
import 'package:easy_consumer_flutter/mvc/Login/view/components/LoginScreenBottom.dart';
import 'package:easy_consumer_flutter/mvc/Login/view/components/dots_decorator.dart';
import 'package:easy_consumer_flutter/mvc/Login/view/components/dots_indicator.dart';
import 'package:easy_consumer_flutter/utils/extention.dart';
import 'package:easy_consumer_flutter/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

final getLoginProvider =
    ChangeNotifierProvider<LoginController>((ref) => LoginController());

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var sliderHeight = context.width * 0.85;

    return Scaffold(
      body: SafeArea(
        child: Consumer(builder: (context, ref, snapshot) {
          final controller = ref.watch(getLoginProvider);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GlobalToggleButton(
                              values: ["ENG", "বাংলা"],
                              onToggleCallback: (onToggleCallback) {},
                              initialPosition: true),
                        ],
                      ),
                    ),
                    CarouselSlider(
                      carouselController: controller.buttonCarouselController,
                      options: CarouselOptions(
                        height: sliderHeight,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: controller.activeIndex,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          controller.moveDots(index);
                        },
                      ),
                      items: controller.titleString.map(
                        (element) {
                          return Column(
                            children: [
                              SvgPicture.asset(
                                KAssetName.login_vector.imagePath,
                                height: 230.h,
                              ),
                              Text(
                                element,
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1.6),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                      ).toList(),
                    ),
                    DotsIndicator(
                      dotsCount: controller.titleString.length,
                      position: controller.activeIndex.toDouble(),
                      decorator: DotsDecorator(
                        color: Color(0xFFD0CFD2), // Inactive color
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              LoginScreenBottom()
            ],
          );
        }),
      ),
    );
  }
}
