import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_easy3/cubits/switch_page/switch_page_state.dart';
import 'package:shop_easy3/screens/web/widgets/hover_app_bar.dart';

import '../../../constantes/const.dart';
import '../../../cubits/switch_page/switch_page_cubit.dart';
import 'hocer_drawer_menu.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchPageCubit, SwitchPageState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  padding: EdgeInsets.all(15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/Verified_original.png",
                  )),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Theme.of(context).colorScheme.primary : Colors.white,
                        ),
                        child: InkWell(
                          onTap: () {
                            context.read<SwitchPageCubit>().switchPage(0);
                            context.go('/dashboard');
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.dashboard_outlined,
                                color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Dashboard',
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          color: context.read<SwitchPageCubit>().state.selectedPage == 0 ? Colors.white : Colors.black,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.read<SwitchPageCubit>().state.selectedPage == 1 ? Theme.of(context).colorScheme.primary : Colors.white,
                        ),
                        child: TextButton(
                          onPressed: () {
                            context.read<SwitchPageCubit>().switchPage(1);
                            context.go("/products");
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
                                Icons.inbox,
                                color: context.read<SwitchPageCubit>().state.selectedPage == 1 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Products',
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          color: context.read<SwitchPageCubit>().state.selectedPage == 1 ? Colors.white : Colors.black,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     padding: EdgeInsets.all(10),
                    //     height: double.infinity,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Theme.of(context).colorScheme.primary : Colors.white,
                    //     ),
                    //     child: TextButton(
                    //       onPressed: () {
                    //         context.read<SwitchPageCubit>().switchPage(2);
                    //         context.go('/orders');
                    //       },
                    //       style: ButtonStyle(
                    //         overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    //           (Set<MaterialState> states) {
                    //             if (states.contains(MaterialState.hovered)) {
                    //               return Colors.transparent; // Pas d'effet au survol
                    //             }
                    //             return null; // Laisser les autres états par défaut
                    //           },
                    //         ),
                    //       ),
                    //       child: Row(
                    //         children: [
                    //           Icon(
                    //             Icons.shopping_bag_outlined,
                    //             color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                    //           ),
                    //           SizedBox(width: 5),
                    //           Expanded(
                    //             child: SizedBox(
                    //               height: 20,
                    //               child: Text(
                    //                 'Orders',
                    //                 style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    //                       color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Colors.white : Colors.black,
                    //                     ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Theme.of(context).colorScheme.primary : Colors.white,
                        ),
                        child: PopupMenuButton<int>(
                          tooltip: '',
                          position: PopupMenuPosition.under,
                          color: Colors.white,
                          onSelected: (value) {
                            if (value == 1) {
                              context.read<SwitchPageCubit>().switchPage(2);
                              context.go('/orders');
                            } else if (value == 2) {
                              context.read<SwitchPageCubit>().switchPage(2);
                              context.go('/orders/returns');
                            }
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: HoverAppBar(
                                label: 'Orders list',
                                imageUrl: "assets/images/shopping-bag.png",
                                isSelected: context.read<SwitchPageCubit>().state.selectedPage == 2,
                                onTap: () {
                                  context.read<SwitchPageCubit>().switchPage(2);
                                  context.go('/orders');
                                },
                              ),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: HoverAppBar(
                                label: 'Orders returns',
                                imageUrl: "assets/images/menu.png",
                                isSelected: context.read<SwitchPageCubit>().state.selectedPage == 4,
                                onTap: () {
                                  context.read<SwitchPageCubit>().switchPage(4);
                                },
                              ),
                            ),
                          ],
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Orders',
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          color: context.read<SwitchPageCubit>().state.selectedPage == 2 ? Colors.white : Colors.black,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Theme.of(context).colorScheme.primary : Colors.white,
                        ),
                        child: TextButton(
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
                                return null; // Laisser les autres états par défaut
                              },
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.campaign_outlined,
                                color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Coupons',
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          color: context.read<SwitchPageCubit>().state.selectedPage == 3 ? Colors.white : Colors.black,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Theme.of(context).colorScheme.primary : Colors.white,
                        ),
                        child: TextButton(
                          onPressed: () {
                            context.read<SwitchPageCubit>().switchPage(4);
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
                          child: PopupMenuButton(
                            tooltip: '',
                            position: PopupMenuPosition.under,
                            color: Colors.white,
                            onSelected: (value) {
                              if (value == 1) {
                                context.read<SwitchPageCubit>().switchPage(2);
                                context.go('/orders');
                              } else if (value == 2) {
                                context.read<SwitchPageCubit>().switchPage(2);
                                context.go('/orders/returns');
                              } else if (value == 3) {
                                context.read<SwitchPageCubit>().switchPage(4);
                                context.go('/revenues');
                              }
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: HoverAppBar(
                                  label: 'Withdrawal',
                                  imageUrl: "assets/images/shopping-bag.png",
                                  isSelected: context.read<SwitchPageCubit>().state.selectedPage == 2,
                                  onTap: () {
                                    context.read<SwitchPageCubit>().switchPage(2);
                                    context.go('/orders');
                                  },
                                ),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: HoverAppBar(
                                  label: 'Reviews',
                                  imageUrl: "assets/images/menu.png",
                                  isSelected: context.read<SwitchPageCubit>().state.selectedPage == 4,
                                  onTap: () {
                                    context.read<SwitchPageCubit>().switchPage(4);
                                  },
                                ),
                              ),
                              PopupMenuItem(
                                value: 3,
                                child: HoverAppBar(
                                  label: 'Revenues',
                                  imageUrl: "assets/images/menu.png",
                                  isSelected: context.read<SwitchPageCubit>().state.selectedPage == 4,
                                  onTap: () {
                                    context.read<SwitchPageCubit>().switchPage(4);
                                    context.go('/revenues');
                                  },
                                ),
                              ),
                            ],
                            child: Row(
                              children: [
                                Icon(
                                  Icons.pie_chart_outline_outlined,
                                  color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Colors.white : Colors.grey.withValues(alpha: 0.2),
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                  child: SizedBox(
                                    height: 20,
                                    child: Text(
                                      'Others',
                                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                            color: context.read<SwitchPageCubit>().state.selectedPage == 4 ? Colors.white : Colors.black,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  padding: EdgeInsets.all(11),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15), // Padding à gauche et à droite
                          decoration: BoxDecoration(
                            color: Colors.grey[200], // Fond gris clair
                            borderRadius: BorderRadius.circular(30), // Bord arrondi si tu veux
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: Theme.of(context).textTheme.labelSmall,
                            decoration: InputDecoration(
                              isDense: true,

                              prefixIcon: Icon(
                                Icons.search,
                                size: 18,
                              ),
                              border: InputBorder.none, // Pas de bordure
                              hintText: 'Search Anything...', // Texte d'exemple
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                        child: Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                        child: Icon(
                          Icons.settings_outlined,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                        child: Icon(
                          Icons.person_2_outlined,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        );
      },
    );
  }
}
