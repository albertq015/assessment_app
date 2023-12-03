import 'package:flutter/cupertino.dart';
import 'package:survey_app/ui/screens/dashboard_screen/dashboard_screen.dart';
import 'package:survey_app/ui/screens/dashboard_screen/pages/exam_page.dart';
import 'package:survey_app/ui/screens/welcome_screen/welcome_screen.dart';

Map<String, WidgetBuilder> screenRoutes = {
  '/' : (context) => const WelcomeScreen(),
  '/dashboard_screen' : (context) => DashboardScreen(),
  '/exam_page' : (context) => ExamPage(),
};