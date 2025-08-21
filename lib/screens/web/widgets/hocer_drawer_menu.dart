import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoverableDrawerItem extends StatefulWidget {
  final String label;
  final Widget icon;
  final VoidCallback onTap;
  final bool isSelected;

  const HoverableDrawerItem({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<HoverableDrawerItem> createState() => _HoverableDrawerItemState();
}

class _HoverableDrawerItemState extends State<HoverableDrawerItem> {
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
              IconTheme(
                data: IconThemeData(
                  color: isActive ? primaryColor : Colors.black,
                  size: 20,
                ),
                child: widget.icon,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.label,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
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
