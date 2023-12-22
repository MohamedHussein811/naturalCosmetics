import 'package:flutter/material.dart';

class SkinPage extends StatelessWidget {
  const SkinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skin Page'),
      ),
      body: const Center(
        child: Text('Skin Page Content'),
      ),
    );
  }
}