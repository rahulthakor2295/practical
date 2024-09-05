import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/models/responses/address_response.dart';
import '../../utils/constants/assets.dart';
import '../../utils/constants/colors.dart';
import '../../utils/date_util.dart';
import '../../utils/static_data.dart';

snackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ),
  );
}

ContactUsItem(
    BuildContext context, String text, String icon, Function onClick) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 16),
    child: Card(
      elevation: 0,
      color: lowPink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        width: double.maxFinite,
        height: 118,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 30, bottom: 30, right: 16),
              child: SvgPicture.asset(icon,
                  fit: BoxFit.fill,
                  width: 33,
                  height: 33,
                  colorFilter:
                      const ColorFilter.mode(primaryColor, BlendMode.srcIn)),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                text,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: black,
                    fontFamily: openSans,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

settingItem(
  BuildContext context,
  String text,
  String icon,
  Function onClick,
) {
  return Padding(
      padding: const EdgeInsets.only(left: 26.0),
      child: InkWell(
        onTap: () {
          onClick.call();
        },
        child: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: lowPink, width: 1.5),
                    color: lowPink),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      icon,
                      fit: BoxFit.fill,
                      width: 24,
                      height: 24,
                    ))),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: black,
                  fontFamily: openSans,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ));
}



BookItemWidget(Function onClick, int index) {
  return InkWell(
    onTap: () {
      onClick.call();
    },
    child: Container(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                ic_book,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Workbook_${index}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  const Text("Preschool",
                      style: const TextStyle(fontSize: 14, color: black))
                ],
              )
            ],
          ),
          const Text("25 Aug 2022")
        ],
      ),
    )),
  );
}

NotificationWidget(Function onClick, int index) {
  return InkWell(
    onTap: () {
      onClick.call();
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: lowPink, width: 1.5),
                  color: lowPink),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset(
                  icNotificationBell,
                  fit: BoxFit.fill,
                  width: 19,
                  height: 19,
                ),
              )),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "It’s time for survey",
                      style: TextStyle(
                          color: black,
                          fontFamily: openSans,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const Text(
                      "30m",
                      style: TextStyle(
                          color: black,
                          fontFamily: openSans,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                    "Lorem Ipsum simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                        color: grey, fontFamily: openSans, fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


