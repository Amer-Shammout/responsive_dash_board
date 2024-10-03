import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: DashboardDesktopLayout()
      // AdaptiveLayout(mobileLayout: (context) => const SizedBox(), tabletLayout: (context) => const SizedBox(), desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}