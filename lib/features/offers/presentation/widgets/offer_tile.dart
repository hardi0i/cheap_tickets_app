import 'package:cheap_tickets_app/core/constants/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';

class OfferTile extends StatelessWidget {
  const OfferTile({
    super.key,
    required this.offer,
  });

  final OfferEntity offer;

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          child: Image.asset(
            'assets/images/offers/${offer.id}.png',
            fit: BoxFit.cover,
            width: 132,
            height: 132,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          offer.title,
          textAlign: TextAlign.start,
          style: cheapTicketsTypography.title3,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          offer.town,
          textAlign: TextAlign.start,
          style: cheapTicketsTypography.text2,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            SvgPicture.asset(
              planeIconAsset,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'от ${offer.price} ₽',
              textAlign: TextAlign.start,
              style: cheapTicketsTypography.text2,
            ),
          ],
        ),
      ],
    );
  }
}
