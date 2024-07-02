import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gallery/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/background_logo.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.white.withOpacity(0.0)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: Image.asset("assets/images/doctor_image.png"),
        ),
        Positioned(
            bottom: 30,
            left: 80,
            child: Center(
              child: Text("    Best Doctor\nAppointment App",
                  style: TextStyles.InterBold32),
            )),
        Positioned(
          bottom: -5,
          left: 20,
          child: Text(
            "Manage and schedule all of your medical appointments easily\n                   with Docdoc to get a new experience.",
            style: TextStyles.InterRegular10,
          ),
        )
      ],
    );
  }
}
