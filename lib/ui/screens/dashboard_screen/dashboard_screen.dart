import 'package:flutter/material.dart';
import 'package:survey_app/ui/screens/dashboard_screen/pages/exam_page.dart';

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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(SizeConfig.screenWidth!, 1000),
        child: Container(
          color: const Color(0xFF003852),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        data = !data;
                      });
                    },
                    icon: const Icon(Icons.menu, color: Colors.white),
                  ),
                  const Text('Assessment Dashboard',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(Icons.abc, color: Colors.white),
                  )
                ]),
          ),
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: Row(
          children: [
            data
                ? Drawer(
                    child: ListView(
                      shrinkWrap: false,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, getScreenHeight(15), 0, 0),
                            child: const ListTile(
                              title: Text(
                                'Name of Student',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Grade Level'),
                            ),
                          ),
                        ),
                        ExpansionTile(
                          title: Text('Exams'),
                          leading: Icon(Icons.abc),
                          children: [
                            ListTile(
                              title: Text('Mathematics'),
                              onTap: () {
                                widget.pageController.jumpToPage(1);
                              },
                            ),ListTile(
                              title: Text('Science'),
                            ),ListTile(
                              title: Text('English'),
                            ),ListTile(
                              title: Text('Filipino'),
                            ),
                          ],
                        ),
                        const ExpansionTile(
                          leading: Icon(Icons.onetwothree),
                          title: Text('Scores'),
                          children: [
                            ListTile(
                              title: Text('Mathematics'),
                            ),ListTile(
                              title: Text('Science'),
                            ),ListTile(
                              title: Text('English'),
                            ),ListTile(
                              title: Text('Filipino'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                : Container(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: widget.pageController,
                  children: [
                    Container(),
                    ExamPage(pageController: widget.pageController)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
