// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// import '../../cubits/switch_page/switch_page_cubit.dart';
// import '../../cubits/switch_page/switch_page_state.dart';
//
// class DashboardHomeScreen extends StatefulWidget {
//   final Widget widget;
//
//   const DashboardHomeScreen({
//     super.key,
//     required this.widget,
//   });
//
//   @override
//   State<DashboardHomeScreen> createState() => _DashboardHomeScreenState();
// }
//
// class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _checkAuthentication();
//   //
//   // }
//   //
//   // void _checkAuthentication() async {
//   //   final token = SharedPreferencesUtils.getString('auth_token');
//   //   if (token == null || token.isEmpty) {
//   //     // Rediriger vers la page de login
//   //     context.go('/login'); // ou Navigator.of(context).pushReplacementNamed('/login');
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Expanded(
//
//             // child: BlocBuilder<SwitchPageCubit, SwitchPageState>(builder: (context, state) {
//             //   if (state.selectedPage == 0) {
//             //     return StatistiquesScreen();
//             //   } else if (state.selectedPage == 5) {
//             //     return ListDocumentScreen();
//             //   } else if (state.selectedPage == 2) {
//             //     return NewDocumentScreen();
//             //   } else if (state.selectedPage == 3) {
//             //     return HistoryScreen();
//             //   } else if (state.selectedPage == 4) {
//             //     return RapportsScreen();
//             //   } else if (state.selectedPage == 7) {
//             //     return ListCollaborateurScreen();
//             //   } else if (state.selectedPage == 8) {
//             //     return NewCollaborateurScreen();
//             //   } else {
//             //     return Center(
//             //       child: Text("Page not found", style: Theme.of(context).textTheme.labelMedium),
//             //     );
//             //   }
//             // }),
//             ));
//   }
// }
