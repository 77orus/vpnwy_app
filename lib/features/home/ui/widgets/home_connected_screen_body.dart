import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpnwy_app/core/helpers/app_images.dart';
import 'package:vpnwy_app/features/home/ui/widgets/connecting_info_row.dart';
import 'package:vpnwy_app/features/home/ui/widgets/selected_country_with_ip.dart';

class HomeConnectedScreenBody extends StatelessWidget {
  const HomeConnectedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.pattern,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 150.h),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Connecting Time",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "00:45:29",
                  style: TextStyle(
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              ConnectingInfoRow(),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SelectedCountryWithIp(),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.map,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.79),
          child: Container(
            width: 226.w,
            height: 228.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFF674FF7),
              border: Border.all(color: Color(0xff816CFF), width: 10.w),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff674FF7).withOpacity(0.4),
                  blurRadius: 30,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.power_settings_new,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.038,
          left: 0,
          right: 0,
          child: Container(
            width: 290.w,
            height: 290.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: Color(0xff064267), width: 1.w),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.005,
          left: 0,
          right: 0,
          child: Container(
            width: 346.w,
            height: 346.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Color(0xff064267).withOpacity(0.4),
                width: 1.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
