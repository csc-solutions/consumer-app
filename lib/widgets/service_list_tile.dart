import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/widgets/service_image.dart';
import 'package:flutter/material.dart';

class ServiceListTile extends StatelessWidget {
  const ServiceListTile({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.title,
    this.subtitle,
    this.trailing,
  });
  final VoidCallback onTap;
  final String imageUrl;
  final String title;
  final String? subtitle;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border:
            Border.all(color: FleetConsumerApp.primaryColor.withOpacity(0.2)),
        color: Colors.white,
      ),
      child: ListTile(
        onTap: onTap,
        leading: ServiceImage(imageUrl: imageUrl),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing != null
            ? Text(trailing!)
            : const Icon(Icons.chevron_right),
      ),
    );
  }
}
