import 'package:cheap_tickets_app/features/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingOffers extends StatelessWidget {
  const LoadingOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214,
      width: double.infinity,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        itemCount: 3,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: ShimmerWidget.circular(
                  height: 132,
                  width: 132,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const ShimmerWidget.rectangular(
                height: 16,
                width: 100,
              ),
              const SizedBox(
                height: 8,
              ),
              const ShimmerWidget.rectangular(
                height: 12,
                width: 80,
              ),
              const SizedBox(
                height: 8,
              ),
              const ShimmerWidget.rectangular(
                height: 12,
                width: 80,
              ),
            ],
          );
        },
      ),
    );
  }
}
