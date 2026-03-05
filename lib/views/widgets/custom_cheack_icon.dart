import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Icon(
            Icons.check,
            size: 28.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
