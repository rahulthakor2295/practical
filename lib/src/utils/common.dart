import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practical/src/utils/constants/font_style.dart';

import 'constants/colors.dart';

  networkImage(String? url, double width, double? height, BoxFit? box) {
    return CachedNetworkImage(

      key: UniqueKey(),
      width: width,
      height: height,
      fit: box ?? BoxFit.fill,
      imageUrl: url!,
      placeholder: (context, url) => SvgPicture.asset(
        "",
        width: 50,
        height: 50,
        color: grey,
      ),
      errorWidget: (context, url, error) =>
          Image.network(
              url,
              width: width,
              height: height,
              fit: box ?? BoxFit.fill,
              errorBuilder: (context, exception, stackTrace) {
                return SvgPicture.asset(
                  "",
                  width: 50,
                  height: 50,
                  color: grey,
                ); }

          ));
}

Widget BusinessCategoryWidget(BuildContext context, List<Colors>? listService, Function() viewAllCallBack, Function() itemClick) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(listService?.length ?? 2, (parentIndex) {
      return Container(
        padding: const EdgeInsets.only(top: 15),
        child: HookBuilder(builder: (BuildContext context) {
          var currentSelection = useState(-1);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find New Experance",
                          style: styleBold(size: 12.sp, color: Colors.black),
                        ),
                        Text("Find, new,experance",
                          style: styleBold(size: 10.sp, color: Colors.black),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        viewAllCallBack.call();
                      },
                      child: Text(
                        "View All",
                        style: styleBold(size: 12.sp, color: Colors.black),                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(20 ?? 0, (index) {
                      var width = MediaQuery.of(context).size.width / 3.5;

                      return Container(
                        padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width / 3.5) / 15, right: (MediaQuery.of(context).size.width / 3.5) / 15, top: 3, bottom: 3),
                        child: InkWell(
                          onTap: () {
                            // currentSelection.value = index;
                            // itemClick.call(listService?[parentIndex].businessServiceGroupLists![index]);
                          },
                          child: Container(
                              child: Container(
                                  width: width,
                                  decoration: BoxDecoration(

                                      color: currentSelection.value == index ? defaultColor : Colors.transparent,
                                      borderRadius: const BorderRadius.all(const Radius.circular(10.0)), border: Border.all( color: defaultColor)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      networkImage( "https://www.staffingadvisors.com/wp-content/uploads/2023/03/Work-Sample_1600x900.webp", 45, 45, BoxFit.fill),
                                    ],
                                  ))),
                        ),
                      );
                    }),
                  ),
                ),
              ),


              // GridView.count(
              //     physics: const NeverScrollableScrollPhysics(),
              //     primary: false,
              //     shrinkWrap: true,
              //     crossAxisCount: 3,
              //     // crossAxisSpacing: 35.0,
              //     // mainAxisSpacing: 25.0,
              //     children: List.generate(
              //         listService?[parentIndex].businessServiceGroupLists?.length ?? 0,
              //         (index) {
              //       return InkWell(
              //         onTap: () {
              //           currentSelection.value = index;
              //           itemClick.call(
              //               listService?[parentIndex].businessServiceGroupLists![index]);
              //         },
              //         child: Container(
              //           padding: const EdgeInsets.only(top: 9,bottom: 9,left: 7,right: 7),
              //             child: Container(
              //                 decoration: BoxDecoration(
              //
              //                     borderRadius: const BorderRadius.all(
              //                         const Radius.circular(10.0)),
              //                     border: Border.all(
              //                         strokeAlign: 1, color: defaultColor)),
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     networkImage(
              //                         "${baseUrl}" +
              //                             "${listService?[parentIndex].businessServiceGroupLists?[index].serviceIcon}",
              //                         45,
              //                         45,
              //                         BoxFit.fill),
              //                     SizedBox(
              //                       height: 5.h,
              //                     ),
              //                     Padding(
              //                       padding: const EdgeInsets.only(
              //                           left: 3.0, right: 3.0),
              //                       child: Text(
              //                         textAlign: TextAlign.center,
              //                         "${listService?[parentIndex].businessServiceGroupLists?[index].businessService}",
              //                         style: styleInterBold(
              //                             size: 11.sp,
              //                             color:  lowGrey),
              //                       ),
              //                     )
              //                   ],
              //                 ))),
              //       );
              //     })),
            ],
          );
        }),
      );
    }),
  );
}
Widget PremiereWidget(BuildContext context, List<Colors>? listService, Function() viewAllCallBack, Function() itemClick) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(listService?.length ?? 2, (parentIndex) {
      return Container(
        padding: const EdgeInsets.only(top: 15),
        child: HookBuilder(builder: (BuildContext context) {
          var currentSelection = useState(-1);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find New Experance",
                          style: styleBold(size: 12.sp, color: Colors.black),
                        ),
                        Text("Find, new,experance",
                          style: styleBold(size: 10.sp, color: Colors.black),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        viewAllCallBack.call();
                      },
                      child: Text(
                        "View All",
                        style: styleBold(size: 12.sp, color: Colors.black),                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(20 ?? 0, (index) {
                      var width = MediaQuery.of(context).size.width / 3.7;

                      return Container(
                        padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width / 3.5) / 15, right: (MediaQuery.of(context).size.width / 3.5) / 15, top: 3, bottom: 3),
                        child: InkWell(
                          onTap: () {
                            // currentSelection.value = index;
                            // itemClick.call(listService?[parentIndex].businessServiceGroupLists![index]);
                          },
                          child: Container(
                              child: Container(
                                  width: width,
                                  decoration: BoxDecoration(
                                      color: currentSelection.value == index ? defaultColor : Colors.transparent,
                                      borderRadius: const BorderRadius.all(const Radius.circular(10.0)), border: Border.all( color: defaultColor)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      networkImage( "https://www.staffingadvisors.com/wp-content/uploads/2023/03/Work-Sample_1600x900.webp", 45, 45, BoxFit.fill),
                                    ],
                                  ))),
                        ),
                      );
                    }),
                  ),
                ),
              ),


              // GridView.count(
              //     physics: const NeverScrollableScrollPhysics(),
              //     primary: false,
              //     shrinkWrap: true,
              //     crossAxisCount: 3,
              //     // crossAxisSpacing: 35.0,
              //     // mainAxisSpacing: 25.0,
              //     children: List.generate(
              //         listService?[parentIndex].businessServiceGroupLists?.length ?? 0,
              //         (index) {
              //       return InkWell(
              //         onTap: () {
              //           currentSelection.value = index;
              //           itemClick.call(
              //               listService?[parentIndex].businessServiceGroupLists![index]);
              //         },
              //         child: Container(
              //           padding: const EdgeInsets.only(top: 9,bottom: 9,left: 7,right: 7),
              //             child: Container(
              //                 decoration: BoxDecoration(
              //
              //                     borderRadius: const BorderRadius.all(
              //                         const Radius.circular(10.0)),
              //                     border: Border.all(
              //                         strokeAlign: 1, color: defaultColor)),
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     networkImage(
              //                         "${baseUrl}" +
              //                             "${listService?[parentIndex].businessServiceGroupLists?[index].serviceIcon}",
              //                         45,
              //                         45,
              //                         BoxFit.fill),
              //                     SizedBox(
              //                       height: 5.h,
              //                     ),
              //                     Padding(
              //                       padding: const EdgeInsets.only(
              //                           left: 3.0, right: 3.0),
              //                       child: Text(
              //                         textAlign: TextAlign.center,
              //                         "${listService?[parentIndex].businessServiceGroupLists?[index].businessService}",
              //                         style: styleInterBold(
              //                             size: 11.sp,
              //                             color:  lowGrey),
              //                       ),
              //                     )
              //                   ],
              //                 ))),
              //       );
              //     })),
            ],
          );
        }),
      );
    }),
  );
}

