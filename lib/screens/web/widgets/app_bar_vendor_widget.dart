import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_easy3/cubits/switch_page/switch_page_state.dart';

import '../../../constantes/const.dart';
import '../../../cubits/switch_page/switch_page_cubit.dart';

class AppBarVendorWidget extends StatelessWidget {
  const AppBarVendorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchPageCubit, SwitchPageState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                "assets/logo.png", // ton image
                height: 40,
              ),
              const SizedBox(width: 8),
              const Text(
                "Shofy.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  // Upload/download
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(Icons.sync_alt, size: 28, color: Colors.black87),
                      Positioned(
                        right: -6,
                        top: -6,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: const Text(
                            "0",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(Icons.shopping_bag_outlined, size: 28, color: Colors.black87),
                      Positioned(
                        right: -6,
                        top: -6,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: const Text(
                            "0",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  // Menu hamburger
                  Builder(
                    // <--- Important
                    builder: (context) => IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer(); // Ouvre le Drawer
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
