import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectingInfo extends StatelessWidget {
  const ConnectingInfo({
    super.key,
    required this.title,
    required this.data,
    required this.icon,
  });

  final String title;
  final String data;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, width: 20.w, height: 20.h),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              data,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
