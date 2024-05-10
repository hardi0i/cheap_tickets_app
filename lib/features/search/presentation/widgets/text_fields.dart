import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  late final TextEditingController _departureController;

  @override
  void initState() {
    super.initState();

    _departureController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;
    final cheapTicketsPallete = context.palette;

    final deviceWidth = MediaQuery.of(context).size.width;

    final focusScope = FocusScope.of(context);

    final savedPlace = context.select(
      (SearchCardCubit cubit) => cubit.state.departure,
    );

    _departureController.text = savedPlace;

    return SizedBox(
      height: 96,
      width: deviceWidth * 0.65,
      child: AutofillGroup(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              child: TextFormField(
                key: const ValueKey('departureCity'),
                controller: _departureController,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.addressCity],
                cursorColor: cheapTicketsPallete.primaryLightColor,
                cursorHeight: 16,
                cursorOpacityAnimates: true,
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Откуда - Москва',
                  hintStyle: cheapTicketsTypography.hintText1,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 8,
                  ),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"[-а-яА-Я]"),
                  ),
                ],
                onTapOutside: (_) => focusScope.unfocus(),
                onFieldSubmitted: (value) {
                  context.read<SearchCardCubit>().cardStateToModalSheet(value);
                },
                onEditingComplete: () {
                  TextInput.finishAutofillContext();
                },
              ),
            ),
            Divider(
              color: cheapTicketsPallete.dividerColor,
              height: 16,
              thickness: 1,
            ),
            SizedBox(
              height: 20,
              child: TextFormField(
                key: const ValueKey('arrivalCity'),
                enabled: true,
                cursorColor: cheapTicketsPallete.primaryLightColor,
                cursorHeight: 16,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.streetAddress,
                cursorOpacityAnimates: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Куда - Турция',
                  hintStyle: cheapTicketsTypography.hintText1,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 8,
                  ),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"[-а-яА-Я]"),
                  ),
                ],
                onTap: () =>
                    context.read<SearchCardCubit>().cardStateToModalSheet(''),
                onTapOutside: (_) => focusScope.unfocus(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
