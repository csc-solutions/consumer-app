import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final String title;
  final bool enabled;
  final String secondaryOptionTitle;
  final Function() onSecondaryOptionPressed;
  final String primaryOptionTitle;
  final VoidCallback onPrimaryOptionPressed;
  final Widget child;

  const DataCard({
    this.enabled = true,
    required this.title,
    required this.onSecondaryOptionPressed,
    required this.secondaryOptionTitle,
    required this.primaryOptionTitle,
    required this.onPrimaryOptionPressed,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: kElevationToShadow[1],
          borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: onSecondaryOptionPressed,
                  child: Text(secondaryOptionTitle))
            ],
          ),
          child,
          const SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: FilledButton(
                  onPressed: !enabled ? null : onPrimaryOptionPressed,
                  child: Text(primaryOptionTitle)))
        ],
      ),
    );
  }
}
