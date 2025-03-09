import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../base/app_utils/app_json.dart';
import '../../base/res/styles/app_styles.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.bgColor,
        title: const Text('All Tickets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .take(6)
                  .map((singleTicket) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child:
                          TicketView(ticket: singleTicket, wholeScreen: true)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
