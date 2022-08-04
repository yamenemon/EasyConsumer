import 'package:easy_consumer_flutter/mvc/Registration/views/mobile_num_input_screen.dart';
import 'package:easy_consumer_flutter/utils/extention.dart';
import 'package:easy_consumer_flutter/utils/navigation_service.dart';
import 'package:easy_consumer_flutter/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenBottom extends StatelessWidget {
  const LoginScreenBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Get Started!",
              style: GoogleFonts.roboto(
                  color: Color(0xFF787888),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal,
                  height: 1.6),
            ),
            GestureDetector(
              onTap: (() {
                MobileNumberInputScreen().push(context);
              }),
              child: Container(
                width: context.width * 0.9,
                height: 50.h,
                decoration: BoxDecoration(
                  color: KColor.accent.color,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Enter Phone number/Email",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              width: context.width * 0.9,
              height: 20.h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  "Or connect with",
                  style: GoogleFonts.roboto(
                      color: Color(0xFF787888),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: context.width * 0.6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    KAssetName.apple.imagePath,
                  ),
                  SvgPicture.asset(
                    KAssetName.facebook.imagePath,
                  ),
                  SvgPicture.asset(
                    KAssetName.google.imagePath,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: context.width * 0.6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Terms of service",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF787888),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        height: 1.2),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "|",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF787888),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        height: 1.2),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Privacy policy",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF787888),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        height: 1.2),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
