import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class LoanTransactionCheckField extends StatelessWidget {
  final String label;
  final dynamic value;
  final dynamic Function(
    List ids,
    List labels,
    List objectValues,
  ) onChanged;
  final dynamic validator;

  const LoanTransactionCheckField({
    Key? key,
    required this.onChanged,
    required this.label,
    this.value,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamList<LoanTransactionEntity>(
      stream: sl<SnapshotLoanTransactionUseCase>().call(),
      shrinkWrap: true,
      itemsBuilder: (obj) {
        List<LoanTransactionEntity> items = obj as List<LoanTransactionEntity>;

        return QCheckField(
          label: label,
          validator: validator,
          items: items.map((item) {
            return {
              "label": item.id,
              "value": item.id,
              "object_value": item,
            };
          }).toList(),
          value: value == null ? null : jsonDecode(value),
          onChanged: (value, label) {
            var ids = value.map((i) => i['value']).toList();
            var labels = value.map((i) => i['label']).toList();
            var mapValues = value.map((i) => i['object_value']).toList();
            onChanged(
              ids,
              labels,
              mapValues,
            );
          },
        );
      },
    );
  }
}