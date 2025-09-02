import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constantes/const.dart';
import '../../../cubits/switch_page/switch_page_cubit.dart';
import '../../../cubits/switch_page/switch_page_state.dart';
import 'hocer_drawer_menu.dart';

class DrawerDashboard extends StatefulWidget {
  const DrawerDashboard({super.key});

  @override
  State<DrawerDashboard> createState() => _DrawerDashboardState();
}

class _DrawerDashboardState extends State<DrawerDashboard> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<CollaborateursCubit>().getCustomerDetails();
  //   _loadRoleId();
  // }
  //
  // Future<void> _loadRoleId() async {
  //   final id = await SharedPreferencesUtils.getInt('role_id');
  //   log("Voici le roleId: $id");
  //   setState(() {
  //     roleId = id;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchPageCubit, SwitchPageState>(
      builder: (context, state) => Container(
        width: Const.screenWidth(context) * 0.6,
        height: Const.screenHeight(context),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15, right: 10),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // ferme le drawer
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(0);
                context.go('/dashboard');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null; // Laisser les autres états par défaut
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Dashboard',
                      imageUrl: "assets/images/menu.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 0,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(0);
                        context.go('/dashboard');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(1);
                context.go('/products');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null; // Laisser les autres états par défaut
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Products',
                      imageUrl: "assets/images/product.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 1,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(1);
                        context.go('/products');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(2);
                context.go('/orders');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null; // Laisser les autres états par défaut
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Orders',
                      imageUrl: "assets/images/shopping-bag.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 2,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(2);
                        context.go('/orders');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(4);
                context.go('/orders-return');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null; // Laisser les autres états par défaut
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Orders returns',
                      imageUrl: "assets/images/reply.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 4,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(4);
                        context.go('/orders-return');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(5);
                context.go('/revenues');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null; // Laisser les autres états par défaut
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Reviews',
                      imageUrl: "assets/images/engrenages.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 5,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(5);
                        context.go('/reviews');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(3);
                context.go('/coupons');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null;
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Coupons',
                      imageUrl: "assets/images/promotion.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 3,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(3);
                        context.go('/coupons');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(13);
                context.go('/settings');
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.transparent; // Pas d'effet au survol
                    }
                    return null;
                  },
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: HoverableDrawerItem(
                      label: 'Settings',
                      imageUrl: "assets/images/settings.png",
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 13,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(13);
                        context.go('/settings');
                      },
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
