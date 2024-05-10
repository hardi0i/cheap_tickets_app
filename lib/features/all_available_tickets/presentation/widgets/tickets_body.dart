import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/custom_app_bar.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/tickets_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketsBody extends StatelessWidget {
  const TicketsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        16,
      ),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 28,
                ),
                const CustomAppBar(),
                const TicketsList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
