import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/widgets/customs_text_form_field.dart';

import '../../../utils/app_colors.dart';

class StoreSettingsTab extends StatelessWidget {
  StoreSettingsTab({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController shopUrlController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You are editing English version",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),

          /// 🔹 Name
          CustomTextFormField(
            label: "Name *",
            hintText: "John Doe",
            controller: nameController,
          ),

          /// 🔹 Shop URL
          CustomTextFormField(
            label: "Shop URL *",
            hintText: "mystore",
            controller: shopUrlController,
          ),

          /// 🔹 Email
          CustomTextFormField(
            label: "Email *",
            hintText: "example@email.com",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),

          CustomTextFormField(
            label: "Phone *",
            hintText: "+1234567890",
            controller: phoneController,
            keyboardType: TextInputType.phone,
          ),

          CustomTextFormField(
            label: "Description",
            hintText: "Enter a short description...",
            controller: descriptionController,
            isMultiline: true,
          ),

          const SizedBox(height: 8),
          CustomTextFormField(
            label: "Content",
            hintText: "Enter content here...",
            controller: contentController,
            isMultiline: true,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PRIMARY_BLUE_COLOR,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            onPressed: () {},
            child: Text(
              "Save settings",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
