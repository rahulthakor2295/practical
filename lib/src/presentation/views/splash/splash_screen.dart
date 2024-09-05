import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/router/app_router.dart';
import '../../../utils/constants/assets.dart';
import '../../../utils/constants/strings.dart';
import '../../../utils/reference/my_shared_reference.dart';
import '../../../utils/static_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var preferences = MySharedPreference();
    Timer(
        const Duration(seconds: 3),
        () => {
              preferences.getBoolValue(keyIsIntro).then((isIntro) => {
                    if (!isIntro){}
                      // {appRouter.popAndPush(const IntroViewRoute())}

                    else
                      {
                        preferences.getBoolValue(keyIsLogin).then((isLogin) => {
                              if (isLogin)
                                {
                                  appRouter.popAndPush( BottomNavigationRoute()),
                                  preferences
                                      .getSignInModel(keySaveSignInModel)
                                      .then((data) => {
                                            StaticData.tempToken = data?.token,
                                            StaticData.loginData = data
                                          })
                                }
                              else{}
                                // {appRouter.popAndPush(LoginViewRoute())}
                            }),
                      }
                  })
            });

    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF473F97),
        body: SvgPicture.asset(
          ic_splash,
          fit: BoxFit.fitWidth,
        ));
  }
}
