import 'package:cheap_tickets_app/features/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class LoadingRecommendedPlacesCard extends StatelessWidget {
  const LoadingRecommendedPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget.circular(
      key: const Key('loading'),
      width: double.infinity,
      height: 216,
      shapeBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
    );
  }
}
