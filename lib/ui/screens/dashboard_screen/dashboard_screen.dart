import 'package:flutter/material.dart';
import 'package:survey_app/ui/screens/dashboard_screen/pages/exam_page.dart';
import 'package:survey_app/ui/widgets/dashboard_widget.dart';

import '../../../core/providers/screen_config.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatefulWidget {
  PageController pageController = PageController(initialPage: 0);
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool data = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DashboardWidget(
      title: 'Dashboard Screen',
      child: Container(),
      onTap: [
        (){
        Navigator.pushReplacementNamed(context, '/dashboard_screen');
        },
        (){
        Navigator.pushReplacementNamed(context, '/exam_page');
        },
        (){
          Navigator.pushReplacementNamed(context, '/exam_page');
        },
        (){
          Navigator.pushReplacementNamed(context, '/exam_page');
        },
        (){
          Navigator.pushReplacementNamed(context, '/exam_page');
        },
        (){},
        (){},
        (){},
        (){},
      ],
    );
  }
}
