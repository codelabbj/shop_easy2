import 'package:flutter/material.dart';

import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';

class StatistiquesScreen extends StatefulWidget {
  const StatistiquesScreen({super.key});

  @override
  State<StatistiquesScreen> createState() => _StatistiquesScreenState();
}

class _StatistiquesScreenState extends State<StatistiquesScreen> {
  late Future<Map<String, dynamic>> _statsFuture;

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
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  AppBarWidget(),
                  // Expanded(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(24.0),
                  //     child: FutureBuilder<Map<String, dynamic>>(
                  //       future: _statsFuture,
                  //       builder: (context, snapshot) {
                  //         if (snapshot.connectionState == ConnectionState.waiting) {
                  //           return const Center(child: CircularProgressIndicator());
                  //         } else if (snapshot.hasError) {
                  //           return Center(child: Text("Erreur : ${snapshot.error}"));
                  //         } else {
                  //           final data = snapshot.data!;
                  //           return Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "Tableau de bord des statistiques",
                  //                 style: theme.textTheme.labelMedium?.copyWith(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: theme.colorScheme.primary,
                  //                 ),
                  //               ),
                  //               const SizedBox(height: 24),
                  //
                  //               // Grille des stats
                  //               Flexible(
                  //                 flex: 3,
                  //                 child: GridView.count(
                  //                   physics: const NeverScrollableScrollPhysics(),
                  //                   crossAxisCount: crossAxisCount,
                  //                   crossAxisSpacing: 20,
                  //                   mainAxisSpacing: 20,
                  //                   childAspectRatio: 2.8,
                  //                   children: [
                  //                     _buildStatCard(
                  //                       title: "Collaborateurs",
                  //                       value: data['total_collaborateurs'].toString(),
                  //                       icon: Icons.group,
                  //                       color: Colors.deepPurple,
                  //                     ),
                  //                     _buildStatCard(
                  //                       title: "Documents",
                  //                       value: data['total_documents'].toString(),
                  //                       icon: Icons.description,
                  //                       color: Colors.blue,
                  //                     ),
                  //                     _buildStatCard(
                  //                       title: "Vérifications",
                  //                       value: data['total_verifications'].toString(),
                  //                       icon: Icons.verified,
                  //                       color: Colors.green,
                  //                     ),
                  //                     _buildStatCard(
                  //                       title: "Types de Documents",
                  //                       value: data['total_types_documents'].toString(),
                  //                       icon: Icons.folder,
                  //                       color: Colors.orange,
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //
                  //               const SizedBox(height: 32),
                  //
                  //               // Histogramme
                  //               // Flexible(
                  //               //   flex: 5,
                  //               //   child: Card(
                  //               //     shape: RoundedRectangleBorder(
                  //               //       borderRadius: BorderRadius.circular(16),
                  //               //     ),
                  //               //     elevation: 5,
                  //               //     child: Padding(
                  //               //       padding: const EdgeInsets.all(20.0),
                  //               //       child: Column(
                  //               //         crossAxisAlignment: CrossAxisAlignment.start,
                  //               //         children: [
                  //               //           Text(
                  //               //             "Répartition des vérifications",
                  //               //             style: theme.textTheme.labelMedium?.copyWith(
                  //               //               fontWeight: FontWeight.bold,
                  //               //             ),
                  //               //           ),
                  //               //           const SizedBox(height: 24),
                  //               //
                  //               //           // Expanded(
                  //               //           //   child: _buildBarChart(data['graph_data']),
                  //               //           // ),
                  //               //         ],
                  //               //       ),
                  //               //     ),
                  //               //   ),
                  //               // ),
                  //             ],
                  //           );
                  //         }
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
