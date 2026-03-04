import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.only(top: 20.h,bottom: 24.w,left: 16.w),
      decoration: BoxDecoration(
        color: Color(0xfffecd7e),
        borderRadius: BorderRadius.circular(16.r),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Note Title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.sp,
              ),
            ),

            subtitle: Padding(
              padding:  EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                'Note content goes here...',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18.sp,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30.sp,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: Text(
              'Created on: 2024-06-01',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}