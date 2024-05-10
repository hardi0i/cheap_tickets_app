import 'package:cheap_tickets_app/config/theme/cheap_tickets_palette.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_typography.dart';
import 'package:flutter/material.dart';

extension ThemeBuildContextExtensions on BuildContext {
  CheapTicketsPalette get palette {
    final cheapTicketsPalette = Theme.of(this).extension<CheapTicketsPalette>();

    assert(
      cheapTicketsPalette != null,
      '''Tried to find the CheapTicketsPalette, 
      but it was not provided as a theme extension''',
    );

    return cheapTicketsPalette!;
  }

  CheapTicketsTypography get typography {
    final cheapTicketsTypography =
        Theme.of(this).extension<CheapTicketsTypography>();

    assert(
      cheapTicketsTypography != null,
      '''Tried to find the CheapTicketsTypography, 
      but it was not provided as a theme extension''',
    );

    return cheapTicketsTypography!;
  }
}
