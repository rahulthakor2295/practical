import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/router/app_router.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/reference/my_shared_reference.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({Key? key, required this.index, required this.tabController,required this.isLogin})
      : super(key: key);

  final TabController tabController;
  final int index;
  final bool? isLogin;


  @override
  _CustomBottomBarState createState() => _CustomBottomBarState(isLogin);
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  _CustomBottomBarState(this.isLogin);
  late bool iPad = false;
  bool? isLogin;











  @override
  Widget build(BuildContext context) {


    return Container(
        width: double.infinity,

        height: 60.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(22.0),
                topRight: Radius.circular(22.0))),
        child:

        TabBar(
          controller: widget.tabController,
          indicatorColor: Colors.white,
          labelColor:   defaultColor ,
          unselectedLabelColor: black,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.zero,
          tabs: [


            Tab(
              icon: Icon(Icons.home),
              iconMargin: EdgeInsets.only(top: 4.h, bottom: 6.h),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.event_note_rounded),
              iconMargin: EdgeInsets.only(top: 4.h, bottom: 6.h),
              text: "Event",
            ),

            Tab(
              icon: Icon(Icons.list_alt_outlined),
              iconMargin: EdgeInsets.only(top: 4.h, bottom: 6.h),
              text: "List Show",
            ),

            Tab(
              icon: Icon(Icons.person),
              iconMargin: EdgeInsets.only(top: 4.h, bottom: 6.h),
              text: "Profile",
            ),


  ],

    )
    );
  }

}
