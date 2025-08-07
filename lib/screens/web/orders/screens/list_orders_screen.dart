import 'package:flutter/material.dart';
import 'package:shop_easy3/screens/web/orders/widgets/orders_tab_widget.dart';
import 'package:shop_easy3/screens/web/orders/widgets/sales_card_widget.dart';

import '../../../../constantes/const.dart';
import '../../widgets/app_bar_widget.dart';

class ListOrdersScreen extends StatefulWidget {
  const ListOrdersScreen({super.key});

  @override
  State<ListOrdersScreen> createState() => _ListOrdersScreenState();
}

class _ListOrdersScreenState extends State<ListOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 60, child: AppBarWidget()),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: SalesCardWidget(
                          title: 'Total Sales',
                          subtitle: 'Total earnings from sales.',
                          amount: '\$189,374',
                          percentage: '9%',
                          isPositive: true,
                          footerText: 'From last month',
                          onDetailTap: () {
                            // action on detail click
                            print("Details tapped!");
                          },
                        ),
                      ),
                      Expanded(
                        child: SalesCardWidget(
                          title: 'Total Sales',
                          subtitle: 'Total earnings from sales.',
                          amount: '\$189,374',
                          percentage: '9%',
                          isPositive: true,
                          footerText: 'From last month',
                          onDetailTap: () {
                            // action on detail click
                            print("Details tapped!");
                          },
                        ),
                      ),
                      Expanded(
                        child: SalesCardWidget(
                          title: 'Total Sales',
                          subtitle: 'Total earnings from sales.',
                          amount: '\$189,374',
                          percentage: '9%',
                          isPositive: true,
                          footerText: 'From last month',
                          onDetailTap: () {
                            // action on detail click
                            print("Details tapped!");
                          },
                        ),
                      ),
                      Expanded(
                        child: SalesCardWidget(
                          title: 'Total Sales',
                          subtitle: 'Total earnings from sales.',
                          amount: '\$189,374',
                          percentage: '9%',
                          isPositive: true,
                          footerText: 'From last month',
                          onDetailTap: () {
                            // action on detail click
                            print("Details tapped!");
                          },
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Product Transaction",
                                    style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Latest transaction sales in real time.",
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.grey[300]),
                                  ),
                                ],
                              ),
                              Spacer(),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
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
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/engrenages.png",
                                      width: 18,
                                      height: 18,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "Customize",
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
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
                            ],
                          ),
                          SizedBox(height: 12),
                          Expanded(
                            flex: 9,
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
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  children: [
                                    Text(
                                      "Show: 2",
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.swap_vert,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.more_horiz_outlined,
                                  size: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "12",
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
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
