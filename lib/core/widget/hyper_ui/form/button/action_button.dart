//#TEMPLATE reuseable_action_button
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class QActionButton extends StatelessWidget {
  const QActionButton({
    required this.label,
    required this.onPressed,
    super.key,
    this.icon,
    this.color,
    this.enabled = true,
  });
  final String label;
  final Function onPressed;
  final Color? color;
  final IconData? icon;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    const padding = 12.0;

    return Container(
      padding: const EdgeInsets.all(padding),
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        children: [
          QButton(
            label: label,
            icon: icon,
            enabled: enabled,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

//#END
