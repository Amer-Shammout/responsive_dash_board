import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? const CustomDrawer()
            : null,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                shape: LinearBorder.bottom(
                  side: const BorderSide(
                    color: Colors.black12,
                  ),
                ),
                centerTitle: true,
                title:  Text(
                  "Responsive Dashboard",
                  style: AppStyles.styleSemiBold20(context),
                ),
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.white70,
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF064060),
                  ),
                ),
              )
            : null,
        backgroundColor: const Color(0xfff7f9fa),
        body: AdaptiveLayout(
          mobileLayout: (context) => const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: DashboardMobileLayout(),
          ),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
        ));
  }
}
