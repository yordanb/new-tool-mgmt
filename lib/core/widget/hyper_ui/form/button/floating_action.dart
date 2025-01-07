import 'package:flutter/material.dart';

Widget FloatingAction({
  required Function onPressed,
}) {
  return FloatingActionButton(
    heroTag: UniqueKey(),
    onPressed: () async {
      onPressed();
    },
    child: const Icon(Icons.add),
  );
}

Widget FloatingActions({
  required List<Widget> children,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: List.generate(children.length, (index) {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: children[index],
      );
    }),
  );
}
