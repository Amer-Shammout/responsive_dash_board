import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const RsponsiveDashBoard());
}

class RsponsiveDashBoard extends StatelessWidget {
  const RsponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}

