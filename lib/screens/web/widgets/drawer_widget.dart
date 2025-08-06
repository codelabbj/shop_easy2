import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constantes/const.dart';
import '../../../cubits/switch_page/switch_page_cubit.dart';
import '../../../cubits/switch_page/switch_page_state.dart';

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
        width: Const.screenWidth(context) * 0.2,
        height: Const.screenHeight(context),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Marketing'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: Const.screenWidth(context) * 0.19,
              height: 35,
              decoration: BoxDecoration(
                color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Theme.of(context).colorScheme.primary : Colors.white,
              ),
              child: TextButton(
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
                    Icon(
                      Icons.bar_chart,
                      color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Dashboard',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Colors.white : Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: Const.screenWidth(context) * 0.19,
              height: 35,
              decoration: BoxDecoration(
                color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Theme.of(context).colorScheme.primary : Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  context.read<SwitchPageCubit>().switchPage(3);
                  context.go('/document/List_document');
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
                    Icon(
                      Icons.shopping_basket,
                      color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      width: Const.screenWidth(context) * 0.1,
                      child: Text(
                        'Products',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Sytems'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: Const.screenWidth(context) * 0.19,
              height: 35,
              decoration: BoxDecoration(
                color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Theme.of(context).colorScheme.primary : Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  context.read<SwitchPageCubit>().switchPage(4);
                  context.go('/document/List_document');
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
                    Icon(
                      Icons.settings,
                      color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      width: Const.screenWidth(context) * 0.1,
                      child: Text(
                        'Settings',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Colors.white : Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Const.screenWidth(context) * 0.19,
              height: 35,
              child: Row(
                children: [
                  Icon(
                    Icons.dark_mode,
                    color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: Const.screenWidth(context) * 0.1,
                    child: Text(
                      'Dark mode',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.black,
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
