import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';

class SearchCardModalView extends StatefulWidget {
  const SearchCardModalView({super.key});

  @override
  State<SearchCardModalView> createState() => _SearchCardModalViewState();
}

class _SearchCardModalViewState extends State<SearchCardModalView> {
  late final FocusNode _arrivalFocusNode;
  late final TextEditingController _arrivalController;

  @override
  void initState() {
    super.initState();

    _arrivalFocusNode = FocusNode();
    _arrivalController = TextEditingController();
  }

  @override
  void dispose() {
    _arrivalController.dispose();
    _arrivalFocusNode.dispose();

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
      child: AutofillGroup(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              child: TextFormField(
                initialValue: departurePlace,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.addressCity],
                cursorColor: cheapTicketsPalette.primaryLightColor,
                cursorHeight: 16,
                cursorOpacityAnimates: true,
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.next,
                style: cheapTicketsTypography.buttonText1,
                decoration: InputDecoration(
                  hintText: 'Откуда - Москва',
                  icon: SvgPicture.asset(
                    flyFromIconAsset,
                  ),
                  hintStyle: cheapTicketsTypography.hintText1,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: -12,
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
            Divider(
              color: cheapTicketsPalette.secondaryCardBackColor,
              height: 20,
              thickness: 1,
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
                      focusNode: _arrivalFocusNode,
                      controller: _arrivalController,
                      autofocus: true,
                      cursorColor: cheapTicketsPalette.primaryLightColor,
                      cursorHeight: 16,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.streetAddress,
                      cursorOpacityAnimates: true,
                      textInputAction: TextInputAction.done,
                      style: cheapTicketsTypography.buttonText1,
                      decoration: InputDecoration(
                        hintText: 'Куда - Турция',
                        icon: SvgPicture.asset(
                          searchIconAsset,
                          colorFilter: ColorFilter.mode(
                            cheapTicketsPalette.primaryLightColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        hintStyle: cheapTicketsTypography.hintText1,
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: -4,
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
                    onTap: () => context.read<SearchCardCubit>().clearArrival(),
                    child: Icon(
                      Icons.close,
                      color: cheapTicketsPalette.unselectedColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
