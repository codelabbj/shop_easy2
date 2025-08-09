import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shop_easy3/screens/mobile/pages/home_mobile_screen.dart';
import 'package:shop_easy3/screens/mobile/utils/theme/app_theme_light.dart';
import 'package:shop_easy3/screens/web/authentification_/login_screen.dart';
import 'package:shop_easy3/screens/web/authentification_/register_screen.dart';
import 'package:shop_easy3/screens/web/orders/screens/list_orders_screen.dart';
import 'package:shop_easy3/screens/web/products/screens/list_grid_product_screen.dart';

import 'package:shop_easy3/screens/web/products/screens/list_product_screen.dart';
import 'package:shop_easy3/screens/web/statistiques/screen/statistiques_screen.dart';

import 'cubits/switch_page/switch_page_cubit.dart';

void main() {
  runApp(const MyApp());
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.white,
  primary: Color(0xFFFF5722),
);
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    // GoRoute(
    //   path: '/login',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const LoginPage();
    //   },
    // ),
    // GoRoute(
    //   path: '/dashboard',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(0);
    //     return const StatistiquesScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/document/List_document',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(1); // Sélectionner la page Liste des documents
    //     return ListDocumentScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/document/nouveau_document',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(2); // Sélectionner la page Nouveau document
    //     return const NewDocumentScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/historiques',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(3); // Sélectionner la page Collaborateurs
    //     return DashboardHomeScreen(widget: const HistoryScreen());
    //   },
    // ),
    // GoRoute(
    //   path: '/collaborateur/List_collaborateurs',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(7); // Sélectionner la page Liste des documents
    //     return ListCollaborateurScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/collaborateur/nouveau_collaborateur',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(8);
    //     return const NewCollaborateurScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/rapports',
    //   builder: (BuildContext context, GoRouterState state) {
    //     context.read<SwitchPageCubit>().switchPage(4);
    //     return const RapportsScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const UserVerifyPage();
    //   },
    // ),
    // GoRoute(
    //   path: '/document/view/:identifier',
    //   builder: (context, state) {
    //     final identifier = state.pathParameters['identifier']!;
    //     return DocumentDetailsScreen(
    //       documentId: 1,
    //     );
    //   },
    // ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SwitchPageCubit>(
            create: (context) => SwitchPageCubit(),
            child: StatistiquesScreen(),
          ),
        ],
        child: Builder(builder: (context) {
          WidgetsBinding.instance.addPostFrameCallback((_) {});
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            // routerConfig: _router,
            theme: ThemeData().copyWith(
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFFFCFCFC),
              ),
              scaffoldBackgroundColor: const Color(0xFFFCFCFC),
              colorScheme: kColorScheme,
              textTheme: const TextTheme().copyWith(
                displayLarge: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Colors.black,
                ),
                labelLarge: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: Colors.black,
                ),
                displayMedium: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                ),
                labelSmall: GoogleFonts.montserrat(
                  fontSize: 13,
                  color: Colors.black,
                ),
                displaySmall: GoogleFonts.montserrat(
                  fontSize: 11,
                  color: Colors.black,
                ),
                labelMedium: GoogleFonts.montserrat(
                  fontSize: 17,
                  color: Colors.black,
                ),
                titleSmall: GoogleFonts.montserrat(
                  fontSize: 8,
                  color: Colors.black,
                ),
              ),
            ),
            home: ListProductScreen(),
          );
        }));
  }
}
