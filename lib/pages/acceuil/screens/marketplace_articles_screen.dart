import 'package:flutter/material.dart';
import 'package:shop_easy3/pages/home_mobile_screen.dart';

import '../../../constantes/const.dart';
import '../../../models/product_model.dart';

import '../widgets/filter_bar_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/search_widget.dart';

class MarketplaceArticlesScreen extends StatelessWidget {
  const MarketplaceArticlesScreen({super.key});

  List<ProductModel> get products => [
        ProductModel(
          title: "Dries Van Noten",
          price: "\$580",
          imageUrl: "assets/images/winter_hooby.webp",
          rating: 4.8,
          distance: 1.2,
          time: 'Now',
          location: 'Colorado',
          seller: 'Barack J OBAMA',
          category: 'Equipment electronics',
        ),
        ProductModel(
          title: "Wales Bonner",
          price: "\$280",
          imageUrl: 'assets/images/clothe.jpeg',
          rating: 4.8,
          distance: 1.2,
          time: 'Now',
          location: 'Colorado',
          seller: 'Barack J OBAMA',
          category: 'Equipment electronics',
        ),
        ProductModel(
          title: "Rick Owens",
          price: "\$650",
          imageUrl: 'assets/images/winter_hooby.webp',
          rating: 4.8,
          distance: 1.2,
          time: 'Now',
          location: 'Colorado',
          seller: 'Barack J OBAMA',
          category: 'Equipment electronics',
        ),
        ProductModel(
          title: "Jacquemus",
          price: "\$420",
          imageUrl: "assets/images/winter_cap.webp",
          rating: 4.8,
          distance: 1.2,
          time: 'Now',
          location: 'Colorado',
          seller: 'Barack J OBAMA',
          category: 'Equipment electronics',
        ),
        ProductModel(
          title: "Prada",
          price: "\$720",
          imageUrl: "assets/images/winter_cap.webp",
          rating: 4.8,
          distance: 1.2,
          time: 'Now',
          location: 'Colorado',
          seller: 'Barack J OBAMA',
          category: 'Equipment electronics',
        ),
        ProductModel(
          title: "Balenciaga",
          price: "\$850",
          imageUrl: 'assets/images/clothe.jpeg',
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
    return Scaffold(
      appBar: AppBar(
        leadingWidth: Const.screenWidth(context) * 0.33,
        leading: SizedBox(
          height: 40,
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HomeMobileScreen()),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back, size: 22)),
                  SizedBox(width: 6),
                  Text("Back", style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(),
                SizedBox(height: 8),
                FilterBarWidget(),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.7,
                    children: products.map((product) {
                      return ProductCardWidget(product: product);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
