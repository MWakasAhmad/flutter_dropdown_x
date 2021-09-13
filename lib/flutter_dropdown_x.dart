import 'package:flutter/material.dart';
class DropDownField extends StatelessWidget {
  final String? titleText;
  final String hintText;
  final bool? required;
  final String? errorText;
  final dynamic value;
  final List dataSource;
  final String textField;
  final String valueField;
  final Function(dynamic)? onChanged;
  final bool? filled;
  final EdgeInsets? contentPadding;
  final bool isEnabled;

  const DropDownField(
      {Key? key,
        this.titleText,
        required this.hintText,
        this.required,
        this.errorText,
        this.value,
        required this.dataSource,
        required this.textField,
        required this.valueField,
        this.onChanged,
        this.filled,
        this.contentPadding,
        this.isEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InputDecorator(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
              contentPadding: EdgeInsets.all(18),
              labelText: titleText,
              filled: filled,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<dynamic>(
                hint: Text(hintText),
                isExpanded: true,
                isDense: true,
                value: value == '' ? null : value,
                onChanged: isEnabled == true ? onChanged : null,
                // onChanged: onChanged,
                items: dataSource.map((item) {
                  return DropdownMenuItem<dynamic>(
                    value: item[valueField],
                    child: Text(item[textField], overflow: TextOverflow.ellipsis),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
