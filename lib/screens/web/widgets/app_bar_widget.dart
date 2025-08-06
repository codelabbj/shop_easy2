import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constantes/const.dart';
import '../../../cubits/switch_page/switch_page_cubit.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.all(15),
              width: Const.screenWidth(context) * 0.14,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/Verified_original.png",
              )),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
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
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/Verified_original.png",
                )),
          ),
        ],
      ),
    );
  }
}
