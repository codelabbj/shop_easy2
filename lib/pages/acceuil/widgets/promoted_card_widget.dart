import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

class PromotedCard extends StatelessWidget {
  final ProductModel product;

  const PromotedCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(product.imageUrl, height: 60, width: 60),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis)),
                Text('\$${product.price}', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.blue)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6)),
                  child: Text('🔥 Promoted', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, fontSize: 12)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
