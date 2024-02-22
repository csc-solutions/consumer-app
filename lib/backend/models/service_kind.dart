import 'package:fleet_consumer/helpers.dart';
import 'package:flutter/material.dart';

enum ServiceKind { airtime, bundle }

extension ServiceKindExtension on ServiceKind {
  String name(BuildContext context) {
    switch (this) {
      case ServiceKind.airtime:
        return l(context).airtime;
      case ServiceKind.bundle:
        return l(context).dataBundle;
    }
  }
}
