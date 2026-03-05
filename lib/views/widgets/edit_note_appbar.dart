
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_cheack_icon.dart';

class EditNoteAppBar extends StatelessWidget {
  const EditNoteAppBar({super.key, required this.onSave});

  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Edit Note',
          style: TextStyle(fontSize: 28.sp),
        ),
        CustomCheckIcon(onTap: onSave),
      ],
    );
  }
}