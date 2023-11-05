import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jellybean/src/presentation/pages/screen_a/property_form_provider.dart';

class ScreenB extends ConsumerWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final propertyFormDataPod = ref.watch(propertyFormDataProvider);
    return Container(
      color: Colors.green[800],
      child: Center(
        child: Text(propertyFormDataPod.name),
      ),
    );
  }
}
