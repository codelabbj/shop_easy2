import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/pages/products/widgets/filter_add_widget.dart';
import 'package:shop_easy3/screens/web/pages/products/widgets/upload_files_widget.dart';
import 'package:shop_easy3/screens/web/pages/products/widgets/validation_widget.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../../../widgets/app_bar_vendor_widget.dart';
import '../../../widgets/drawer_widget.dart';
import '../widgets/categorie_check_widget.dart';
import '../widgets/product_form2_widget.dart';
import '../widgets/product_option_widget.dart';
import '../widgets/product_settings_widget.dart';
import 'add_product_info_screen.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: DrawerDashboard(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                double width = constraints.maxWidth;
                if (width > 1024) {
                  return SizedBox(height: 60, child: AppBarWidget());
                } else {
                  return AppBarVendorWidget();
                }
              },
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text("New Product", style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 1024) {
                    // --- Mode desktop ---
                    return SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AddProductInfo(),
                                SizedBox(height: 12),
                                ProductForm2Widget(),
                                SizedBox(height: 12),
                                MediaUploader(),
                                SizedBox(height: 12),
                                FilterAddWidget(),
                                SizedBox(height: 12),
                                ProductOptionsWidget(),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: const [
                                ValidationWidget(),
                                SizedBox(height: 12),
                                FilterSidebar(),
                                SizedBox(height: 12),
                                ProductSettingsWidget(),
                                SizedBox(height: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // --- Mode mobile/tablette ---
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddProductInfo(),
                          SizedBox(height: 12),
                          ProductForm2Widget(),
                          SizedBox(height: 12),
                          MediaUploader(),
                          SizedBox(height: 12),
                          FilterAddWidget(),
                          SizedBox(height: 12),
                          ProductOptionsWidget(),
                          SizedBox(height: 12),
                          FilterSidebar(),
                          SizedBox(height: 12),
                          ProductSettingsWidget(),
                          ValidationWidget(),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
