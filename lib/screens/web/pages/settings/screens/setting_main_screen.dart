import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/pages/settings/screens/paying_out_tab.dart';
import 'package:shop_easy3/screens/web/pages/settings/screens/store_settings_tab.dart';
import 'package:shop_easy3/screens/web/pages/settings/screens/tax_info_tab.dart';

import '../../../widgets/app_bar_vendor_widget.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/drawer_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int selectedIndex = 0;
  // final PageController _pageController = PageController();

  final List<String> tabs = [
    "Store",
    "Tax info",
    "Payout info",
    "Preferences",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: DrawerDashboard(),
        body: Column(
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Settings",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                    ),
                  ),
                  SizedBox(height: 12),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black.withOpacity(0.05),
                  //         blurRadius: 4,
                  //         offset: const Offset(0, 2),
                  //       ),
                  //     ],
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "Settings",
                  //         style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.black87,
                  //             ),
                  //       ),
                  //       TextButton.icon(
                  //         onPressed: () {},
                  //         icon: const Icon(Icons.exit_to_app, color: Colors.blue),
                  //         label: const Text(
                  //           "GO TO HOMEPAGE",
                  //           style: TextStyle(
                  //             color: Colors.blue,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),

                  // -------- Tabs ----------
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: const TabBar(
                      isScrollable: false,
                      labelPadding: EdgeInsets.zero,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: "Store"),
                        Tab(text: "Tax info"),
                        Tab(text: "Payout info"),
                        Tab(text: "Preferences"),
                      ],
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.symmetric(horizontal: 15),
                  //   padding: const EdgeInsets.all(4),
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey[100],
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly, // répartis sans scroll
                  //     children: List.generate(tabs.length, (index) {
                  //       final isSelected = selectedIndex == index;
                  //       return GestureDetector(
                  //         onTap: () {
                  //           setState(() {
                  //             selectedIndex = index;
                  //           });
                  //           // ici tu peux notifier un parent si tu veux changer de contenu
                  //         },
                  //         child: Container(
                  //           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  //           decoration: BoxDecoration(
                  //             color: isSelected ? Colors.blue : Colors.transparent,
                  //             borderRadius: BorderRadius.circular(8),
                  //           ),
                  //           child: Text(
                  //             tabs[index],
                  //             style: TextStyle(
                  //               color: isSelected ? Colors.white : Colors.black87,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  //   ),
                  // ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TabBarView(
                        children: [
                          StoreSettingsTab(),
                          TaxInfoTab(),
                          PayingOutTab(),
                          PreferencesTab(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Onglet 4
class PreferencesTab extends StatelessWidget {
  const PreferencesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Preferences settings here..."));
  }
}
