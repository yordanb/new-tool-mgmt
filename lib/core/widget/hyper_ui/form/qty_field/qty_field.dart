//#TEMPLATE reuseable_number_field
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class QQtyField extends StatefulWidget {
  const QQtyField({
    required this.label,
    required this.onChanged,
    super.key,
    this.value,
    this.validator,
    this.hint,
    this.helper,
    this.onSubmitted,
    this.pattern,
    this.locale = 'en_US',
    this.maxLength,
    this.hideSuffix = false,
    this.enabled = true,
  });
  final String label;
  final String? value;
  final String? hint;
  final String? helper;
  final bool enabled;
  final String? Function(String?)? validator;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;

  final String? pattern;
  final String? locale;
  final int? maxLength;
  final bool hideSuffix;

  @override
  State<QQtyField> createState() => _QQtyFieldState();
}

class _QQtyFieldState extends State<QQtyField> {
  String? value;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    value = widget.value?.replaceAll(RegExp('[^0-9.]'), '');
    print('value: $value');
    print('value: ${widget.value}');
    controller = TextEditingController();
    controller.text = formattedValue?.toString() ?? '';
  }

  String? get formattedValue {
    if (widget.pattern != null) {
      final currencyFormat = NumberFormat(widget.pattern, widget.locale);
      final pValue = num.tryParse(value.toString()) ?? 0;
      return currencyFormat.format(pValue);
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      constraints: const BoxConstraints(
        minHeight: 32,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 2.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                int current = int.tryParse(controller.text) ?? 0;
                if (current == 1) return;
                current--;
                controller.text = current.toString();
                if (widget.onSubmitted != null) {
                  widget.onSubmitted!(
                      current.toString().replaceAll(RegExp(r'\D'), ''));
                }
              },
              child: const Icon(Icons.remove, color: Colors.grey),
            ),
            Container(
              width: 50.0,
              child: TextFormField(
                controller: controller,
                validator: widget.validator,
                keyboardType: TextInputType.number,
                maxLength: widget.maxLength,
                enabled: widget.enabled,
                textAlign: TextAlign.center,
                decoration: InputDecoration.collapsed(
                  hintText: widget.hint,
                ),
                onChanged: (newValue) {
                  final newValue = controller.text;
                  print('newValue: $newValue');

                  value = newValue.replaceAll(RegExp('[^0-9.]'), '');

                  print('value: $value');
                  controller.text = formattedValue ?? '';
                  controller.selection =
                      TextSelection.collapsed(offset: controller.text.length);

                  // widget.onChanged(newValue.replaceAll(RegExp(r'\D'), ''));
                  widget.onChanged(newValue);
                },
                onFieldSubmitted: (newValue) {
                  final newValue = controller.text;
                  print('newValue: $newValue');
                  value = newValue.replaceAll(RegExp('[^0-9.]'), '');

                  print('value: $value');
                  controller.text = formattedValue ?? '';
                  controller.selection =
                      TextSelection.collapsed(offset: controller.text.length);

                  if (widget.onSubmitted != null) {
                    widget.onSubmitted!(newValue.replaceAll(RegExp(r'\D'), ''));
                  }
                },
              ),
            ),
            InkWell(
              onTap: () {
                int current = int.tryParse(controller.text) ?? 0;
                current++;
                controller.text = current.toString();
                if (widget.onSubmitted != null) {
                  widget.onSubmitted!(
                      current.toString().replaceAll(RegExp(r'\D'), ''));
                }
              },
              child: const Icon(Icons.add, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

//#END
