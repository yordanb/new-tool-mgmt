import 'package:flutter/material.dart';

class SnackbarContent extends StatelessWidget {
  const SnackbarContent({
    super.key,
    this.color,
    required this.message,
    this.body,
    this.duration = 4,
  });
  final Color? color;
  final String message;
  final String? body;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: color ?? Theme.of(context).primaryColor,
            ),
            right: BorderSide(
              width: 1.0,
              color: color ?? Theme.of(context).primaryColor,
            ),
            bottom: BorderSide(
              width: 1.0,
              color: color ?? Theme.of(context).primaryColor,
            ),
            left: BorderSide(
              width: 8.0,
              color: color ?? Theme.of(context).primaryColor,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Theme.of(context).textTheme.displaySmall?.color,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (body != null) ...[
              const SizedBox(
                height: 4.0,
              ),
              Text(
                body!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Theme.of(context).textTheme.displaySmall?.color,
                  fontSize: 12.0,
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
