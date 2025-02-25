import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpnwy_app/core/helpers/app_images.dart';

class SelectedCountryWithIp extends StatelessWidget {
  const SelectedCountryWithIp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Color(0xff674FF7),
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            margin: EdgeInsets.only(left: 20.w),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.egypt),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(2, 4),
                ),
              ],
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Egypt",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "244.178.44.111",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            width: 34.w,
            height: 34.h,
            margin: EdgeInsets.only(right: 20.w),
            decoration: BoxDecoration(
              color: Color(0xff22156F),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.lightBlueAccent.withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14),
          ),
        ],
      ),
    );
  }
}
