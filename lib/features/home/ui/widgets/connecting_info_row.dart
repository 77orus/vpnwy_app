import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpnwy_app/core/helpers/app_images.dart';
import 'package:vpnwy_app/features/home/ui/widgets/connecting_info_widget.dart';

class ConnectingInfoRow extends StatelessWidget {
  const ConnectingInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConnectingInfo(
          title: "Download",
          data: "147/67 Mbp/s",
          icon: AppImages.downloadArrow,
        ),
        Spacer(),
        SizedBox(
          height: 50.h,
          child: VerticalDivider(
            color: Colors.white,
            thickness: 2,
            indent: 5,
            endIndent: 5,
            width: 2,
          ),
        ),
        Spacer(),
        ConnectingInfo(
          title: "Upload",
          data: "147/67 Mbp/s",
          icon: AppImages.uploadArrow,
        ),
      ],
    );
  }
}
