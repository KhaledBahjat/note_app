import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/helper/spacing.dart';
import 'package:note_app/views/widgets/custom_textfeild.dart';
import 'package:note_app/views/widgets/edit_note_appbar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            HeightSpace(height: 20),
            EditNoteAppBar(
              onSave: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pop(context);
                }
              },
            ),
            HeightSpace(height: 24),
            CustomTextField(
              controller: titleController,
              hintText: 'Title',
              maxLines: 1,
            ),
            HeightSpace(height: 16),
            Expanded(
              child: CustomTextField(
                controller: contentController,
                hintText: 'Content',
                maxLines: 100,
              ),
            ),
            HeightSpace(height: 20),
          ],
        ),
      ),
    );
  }
}


