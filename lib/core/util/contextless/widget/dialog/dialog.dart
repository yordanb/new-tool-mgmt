import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

Future<bool> confirm({
  required String title,
  required String message,
}) async {
  bool confirm = false;
  await showDialog<void>(
    context: currentContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.grey[600],
            // ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("No"),
          ),
          ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.blueGrey,
            // ),
            onPressed: () {
              confirm = true;
              Navigator.pop(context);
            },
            child: const Text("Yes"),
          ),
        ],
      );
    },
  );
  return confirm;
}
