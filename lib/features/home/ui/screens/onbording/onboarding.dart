import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/features/home/ui/screens/onbording/widgets/doctor_image_and_text.dart';
import 'package:gallery/features/home/ui/screens/onbording/widgets/doctor_logo_and_name.dart';
import 'package:gallery/features/home/ui/screens/onbording/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DoctorLogoAndName(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              SizedBox(height: 50.h),
              const GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
