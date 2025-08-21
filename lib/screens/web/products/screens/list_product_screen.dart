import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:shop_easy3/screens/web/products/widgets/product_table_widget.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../../../../constantes/const.dart';
import '../../widgets/app_bar_vendor_widget.dart';
import '../../widgets/card_list_widget.dart';
import '../../widgets/custom_drop_menu.dart';
import '../../widgets/drawer_widget.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  String formList = "List-ui";
  @override
  void initState() {
    super.initState();

    // _checkAuthentication();
    // context.read<CollaborateursCubit>().getCustomerDetails();
  }

  //
  // void _checkAuthentication() async {
  //   final token = SharedPreferencesUtils.getString('auth_token');
  //   if (token == null || token.isEmpty) {
  //     // Rediriger vers la page de login
  //     context.go('/login'); // ou Navigator.of(context).pushReplacementNamed('/login');
  //   }
// }
  bool isFilterVisible = false;

  String selectedStatus = "Status";
  String selectedCondition = "Less than";
  String selectedValue = "Draft";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: DrawerDashboard(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 60, child: AppBarVendorWidget()),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Visibility(
                      visible: isFilterVisible,
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.2),
                              spreadRadius: 10,
                              blurRadius: 10,
                              offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Filters", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        isFilterVisible = false; // toggle l'affichage
                                      });
                                    },
                                    child: Icon(Icons.close))
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CustomDropdownField(
                                    label: "Status",
                                    value: selectedStatus,
                                    items: ["Status", "Date", "Amount"],
                                    onChanged: (val) {
                                      if (val != null) {
                                        setState(() {
                                          selectedStatus = val;
                                        });
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  flex: 2,
                                  child: CustomDropdownField(
                                    label: "Equal",
                                    value: selectedCondition,
                                    items: ["Less than", "Equal", "Greater than"],
                                    onChanged: (val) {
                                      if (val != null) {
                                        setState(() {
                                          selectedCondition = val;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            CustomDropdownField(
                              label: "Draft",
                              value: selectedValue,
                              items: ["Draft", "Pending", "Approved"],
                              onChanged: (val) {
                                if (val != null) {
                                  setState(() {
                                    selectedValue = val;
                                  });
                                }
                              },
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 85,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(true); // confirme suppression
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context).colorScheme.primary,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      "Apply",
                                      style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/reload.png",
                                        width: 18,
                                        height: 18,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    CardListWidget(
                      actions: [
                        InkWell(
                          onTap: () {
                            log("je suis ici");
                            context.go('/add-product');
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                                Text(
                                  "Add Product",
                                  style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/telecharger.png",
                                width: 18,
                                height: 18,
                                color: Colors.black,
                              ),
                              Text(
                                "Export",
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFilterVisible = !isFilterVisible; // toggle l'affichage
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/filtre.png",
                                  width: 18,
                                  height: 18,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Filter",
                                  style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     formList = "list-ui";
                        //     context.go('/products');
                        //   },
                        //   child: Container(
                        //     padding: EdgeInsets.all(5),
                        //     decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                        //     child: Icon(Icons.picture_in_picture_alt_outlined, size: 18, color: Colors.black),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     formList = "grid-product";
                        //     context.go('/grid-product');
                        //   },
                        //   child: Container(
                        //     padding: EdgeInsets.all(5),
                        //     decoration: BoxDecoration(
                        //         border: Border.all(color: formList == "grid-product" ? Theme.of(context).colorScheme.primary : Colors.grey[200]!),
                        //         borderRadius: BorderRadius.circular(5)),
                        //     child: Row(
                        //       children: [
                        //         Icon(Icons.grid_view, size: 18, color: Colors.grey),
                        //         Icon(
                        //           Icons.table_rows_outlined,
                        //           size: 18,
                        //           color: Colors.grey,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // )
                      ],
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width,
                          ),
                          child: ProductTableWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
