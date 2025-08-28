import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/pages/statistiques/widgets/store_overview_card.dart';

import 'package:shop_easy3/screens/web/utils/app_colors.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_vendor_widget.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../../../widgets/drawer_widget.dart';
import '../widgets/customers_reviews_widget.dart';
import '../widgets/inventory_stock_widget.dart';
import '../widgets/orders_recent_widget.dart';
import '../widgets/pie_chart_widget.dart';
import '../widgets/sales_chart_widget.dart';
import '../widgets/stat_card_widget.dart';
import '../widgets/top_selling_list_widget.dart';

class StatistiquesScreen extends StatefulWidget {
  const StatistiquesScreen({super.key});

  @override
  State<StatistiquesScreen> createState() => _StatistiquesScreenState();
}

class _StatistiquesScreenState extends State<StatistiquesScreen> {
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
              child: Text("Dashboard", style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;

                      if (width > 1024) {
                        // ✅ Desktop layout (comme tu l’avais fait)
                        return Column(
                          children: [
                            SizedBox(height: 30),
                            // Stat cards row
                            Row(
                              children: [
                                Expanded(
                                  child: StatCardWidget(
                                    title: "Average Order Value",
                                    value: "\$85.70",
                                    subtitle: "+150 last month",
                                    percentage: "+13.9%",
                                    isPositive: true,
                                    color: Colors.orangeAccent,
                                    imageUrl: "assets/images/panier.png",
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: StatCardWidget(
                                    title: "Total Income",
                                    value: "\$325,890",
                                    subtitle: "+500,000 last month",
                                    percentage: "+16.1%",
                                    isPositive: true,
                                    imageUrl: "assets/images/marketplace1.png",
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: StatCardWidget(
                                    title: "Total Products",
                                    value: "10",
                                    subtitle: "+2.3% last month",
                                    percentage: "+11.1%",
                                    isPositive: true,
                                    imageUrl: "assets/images/product.png",
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: StatCardWidget(
                                    title: "Total Orders",
                                    value: "23",
                                    subtitle: "+2,984 last month",
                                    percentage: "-10.5%",
                                    isPositive: false,
                                    color: AppColors.PRIMARY_BLUE_COLOR,
                                    imageUrl: "assets/images/shopping-bag.png",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            StoreOverviewCard(),

                            // Charts row
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(flex: 2, child: SalesChartWidget()),
                                SizedBox(width: 16),
                                Expanded(
                                  flex: 1,
                                  child: InventoryPieChart(
                                    inStock: 5,
                                    lowStock: 4,
                                    outOfStock: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            // Orders + Reviews
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(flex: 2, child: RecentOrdersWidget()),
                                Expanded(flex: 1, child: CustomerReviewsWidget()),
                              ],
                            ),

                            // Top selling + Inventory
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: TopSellingProductsWidget(),
                                ),
                                Expanded(flex: 1, child: InventoryStatusCard()),
                              ],
                            )
                          ],
                        );
                      } else {
                        // ✅ Mobile layout (tout en Column)
                        return Column(
                          children: [
                            SizedBox(height: 30),
                            // Stat cards scroll horizontal
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 250,
                                    child: StatCardWidget(
                                      title: "Average Order Value",
                                      value: "\$85.70",
                                      subtitle: "+150 last month",
                                      percentage: "+13.9%",
                                      isPositive: true,
                                      color: Colors.orangeAccent,
                                      imageUrl: "assets/images/panier.png",
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  SizedBox(
                                    width: 250,
                                    child: StatCardWidget(
                                      title: "Total Income",
                                      value: "\$325,890",
                                      subtitle: "+500,000 last month",
                                      percentage: "+16.1%",
                                      isPositive: true,
                                      imageUrl: "assets/images/marketplace1.png",
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  SizedBox(
                                    width: 250,
                                    child: StatCardWidget(
                                      title: "Total Products",
                                      value: "10",
                                      subtitle: "+2.3% last month",
                                      percentage: "+11.1%",
                                      isPositive: true,
                                      imageUrl: "assets/images/product.png",
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  SizedBox(
                                    width: 250,
                                    child: StatCardWidget(
                                      title: "Total Orders",
                                      value: "23",
                                      subtitle: "+2,984 last month",
                                      percentage: "-10.5%",
                                      isPositive: false,
                                      color: AppColors.PRIMARY_BLUE_COLOR,
                                      imageUrl: "assets/images/shopping-bag.png",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            StoreOverviewCard(),
                            // Charts en colonne
                            SalesChartWidget(),
                            SizedBox(height: 16),
                            InventoryPieChart(inStock: 5, lowStock: 4, outOfStock: 2),

                            SizedBox(height: 16),
                            RecentOrdersWidget(),
                            SizedBox(height: 16),
                            CustomerReviewsWidget(),
                            SizedBox(height: 16),
                            TopSellingProductsWidget(),
                            SizedBox(height: 16),
                            InventoryStatusCard(),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
