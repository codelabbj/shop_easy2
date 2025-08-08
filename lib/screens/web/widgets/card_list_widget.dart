import 'package:flutter/material.dart';

class CardListWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> actions; // boutons en haut à droite
  final Widget child; // le contenu : grille ou table

  const CardListWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.actions,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(0, 3), // Décalage horizontal et vertical de l'ombre
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.grey[300]),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 10,
              ),
              Row(children: actions),
            ],
          ),
          const SizedBox(height: 16),

          // CONTENT
          Expanded(child: child),
        ],
      ),
    );
  }
}
