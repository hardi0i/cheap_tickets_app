import 'package:cheap_tickets_app/features/widgets/shimmer_widget.dart';
import 'package:flutter/widgets.dart';

class LoadingTicketsInfo extends StatelessWidget {
  const LoadingTicketsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
      ),
      child: ShimmerWidget.circular(
        height: 288,
        width: double.infinity,
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
    );
  }
}
