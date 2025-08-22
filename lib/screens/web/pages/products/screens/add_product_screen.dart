import 'package:flutter/material.dart';

import 'package:shop_easy3/screens/web/widgets/app_bar_widget.dart';

import '../widgets/categorie_check_widget.dart';
import '../widgets/product_form2_widget.dart';
import 'add_product_info_screen.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
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
        child: Column(
          children: [
            SizedBox(height: 60, child: AppBarWidget()),
            // SingleChildScrollView(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 2,
            //         child: Column(
            //           children: [AddProductInfo(), SizedBox(height: 12), ProductForm2Widget(), SizedBox(height: 12), AddProductImageScreen()],
            //         ),
            //       ),
            //       // Expanded(flex: 1, child: FilterSidebar())
            //     ],
            //   ),
            // )
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Column(children: [
                          AddProductInfo(),
                          SizedBox(height: 12),
                          ProductForm2Widget(),
                          SizedBox(height: 12),
                          // AddProductImageScreen(),
                        ])),

                    Flexible(flex: 1, child: FilterSidebar()),
                    //
                    //
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
