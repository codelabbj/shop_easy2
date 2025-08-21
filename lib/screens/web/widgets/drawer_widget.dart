import 'dart:developer';

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
                  Icon(Icons.close),
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
                      icon: Image.asset(
                        "assets/images/menu.png",
                        height: 22,
                        width: 22,
                        color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Theme.of(context).colorScheme.primary : Colors.black,
                      ),
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
                context.read<SwitchPageCubit>().switchPage(3);
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
                      icon: Image.asset(
                        "assets/images/product.png",
                        height: 22,
                        width: 22,
                        color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Theme.of(context).colorScheme.primary : Colors.black,
                      ),
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 3,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(3);
                        context.go('/Products');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(4);
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
                      icon: const Icon(Icons.shopping_bag_outlined),
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
                      label: 'Orders returns',
                      icon: Image.asset(
                        "assets/images/menu.png",
                        height: 22,
                        width: 22,
                        color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Theme.of(context).colorScheme.primary : Colors.black,
                      ),
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 0,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(0);
                        context.go('/orders-return');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(4);
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
                      label: 'Reviews',
                      icon: Icon(
                        Icons.star_half_outlined,
                        color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Theme.of(context).colorScheme.primary : Colors.black,
                      ),
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 0,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(1);
                        context.go('/reviews');
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SwitchPageCubit>().switchPage(4);
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
                      label: 'Coupons',
                      icon: Image.asset(
                        "assets/images/promotion.png",
                        height: 22,
                        width: 22,
                        color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Theme.of(context).colorScheme.primary : Colors.black,
                      ),
                      isSelected: context.read<SwitchPageCubit>().state.selectedPage == 0,
                      onTap: () {
                        context.read<SwitchPageCubit>().switchPage(1);
                        context.go('/copons');
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
