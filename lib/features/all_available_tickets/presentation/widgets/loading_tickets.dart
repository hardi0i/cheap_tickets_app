import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/widgets/shimmer_widget.dart';
import 'package:flutter/widgets.dart';

class LoadingTickets extends StatelessWidget {
  const LoadingTickets({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    final cheapTicketsPalette = context.palette;

    return SizedBox(
      height: deviceHeight * 0.72,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 28,
        ),
        itemCount: 4,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            height: 117,
            padding: const EdgeInsets.all(
              16.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
              color: cheapTicketsPalette.thirdCardBackColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ShimmerWidget.rectangular(
                  height: 20,
                  width: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ShimmerWidget.circular(
                      height: 24,
                      width: 24,
                      shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShimmerWidget.rectangular(
                                  height: 15,
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                ShimmerWidget.rectangular(
                                  height: 15,
                                  width: 80,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            ShimmerWidget.rectangular(
                              height: 15,
                              width: 100,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
