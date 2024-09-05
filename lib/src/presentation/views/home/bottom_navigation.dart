import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practical/src/presentation/views/bottombar_tabs/event_screen.dart';
import 'package:practical/src/presentation/views/bottombar_tabs/list_show_screen.dart';

import '../../../config/router/app_router.dart';
import '../../../locator.dart';
import '../../../utils/constants/colors.dart';
import '../bottombar_tabs/dashboard.dart';
import '../bottombar_tabs/profile_screen.dart';
import 'custom_bottom_bar.dart';
import 'package:http/http.dart' as http;

bool isClick = false;


class BottomNavigation extends StatefulWidget {
  BottomNavigation({
    Key? key,this.isLogin
  }) : super(key: key);

  bool? isLogin;

  @override
  _BottomNavigationState createState() => _BottomNavigationState(isLogin);
}

class _BottomNavigationState extends State<BottomNavigation> with SingleTickerProviderStateMixin{
  late TabController _tabController  = TabController(length: 4, vsync: this);


  _BottomNavigationState(this.isLogin);

  int _currentTab = 0;


  var dash = const DashBoardScreen();
  var listShow = const ListShowScreen();
  var event = const EventScreen();
  var profile = ProfileScreen();



  late List<Widget> _tabs =   [
  dash,
    event,
    listShow,
    profile,
  ];
  // late List<City> cityList = [];
  late bool isOnline = true;



  showMyCupertinoDialog() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return Theme(
            data: ThemeData(dialogBackgroundColor: Colors.black, dialogTheme: const DialogTheme(backgroundColor: Colors.black)),
            child: CupertinoAlertDialog(
              title: const Text('Title'),
              content: const Text('Some message here'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    appRouter.pop();
                  },
                  child: const Text('OK'),
                )
              ],
            ),
          );
        },
      );
    });
  }

  // late var cubit;
  // late var city = "New Delhi";
  //
  // bool hasPermission = true;
  //
  // Position? position = null;

  void showSnack(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  // final networkService = locator<NetworkStatusService>();

   bool? isLogin;

   int isPush = 0;
   //
   // checkUserLogin() async {
   //   var preferences = MySharedPreference();
   //   if(!await preferences.getBoolValue(keyIsLogin)){
   //    await preferences.setBool(keyUserLogin, false);
   //   }
   //
   // }



  @override
  void initState() {

     if(Platform.isIOS){
       // checkUserLogin();
     }



//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _currentTab = 0;
//       _tabController.addListener(() {
//
//
//         if(_tabController.index == 4 && widget.isLogin == false && isPush == 0 ){
//           isPush = 1;
//           appRouter.push(
//               EnterMobileRoute(
//                 categoryId: null,
//                 subCategoryId: null,
//                 serviceId: null,
//                 categoryByBusinessService: null,
//                 isFromCategory: false,
//               ),).then((value){
//
//
//             setState(() {
//               isPush = 0;
//               _tabController.index=0;
//               _currentTab = 0;
//             });
//           });
//         }else{
//           _currentTab = _tabController.index;
// setState(() {
//
// });
//         }
//       });
//     });


    super.initState();
  }


bool isPOP = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));

    setState(() {
      _tabs;
    });

    return PopScope(
      canPop: isPOP,
      onPopInvoked: (canPOP){

        onBackPressed(context,canPOP);
      },
      child: Scaffold(
          bottomNavigationBar: CustomBottomBar(
            tabController: _tabController,
            index: _currentTab,
            isLogin: isLogin,
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              _tabs[0],
              _tabs[1],
              _tabs[2],
              _tabs[3],


            ],)),
    );
  }

  // Future<bool> onBackMove(BuildContext context) {
  //   if (isClick == true) {
  //     setState(() {
  //       isClick = false;
  //     });
  //     return Future.value(false);
  //   } else {
  //     return onBackPressed(context);
  //   }
  // }

  onBackPressed(BuildContext context,bool canPOP) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(Icons.exit_to_app_sharp, color: defaultColor),
              SizedBox(width: 10),
              Text('Close Application?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
            content: const Text('Are you sure you want to exit the Application?'),
            actions: <Widget>[
              TextButton(
                child: const Text('No', style: TextStyle(fontSize: 15, color: defaultColor)),
                onPressed: () {
                  Navigator.of(context).pop(false); //Will not exit the App
                  isPOP = false;
                },
              ),
              TextButton(
                child: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 15, color: defaultColor),
                ),
                onPressed: () {
                  isPOP = true;

                  exit(0);
                },
              )
            ],
          );
        });
  }
}
