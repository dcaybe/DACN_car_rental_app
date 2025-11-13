import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final IconData iconLeading;
  final String? title;
  // final IconData iconTrailing;
  const ListTitle(
      {super.key,
      required this.iconLeading,
      // required this.iconTrailing,
      this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconLeading, size: 28),
      title: Text(title.toString(), style: const TextStyle(fontSize: 16)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
