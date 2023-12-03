import 'package:flutter/material.dart';

import '../../core/providers/screen_config.dart';
class DashboardWidget extends StatefulWidget {
  Widget child;
  List<VoidCallback> onTap;
  String title;
  DashboardWidget({super.key, required this.onTap, required this.child, required this.title});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
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
                  ListTile(
                    leading: Icon(Icons.home_filled),
                    title: Text('Home'),
                    onTap: widget.onTap[0]
                  ),
                  ExpansionTile(
                    title: Text('Exams'),
                    leading: Icon(Icons.abc),
                    children: [
                      ListTile(
                        title: Text('Mathematics'),
                        onTap: widget.onTap[1],
                      ),ListTile(
                        title: Text('Science'),
                        onTap: widget.onTap[2],
                      ),ListTile(
                        title: Text('English'),
                        onTap: widget.onTap[3],
                      ),ListTile(
                        title: Text('Filipino'),
                        onTap: widget.onTap[4],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.onetwothree),
                    title: Text('Scores'),
                    children: [
                      ListTile(
                        title: Text('Mathematics'),
                        onTap: widget.onTap[5],
                      ),ListTile(
                        title: Text('Science'),
                        onTap: widget.onTap[6],
                      ),ListTile(
                        title: Text('English'),
                        onTap: widget.onTap[7],
                      ),ListTile(
                        title: Text('Filipino'),
                        onTap: widget.onTap[8],
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
                child: widget.child
              ),
            ),
          ],
        ),
      ),
    );
  }
}
