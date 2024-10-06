import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const RsponsiveDashBoard(),
  ));
}

class RsponsiveDashBoard extends StatelessWidget {
  const RsponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
