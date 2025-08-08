import 'package:flutter/material.dart';

import 'package:shop_easy3/screens/web/products/widgets/product_table_widget.dart';
import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../../widgets/card_list_widget.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
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
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: CardListWidget(
                      title: "Product List",
                      subtitle: "Tracks stocks levels.",
                      actions: [
                        Container(
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
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.picture_in_picture_alt_outlined, size: 18, color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Icon(Icons.grid_view, size: 18, color: Colors.grey),
                              Icon(
                                Icons.table_rows_outlined,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
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
