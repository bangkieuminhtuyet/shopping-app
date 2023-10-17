import 'package:flutter/material.dart';

Future<void> navigateToScreen({context, screen}) async {
  
  await Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}
