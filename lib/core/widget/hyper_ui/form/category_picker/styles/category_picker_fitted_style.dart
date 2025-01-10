import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class CategoryPickerFittedStyle extends StatelessWidget {
  final Function(int index) onTap;
  final List<Map<String, dynamic>> items;
  final int selectedIndex;
  const CategoryPickerFittedStyle({
    super.key,
    required this.items,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      return Row(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final count = item['count'] ?? 0;
          final selected = selectedIndex == index;
          final label = item['label'];

          double selectedExtraWidth = 30;
          double width =
              (constraints.maxWidth - selectedExtraWidth) / items.length;
          if (selected) {
            width += selectedExtraWidth;
          }
          return InkWell(
            onTap: () => onTap(index),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: width,
              height: 42,
              decoration: BoxDecoration(
                color: selected ? primaryColor : Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        label,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: selected
                              ? Colors.white
                              : textColor.withValues(alpha: 0.6),
                          fontWeight:
                              selected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    if (count > 0)
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          '$count',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      );
    });
  }
}
