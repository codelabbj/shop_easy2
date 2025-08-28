import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/customs_text_form_field.dart';

class TaxInfoTab extends StatelessWidget {
  TaxInfoTab({super.key});
  final TextEditingController nameBusinessController = TextEditingController();
  final TextEditingController taxeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You are editing English version",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          label: "Business Name ",
          hintText: "Miko SARL",
          controller: nameBusinessController,
        ),
        CustomTextFormField(
          label: "Taxe ID",
          hintText: "+1234567890",
          controller: taxeController,
          keyboardType: TextInputType.phone,
        ),
        CustomTextFormField(
          label: "Address",
          hintText: "Enter your address",
          controller: addressController,
          isMultiline: true,
        ),
        SizedBox(height: 15),
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
    );
  }
}
