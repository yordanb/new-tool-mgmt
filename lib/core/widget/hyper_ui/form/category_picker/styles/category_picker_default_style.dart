import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class CategoryPickerDefaultStyle extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;
  final List<Map<String, dynamic>> items;
  const CategoryPickerDefaultStyle({
    super.key,
    required this.onTap,
    required this.selectedIndex,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(0.0),
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(items.length, (index) {
          final selected = selectedIndex == index;
          final item = items[index];
          final count = item['count'] ?? 0;
          return Container(
            height: 32,
            margin: const EdgeInsets.only(
              right: 8,
            ),
            child: InkWell(
              onTap: () => onTap(index),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: selected ? primaryColor : disabledColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      item['label'],
                      style: TextStyle(
                        fontSize: 12,
                        color: selected ? Colors.white : textColor,
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
      ),
    );
  }
}
