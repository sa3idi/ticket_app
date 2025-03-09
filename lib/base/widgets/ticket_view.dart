import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import '../res/styles/app_styles.dart';
import 'app_column_text_layout.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 192,
        child: Container(
            margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
            child: Column(children: [
              // Blue part of the ticket
              // Show departure and destination with icon first line--------------------------------
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: AppStyles.ticketBlue,
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Text(ticket['from']['code'],
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: pi / 2,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )))
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket['to']['code'], align: TextAlign.end),
                    ]),

                    const SizedBox(
                      height: 3,
                    ),
                    // Show departure and destination names with time
                    Row(children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Expanded(child: Container()),
                      Text(ticket['flying_time'],
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: ticket['to']['name'], align: TextAlign.end),
                      ),
                    ]),
                  ],
                ),
              ),
              // Circle and dots---------------------------------------------------------------------
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      dividerWidth: 6,
                    )),
                    BigCircle(
                      isRight: true,
                    )
                  ],
                ),
              ),
              //--------------------------------------------------------------------------------------
              // Orange part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  color: AppStyles.ticketOrange,
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            topText: ticket['date'],
                            bottomText: 'DATE',
                          ),
                          AppColumnTextLayout(
                            topText: ticket['departure_time'],
                            bottomText: 'Departure time',
                            alignment: CrossAxisAlignment.center,
                          ),
                          AppColumnTextLayout(
                            topText: ticket['number'].toString(),
                            bottomText: 'Number',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ]),
                    // Show departure and destination names with time
                  ],
                ),
              ),
            ])));
  }
}
