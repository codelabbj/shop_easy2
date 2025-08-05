import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../models/product_model.dart';

import '../widgets/promoted_card_widget.dart';
import 'marketplace_articles_screen.dart';

class AcceuilMobileScreen extends StatelessWidget {
  final List<ProductModel> promotedProducts = [
    ProductModel(
      title: 'iPhone 12 Pro 64gb',
      price: "950",
      imageUrl: 'assets/images/winter_cap.webp',
      rating: 4.8,
      distance: 1.2,
      time: 'Now',
      location: 'Colorado',
      seller: 'Barack J OBAMA',
      category: 'Equipment electronics',
    ),
    ProductModel(
      title: 'iPhone 14 Pro ',
      price: "950",
      imageUrl: 'assets/images/wallets.webp',
      rating: 4.8,
      distance: 1.2,
      time: 'Now',
      location: 'Colorado',
      seller: 'Barack J OBAMA',
      category: 'Equipment electronics',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Buy&Sell'.tr(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MarketplaceArticlesScreen()),
                      );
                    },
                    child: Image.asset(
                      "assets/images/marketplace1.png",
                      width: 22,
                      height: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text('23456 Results'.tr(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey)),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, size: 16),
                  const SizedBox(width: 4),
                  Text('Location'.tr(), style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w500)),
                  const Icon(Icons.keyboard_arrow_down, size: 18),
                  const Spacer(),
                  const Icon(Icons.map_outlined, color: Colors.orange),
                  const SizedBox(width: 4),
                  Text("See Map".tr(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.orange))
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFD1EDFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Frash & Original".tr(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey)),
                        const SizedBox(height: 4),
                        Text("iBike 7 Speed".tr(),
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text("\$900", style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.blue)),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/footwear.jpg",
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // SizedBox(
              //   height: 36,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       _buildChip(context, "All".tr(), selected: true),
              //       _buildChip(context, "Electronics".tr()),
              //       _buildChip(context, "Mobile".tr()),
              //       _buildChip(context, "Sports & Outdoors".tr()),
              //     ],
              //   ),
              // ),

              Text(
                "Urgent Selling".tr(),
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: promotedProducts.length,
                  itemBuilder: (context, index) => PromotedCard(product: promotedProducts[index]),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _sectionHeader(BuildContext context, String title) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Text(title, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
  //       Text("See All".tr(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey)),
  //     ],
  //   );
  // }

  // Widget _buildChip(BuildContext context, String label, {bool selected = false}) {
  //   return Container(
  //     margin: const EdgeInsets.only(right: 8),
  //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //     decoration: BoxDecoration(
  //       color: selected ? Colors.black : Colors.white,
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: Text(label,
  //         style: Theme.of(context).textTheme.labelSmall!.copyWith(
  //               color: selected ? Colors.white : Colors.black,
  //               fontWeight: FontWeight.w500,
  //             )),
  //   );
  // }
}
