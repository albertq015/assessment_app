import 'package:flutter/material.dart';

import '../../../core/providers/screen_config.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool data = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background1.jpg"), fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: getScreenPixel(60),),
              child: Card(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40), vertical: getProportionateScreenHeight(100)),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(30),),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/dashboard_screen');
                      },style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF224b6b)), child: const Text('Login'),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
