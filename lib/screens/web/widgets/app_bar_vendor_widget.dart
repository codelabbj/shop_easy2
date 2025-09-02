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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                  builder: (context) => InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer(); // Ouvre le Drawer
                      },
                      child: Image.asset(
                        "assets/images/drawer.png",
                        width: 32,
                        height: 32,
                      ))),
              const SizedBox(width: 8),
              const Text(
                "Shofy.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 20),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        "assets/images/shopping-bag.png",
                        width: 30,
                        height: 30,
                      ),
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
                  const Icon(Icons.logout_outlined, size: 28, color: Colors.red),

                  // Menu hamburger
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
