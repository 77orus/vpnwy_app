import 'package:flutter/material.dart';
import 'package:vpnwy_app/features/home/ui/widgets/home_connected_screen_body.dart';

class HomeConnectedScreen extends StatelessWidget {
  const HomeConnectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff22156F),

      body: HomeConnectedScreenBody(),
    );
  }
}
