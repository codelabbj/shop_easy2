import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/utils/app_colors.dart';
import 'package:shop_easy3/screens/web/widgets/customs_text_form_field.dart';

import '../../../widgets/custom_drop_menu.dart';

class PayingOutTab extends StatefulWidget {
  PayingOutTab({super.key});

  @override
  State<PayingOutTab> createState() => _PayingOutTabState();
}

class _PayingOutTabState extends State<PayingOutTab> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController shopUrlController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController contentController = TextEditingController();

  String selectedValue = "Bank Transfer";
  // valeur par défaut
  final List<String> paymentMethods = [
    "Bank Transfer",
    "PayPal",
    "Skype",
  ];

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
          CustomDropdownField(
            label: "Payment Method",
            value: selectedValue,
            items: paymentMethods,
            onChanged: (newValue) {
              if (newValue != null) {
                setState(() {
                  selectedValue = newValue;
                });
              }
            },
          ),
          CustomTextFormField(
            label: "Bank Name ",
            hintText: "Marco Kreiger",
            controller: shopUrlController,
          ),
          CustomTextFormField(
            label: "Bank Code/IFSC",
            hintText: "Bank Code/IFSC",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomTextFormField(
            label: "Account Holder Name",
            hintText: "Frank Volkman",
            controller: phoneController,
            keyboardType: TextInputType.text,
          ),
          CustomTextFormField(
            label: "Account Number",
            hintText: "+14083370661.",
            controller: descriptionController,
          ),
          CustomTextFormField(
            label: "Description",
            hintText: "Lucy Lowe",
            controller: descriptionController,
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
