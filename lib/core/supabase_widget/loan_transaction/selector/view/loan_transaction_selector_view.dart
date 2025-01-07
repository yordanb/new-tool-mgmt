import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class LoanTransactionSelectorField extends StatelessWidget {
  final String label;
  final dynamic value;
  final dynamic Function(dynamic, dynamic, dynamic, dynamic) onChanged;
  final dynamic validator;

  const LoanTransactionSelectorField({
    Key? key,
    required this.onChanged,
    required this.label,
    required this.value,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamList<LoanTransactionEntity>(
      stream: sl<SnapshotLoanTransactionUseCase>().call(),
      shrinkWrap: true,
      itemsBuilder: (obj) {
        List<LoanTransactionEntity> items = obj as List<LoanTransactionEntity>;

        return QCategoryPicker(
          validator: validator,
          items: items.map((item) {
            return {
              "label": item.id,
              "value": item.id,
              "object_value": item,
            };
          }).toList(),
          value: value,
          onChanged: (index, label, value, item) {
            onChanged(index, value, label, item);
          },
        );
      },  
    );
  }
}