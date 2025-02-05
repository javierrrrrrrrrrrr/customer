import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class EventLocationWidget extends StatelessWidget {
  const EventLocationWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20.h,
          width: 20.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff0E6BF0),
          ),
          child: Icon(
            TablerIcons.map_pin,
            size: 16.w,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff656565),
              ),
              textAlign: TextAlign.left,
            )
          ],
        )
      ],
    );
  }
}
