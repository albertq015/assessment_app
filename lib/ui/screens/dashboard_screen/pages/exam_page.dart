import 'package:flutter/material.dart';

import '../../../../core/providers/screen_config.dart';
import '../../../widgets/dashboard_widget.dart';
class ExamPage extends StatefulWidget {
  ExamPage({super.key,});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DashboardWidget(
      title: 'Dashboard Widget',
      child: Container(),
      onTap: [
            (){
          Navigator.pushReplacementNamed(context, '/dashboard_screen');
        },
            (){
          Navigator.pushReplacementNamed(context, '/exam_page');
        },
            (){},
            (){},
            (){},
            (){},
            (){},
            (){},
            (){},
      ],
    );
  }
}
