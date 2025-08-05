import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, dynamic> product;

  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedColorIndex = 0;
  int selectedSizeIndex = 1;

  final List<Color> availableColors = [Colors.black, Colors.amber, Colors.blue, Colors.purple];
  final List<String> sizes = ['XS', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 🖼️ Image + icons
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFEDF4FF), Color(0xFFFFF1F1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Image.asset(product['image'], fit: BoxFit.contain),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            // 🔽 Scrollable details
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product['name'], style: Theme.of(context).textTheme.labelLarge),
                        Text('\$${product['price']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 18),
                        const SizedBox(width: 4),
                        Text("${product['rating']}", style: Theme.of(context).textTheme.labelSmall),
                        const SizedBox(width: 6),
                        Text("122 Reviews",
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                )),
                      ],
                    ),

                    const Divider(height: 24),

                    Text("Description", style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text(
                      "Soft and insulating, fleece is a common material in winter hoodies, providing warmth without heaviness.",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),

                    const SizedBox(height: 20),
                    Text("Color", style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),

                    // 🎨 Choix de couleur
                    Row(
                      children: List.generate(availableColors.length, (index) {
                        final color = availableColors[index];
                        return GestureDetector(
                          onTap: () => setState(() => selectedColorIndex = index),
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selectedColorIndex == index ? Colors.deepOrange : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(backgroundColor: color, radius: 14),
                          ),
                        );
                      }),
                    ),

                    const SizedBox(height: 20),
                    Text("Size", style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),

                    // 📏 Choix de taille
                    Row(
                      children: List.generate(sizes.length, (index) {
                        return GestureDetector(
                          onTap: () => setState(() => selectedSizeIndex = index),
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: selectedSizeIndex == index ? Colors.deepOrange : Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              sizes[index],
                              style: TextStyle(
                                color: selectedSizeIndex == index ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    const SizedBox(height: 80), // pour laisser de l’espace au bas
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ✅ Boutons fixes en bas
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.deepOrange),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  // Ajouter au panier
                },
                child: const Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
