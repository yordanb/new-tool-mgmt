import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class QDialogCategoryWrapPickerField extends StatefulWidget {
  final String label;
  final String value;
  final List<Map<String, dynamic>> items;
  final Function(dynamic value, String label) onChanged;
  const QDialogCategoryWrapPickerField({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  State<QDialogCategoryWrapPickerField> createState() =>
      _QDialogCategoryWrapPickerFieldState();
}

class _QDialogCategoryWrapPickerFieldState
    extends State<QDialogCategoryWrapPickerField> {
  dynamic value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // FocusNode focusNode = FocusNode();
        // Future.delayed(const Duration(milliseconds: 300), () {
        //   focusNode.requestFocus();
        // });
        await showDialog<void>(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    QCategoryWrapPicker(
                      label: widget.label,
                      items: widget.items,
                      value: value,
                      onChanged: (index, label, value, item) {
                        widget.onChanged(value, label);
                        value = value;
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_drop_down,
              size: 16.0,
            ),
            const SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Text(
                value.isEmpty ? widget.label : value,
                style: const TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
