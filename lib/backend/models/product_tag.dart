import 'package:flutter/material.dart';

enum ProductTag { daily, weekly, monthly }

extension ProductionTagExtension on ProductTag {
  String name(BuildContext context) {
    switch (this) {
      case ProductTag.weekly:
        return "Weekly";
      case ProductTag.daily:
        return "Daily";
      case ProductTag.monthly:
        return "Monthly";
    }
  }
}
