import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class LoanTransactionItemAutocompleteField extends StatelessWidget {
  final String label;
  final dynamic value;
  final dynamic Function(dynamic, dynamic, dynamic) onChanged;
  final dynamic validator;
  final bool enabled;

  const LoanTransactionItemAutocompleteField({
    Key? key,
    required this.onChanged,
    required this.label,
    required this.value,
    this.enabled = true,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamList<LoanTransactionItemEntity>(
      stream: sl<SnapshotLoanTransactionItemUseCase>().call(),
      shrinkWrap: true,
      itemsBuilder: (obj) {
        List<LoanTransactionItemEntity> items =
            obj as List<LoanTransactionItemEntity>;

        return QAutoComplete(
          label: label,
          validator: validator,
          enabled: enabled,
          items: items.map((item) {
            return {
              "label": item.id,
              "value": item.id,
              "object_value": item,
            };
          }).toList(),
          value: value,
          onChanged: (value, label) {
            if (value == null) {
              onChanged(
                null,
                null,
                null,
              );
              return;
            }

            var mapValue = items.firstWhere((element) => element.id == value);
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
