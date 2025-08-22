import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/products/screens/list_product_screen.dart';
import 'package:shop_easy3/screens/web/products/widgets/product_table_widget.dart';
import 'package:shop_easy3/screens/web/statistiques/widgets/inventory_stock_widget.dart';
import 'package:shop_easy3/screens/web/statistiques/widgets/store_overview_card.dart';
import 'package:shop_easy3/screens/web/utils/app_colors.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../../orders/widgets/orders_tab_widget.dart';
import '../../widgets/card_list_widget.dart';
import '../../widgets/drawer_widget.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 60, child: AppBarWidget()),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          double width = constraints.maxWidth;

                          if (width > 1024) {
                            // Grand écran : on utilise Row + Expanded (layout fluide)
                            return Row(
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
                            );
                          } else {
                            // Écran plus petit : on autorise le scroll horizontal
                            return SingleChildScrollView(
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
                                      imageUrl:
                                          "assets/images/marketplace1.png",
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
                                      imageUrl:
                                          "assets/images/shopping-bag.png",
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),

                      const SizedBox(height: 16),
                      // StoreOverviewCard(),
                      const SizedBox(height: 10),
                      // Graphique + produits top ventes
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
                      // Row(
                      //   children: [
                      //     CardListWidget(
                      //       child: SingleChildScrollView(
                      //         scrollDirection: Axis.horizontal,
                      //         child: ProductTableWidget(),
                      //       ),
                      //     )
                      //   ],
                      // ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: CardListWidget(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: MediaQuery.of(context).size.width,
                                  ),
                                  child: OrdersTabWidget(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(flex: 1, child: InventoryStatusCard()),
                        ],
                      ),
                    ],
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
