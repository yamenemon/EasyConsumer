import 'package:easy_consumer_flutter/global/widget/global_appbar.dart';
import 'package:easy_consumer_flutter/global/widget/global_textformfield.dart';
import 'package:easy_consumer_flutter/utils/extention.dart';
import 'package:easy_consumer_flutter/utils/navigation_service.dart';
import 'package:easy_consumer_flutter/utils/styles/k_assets.dart';
import 'package:easy_consumer_flutter/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNumberInputScreen extends StatelessWidget {
  const MobileNumberInputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFEDEFF2),
        appBar: GlobalAppBar(
          title: "",
          backgroundColor: Colors.transparent,
        ),

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: ,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(KAssetName.easy_login_logo.imagePath),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Get started with Easy",
                      style: GoogleFonts.roboto(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    ),
                    Text("Enter your personal Number/Email",
                        style: GoogleFonts.roboto(
                            color: Color(0xFF63666A),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            height: 1.5)),
                    SizedBox(
                      height: 20.h,
                    ),
                    GlobalTextFormField(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: context.width * 0.7,
                      child: Text(
                        "By clicking “Proceed” you agree to Easy’s Terms & Conditions.",
                        style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    GestureDetector(
                      onTap: (() {
                        MobileNumberInputScreen().push(context);
                      }),
                      child: Container(
                        width: context.width,
                        height: 60.h,
                        color: KColor.accent.color,
                        child: Center(
                          child: Text(
                            "PROCEED",
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
