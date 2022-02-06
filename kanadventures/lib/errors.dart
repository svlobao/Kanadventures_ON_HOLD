import 'package:flutter/material.dart';

Route<dynamic> errorRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text('Error 404'),
      ),
      body: const Center(
        child: Text('Error 404: Page not found'),
      ),
    ),
  );
}
