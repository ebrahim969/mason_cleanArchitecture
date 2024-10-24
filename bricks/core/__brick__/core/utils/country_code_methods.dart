import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import '../extension/context_extension.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class CountryCodeMethods {
  static Country getByCode(String code) {
    return CountryParser.parsePhoneCode(code);
  }

  static void pickCountry({
    required void Function(Country) onSelect,
    required BuildContext context,
  }) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: [
        'AE',
        // 'SA',
        // 'QA',
        // 'BH',
        // 'KW',
        // 'OM',
        // 'YE',
        // 'LB',
        // 'SY',
        // 'PS',
        // 'JO',
        // 'IQ',
        // 'EG',
        // 'SD',
        // 'SO',
        // 'DJ',
        // 'KM',
        // 'LY',
        // 'DZ',
        // 'TN',
        // 'MA',
        // 'MR',
      ],
      countryListTheme: CountryListThemeData(
        flagSize: 25,
        backgroundColor: AppColor.popupColor(context, listen: false),
        textStyle: AppTextStyle.textFormStyle(context, listen: false),
        bottomSheetHeight: context.height() * 0.8,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        inputDecoration: InputDecoration(
          hintText: S().search,
          hintStyle: AppTextStyle.hintStyle(context, listen: false),
          fillColor: AppColor.textFormFillColor(context, listen: false),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: AppColor.textFormBorderColor(context, listen: false)),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: AppColor.textFormBorderColor(context, listen: false)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: AppColor.mainAppColor(context, listen: false)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: AppColor.textFormBorderColor(context, listen: false)),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        ),
      ),
      onSelect: onSelect,
    );
  }
}
