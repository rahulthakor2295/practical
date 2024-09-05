import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practical/src/presentation/cubits/country/country_cubit.dart';
import 'package:practical/src/utils/constants/colors.dart';
import 'package:practical/src/utils/constants/font_style.dart';

import '../../../config/router/app_router.dart';
import '../../../utils/common.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  @override
  void initState() {
   context.read<CountryCubit>().getCountry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: defaultColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(70),
                              bottomRight: Radius.circular(70))),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0,left: 8,right: 8),
                        child: Column(
        
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Container(
                                              height: 25,
                                              decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                                            ),
                                          ),
                                        ),
                                        Text(textAlign: TextAlign.center,"BOOK MY EVENT",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Flex(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        direction: Axis.horizontal,
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          Text(
                                            "Current Location",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 10),
                                          )
                                        ],
                                      ),
                                      Flex(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        direction: Axis.horizontal,
                                        children: [
                                          Text(
                                            "Mumbai",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.backspace_rounded,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: lowDefaultColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.notifications,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.menu_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ]),
        SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  height: 30,
                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),child: Row(children: [
                                  Icon(Icons.search,color: defaultColor,),
                                  Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none),))
                                ],),),
                                Container(
                                  alignment: Alignment.center,
        
                                    height: 30,
                                    decoration: BoxDecoration(color: lowDefaultColor,borderRadius: BorderRadius.all(Radius.circular(20))),child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0,top: 5,right: 10,bottom: 5),
                                      child: Text("ListYouShow",style: styleRegular( size: 15,color: Colors.white),),
                                    )),
                                Container(
                                  alignment: Alignment.center,
        
                                    height: 30,
                                    decoration: BoxDecoration(color: lowDefaultColor,borderRadius: BorderRadius.all(Radius.circular(20))),child: Padding(
                                      padding: const EdgeInsets.only(left: 10.0,top: 5,right: 10,bottom: 5),
                                      child: Text("offers",style: styleRegular( size: 15,color: Colors.white),)
                                    )),
                              ],
                            ),
        
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(10, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.ac_unit_outlined),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Kids",
                                    style: styleBold(size: 15,color: defaultColor),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        );
                        ;
                      })),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.20,
              child: CarouselSlider(
                items: List.generate(5 ?? 0, (index) {
        
                  return InkWell(
                      onTap: () {
                        // onTap.call();
                      },
                      child: Container(
        
                        child: Stack(
                          children: [
                            Container(
        
                                margin: const EdgeInsets.only(top: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
        
                                  borderRadius:
                                  BorderRadius.circular(10),
                                  child: Image.network("https://www.staffingadvisors.com/wp-content/uploads/2023/03/Work-Sample_1600x900.webp",fit: BoxFit.fill,)
                                  // child: networkImage("https://www.staffingadvisors.com/wp-content/uploads/2023/03/Work-Sample_1600x900.webp", double.infinity, double.infinity, BoxFit.fill),)),
                                )
                            ),
                          ],
                        ),
                      ));
                }),
        
                //Slider Container properties
                options: CarouselOptions(
        
                  height: MediaQuery.of(context).size.height * 0.20,
                  onPageChanged: (index, reason) {
                    // onPageChanged.call(index);
                  },
                  autoPlay: true,
                  viewportFraction: .8,
                ),
              ),
            ),
            SizedBox(height: 20,),
            BusinessCategoryWidget(context,null,(){},(){}),
            SizedBox(height: 20,),
            PremiereWidget(context,null,(){},(){}),
          ],
        ),
      ),
    );
  }
}
