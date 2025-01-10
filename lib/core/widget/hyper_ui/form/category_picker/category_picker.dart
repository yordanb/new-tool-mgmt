//#TEMPLATE reuseable_category_picker
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';
import 'package:hyper_supabase/core/widget/hyper_ui/form/category_picker/styles/category_picker_fitted_style.dart';

class QCategoryPicker extends StatefulWidget {
  const QCategoryPicker({
    required this.items,
    required this.onChanged,
    super.key,
    this.itemBuilder,
    this.value,
    this.validator,
    this.label,
    this.hint,
    this.helper,
  });
  final List<Map<String, dynamic>> items;
  final String? label;
  final dynamic value;
  final String? Function(int? value)? validator;
  final String? hint;
  final String? helper;

  final Function(
    Map<String, dynamic> item,
    bool selected,
    Function action,
  )? itemBuilder;

  final Function(
    int index,
    String label,
    dynamic value,
    Map<String, dynamic> item,
  ) onChanged;

  @override
  State<QCategoryPicker> createState() => _QCategoryPickerState();
}

class _QCategoryPickerState extends State<QCategoryPicker> {
  List<Map<String, dynamic>> items = [];
  int selectedIndex = -1;

  void updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    final item = items[selectedIndex];
    final index = selectedIndex;
    final label = item['label'];
    final value = item['value'];
    widget.onChanged(index, label, value, item);
  }

  Widget getLabel() {
    if (widget.label == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.label}',
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
      ],
    );
  }

  @override
  void initState() {
    items = widget.items;
    if (widget.value != null) {
      selectedIndex = items.indexWhere((i) => i['value'] == widget.value);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: widget.label == null ? 0 : 12.0,
      ),
      child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
        return FormField(
          initialValue: false,
          validator: (value) =>
              widget.validator!(selectedIndex == -1 ? null : selectedIndex),
          builder: (FormFieldState<bool> field) {
            return InputDecorator(
              decoration: InputDecoration(
                labelText: widget.label,
                errorText: field.errorText,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                filled: false,
                fillColor: Colors.transparent,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                helperText: widget.helper,
                hintText: widget.hint,
                contentPadding: const EdgeInsets.all(0.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.label != null && widget.label!.isNotEmpty)
                      const SizedBox(
                        height: 6,
                      ),
                    CategoryPickerFittedStyle(
                      items: items,
                      onTap: updateIndex,
                      selectedIndex: selectedIndex,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

//#END
