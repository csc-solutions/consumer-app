import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

var logger = Logger("app");

initLogging() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    if (record.stackTrace != null) {
      debugPrintStack(
          label: record.error?.toString(), stackTrace: record.stackTrace!);
      return;
    }
  });
}