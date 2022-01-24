import 'package:flutter/material.dart';
import 'package:hostfire0123/components/section_title.dart';

import 'package:hostfire0123/constants.dart';
import 'components/service_card.dart';
import 'package:hostfire0123/models/Service.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )
        ],
      ),
    );
  }
}
