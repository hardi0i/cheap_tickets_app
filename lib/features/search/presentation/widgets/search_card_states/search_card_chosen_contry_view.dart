import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';

class SearchCardCountryChosenView extends StatefulWidget {
  const SearchCardCountryChosenView({super.key});

  @override
  State<SearchCardCountryChosenView> createState() =>
      _SearchCardCountryChosenViewState();
}

class _SearchCardCountryChosenViewState
    extends State<SearchCardCountryChosenView> {
  late final TextEditingController _departureController;
  late final TextEditingController _arrivalController;

  @override
  void initState() {
    super.initState();

    _departureController = TextEditingController();
    _arrivalController = TextEditingController();
  }

  @override
  void dispose() {
    _departureController.dispose();
    _arrivalController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;
    final cheapTicketsPalette = context.palette;

    final deviceWidth = MediaQuery.of(context).size.width;

    final focusScope = FocusScope.of(context);

    final departurePlace = context.select(
      (SearchCardCubit cubit) => cubit.state.departure,
    );

    final arrivalPlace = context.select(
      (SearchCardCubit cubit) => cubit.state.arrival,
    );

    _departureController.text = departurePlace;
    _arrivalController.text = arrivalPlace;

    return Container(
      constraints: BoxConstraints(
        minWidth: 328,
        maxWidth: deviceWidth,
        minHeight: 96,
        maxHeight: 96,
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(
        16,
      ),
      margin: const EdgeInsets.all(
        16,
      ),
      decoration: ShapeDecoration(
        color: cheapTicketsPalette.cardBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              16,
            ),
          ),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.vertical,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () async {
                  await context.router.maybePop().then(
                        (value) => context
                            .read<SearchCardCubit>()
                            .cardStateToTickets(),
                      );
                },
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                height: 96,
                child: AutofillGroup(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceWidth * 0.65,
                              child: TextFormField(
                                controller: _departureController,
                                textCapitalization: TextCapitalization.words,
                                autofillHints: const [
                                  AutofillHints.addressCity
                                ],
                                cursorColor:
                                    cheapTicketsPalette.primaryLightColor,
                                cursorHeight: 16,
                                cursorOpacityAnimates: true,
                                keyboardType: TextInputType.streetAddress,
                                textInputAction: TextInputAction.next,
                                style: cheapTicketsTypography.buttonText1,
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
                                  TextInput.finishAutofillContext();
                                  context.read<SearchCardCubit>().updatePlaces(
                                        departure: value,
                                      );
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () =>
                                  context.read<SearchCardCubit>().swapPlaces(),
                              child: SvgPicture.asset(
                                switchIconAsset,
                                height: 20,
                                colorFilter: ColorFilter.mode(
                                  cheapTicketsPalette.primaryLightColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth * 0.70,
                        child: Divider(
                          color: cheapTicketsPalette.secondaryCardBackColor,
                          height: 20,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceWidth * 0.65,
                              child: TextFormField(
                                controller: _arrivalController,
                                cursorColor:
                                    cheapTicketsPalette.primaryLightColor,
                                cursorHeight: 16,
                                textCapitalization: TextCapitalization.words,
                                keyboardType: TextInputType.streetAddress,
                                cursorOpacityAnimates: true,
                                textInputAction: TextInputAction.done,
                                style: cheapTicketsTypography.buttonText1,
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
                                onTapOutside: (_) => focusScope.unfocus(),
                                onFieldSubmitted: (value) {
                                  TextInput.finishAutofillContext();
                                  context.read<SearchCardCubit>().updatePlaces(
                                        arrival: value,
                                      );
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () => context
                                  .read<SearchCardCubit>()
                                  .clearArrival(),
                              child: Icon(
                                Icons.close,
                                color: cheapTicketsPalette.primaryLightColor,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
