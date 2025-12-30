import 'package:flutter/material.dart';
import '../models/ui_component_item.dart';

class ComponentCard extends StatelessWidget {
  final UIComponentItem item;
  const ComponentCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue.shade100,
      elevation: 0,
      child: ListTile(
        title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.w700)),
        subtitle: Text(item.subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: item.builder)),
      ),
    );
  }
}
