import 'package:easy_consumer_flutter/utils/styles/k_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalToggleButton extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;
  bool initialPosition;

  GlobalToggleButton({
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFFe2e5ea),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
    required this.initialPosition,
  });

  @override
  _GlobalToggleButtonState createState() => _GlobalToggleButtonState();
}

class _GlobalToggleButtonState extends State<GlobalToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 50.h,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              widget.initialPosition = !widget.initialPosition;
              var index = 0;
              if (!widget.initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child: Container(
              height: 35.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.w),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.values.length,
                  (index) => Text(
                    widget.values[index],
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 13.sp,
                        color: const Color(0xff7a7f88)),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment: widget.initialPosition
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Container(
                width: 50.h,
                height: 25.h,
                margin: EdgeInsets.only(
                  bottom: 15.h,
                ),
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: KColor.primary.color,
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0, 1),
                        blurRadius: 2.w,
                        spreadRadius: 0)
                  ],
                ),
                child: Text(
                  widget.initialPosition ? widget.values[0] : widget.values[1],
                  style: TextStyle(
                      color: KColor.white.color,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
