import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class ApplicationConfigDropdownField extends StatelessWidget {
  final String label;
  final dynamic value;
  final dynamic Function(dynamic, dynamic, dynamic) onChanged;
  final dynamic validator;

  const ApplicationConfigDropdownField({
    Key? key,
    required this.onChanged,
    required this.label,
    required this.value,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamList<ApplicationConfigEntity>(
      stream: sl<SnapshotApplicationConfigUseCase>().call(),
      shrinkWrap: true,
      itemsBuilder: (obj) {
        List<ApplicationConfigEntity> items = obj as List<ApplicationConfigEntity>;

        return QDropdownField(
          label: label,
          validator: validator,
          items: items.map((item) {
            return {
              "label": item.companyName,
              "value": item.id,
              "object_value": item,
            };
          }).toList(),
          value: value,
          onChanged: (value, label) {
             var mapValue =
                items.firstWhere((element) => element.id == value);
            onChanged(
              value,
              label,
              mapValue,
            );
          },
        );
      },
    );
  }
}