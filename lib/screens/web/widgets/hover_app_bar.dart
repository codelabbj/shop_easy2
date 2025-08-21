import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoverAppBar extends StatefulWidget {
  final String label;
  final String imageUrl;
  final VoidCallback onTap;
  final bool isSelected;

  const HoverAppBar({
    super.key,
    required this.label,
    required this.imageUrl,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<HoverAppBar> createState() => _HoverAppBarState();
}

class _HoverAppBarState extends State<HoverAppBar> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isActive = widget.isSelected || _isHovered;
    final primaryColor = Theme.of(context).colorScheme.primary;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: isActive ? primaryColor : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                widget.imageUrl,
                height: 17,
                width: 17,
                color: isActive ? primaryColor : Colors.black,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.label,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: isActive ? primaryColor : Colors.black,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
