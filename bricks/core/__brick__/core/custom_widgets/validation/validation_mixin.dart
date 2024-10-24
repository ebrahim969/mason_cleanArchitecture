import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

mixin ValidationMixin<T extends StatefulWidget> on State<T> {
  String? validateName(String? value) {
    final RegExp nameRegExp = RegExp(r'[a-zA-Z]');
    if (value!.trim().isEmpty) {
      return tr(S().validateName);
    } else if (!nameRegExp.hasMatch(value)) {
      return tr(S().validateName);
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.trim().isEmpty) {
      return tr(S().validateEmail);
    } else if (!_emailValidationStructure(value.trim())) {
      return tr(S().validateEmailStructure);
    }
    return null;
  }

  bool _emailValidationStructure(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  String? validatePhoneSa(String? value) {
    if (value == null || value.isEmpty) {
      return tr(S().validatePhone);
    }
    if (!value.validateSaudiPhoneNumber()) {
      return tr(S().validatePhone);
    } else {
      return null;
    }
  }
/*
  String? validatePhone(String? value, Country? country) {
    if (value!.trim().isEmpty) {
      return tr(S().validatePhone);
    } else if (value.startsWith('0') &&
        (country != null &&
            (value.trim().length != (country.example.trim().length + 1)))) {
      return tr(
        S().validatePhoneContainTenNumbers,
        args: [
          "${country.example.trim().length + 1}",
        ],
      );
    } else if (!value.startsWith('0') &&
        (country != null &&
            (value.trim().length != country.example.trim().length))) {
      return tr(
        S().validatePhoneContainTenNumbers,
        args: [
          country.example.trim().length.toString(),
        ],
      );
    } else {
      return null;
    }
  }
  */

  String? validatePassword(String? value) {
    if (value!.trim().length < 8) {
      return tr(S().validatePassword);
    } else if (!validatePasswordStructure(value)) {
      return tr(S().passwordStructureValidation);
    }
    return null;
  }

  String _password = '';
  String? validateNewPassword(String? value) {
    _password = value!;
    if (value.trim().length < 8) {
      return tr(S().validatePassword);
    } else if (!validatePasswordStructure(value)) {
      return tr(S().passwordStructureValidation);
    }
    return null;
  }

  bool validatePasswordStructure(String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  String? validateConfirmPassword(String? value) {
    if (value!.trim().length < 8) {
      return tr(S().validatePassword);
    } else if (_password != value) {
      return tr(S().validateConfirmPassword);
    }
    return null;
  }

  String? validateEmptyField(String? value) {
    if (value!.trim().isEmpty) {
      return tr(S().validateEmpty);
    }
    return null;
  }

  String? validateEmptyDropDown(dynamic value) {
    if (value == null) {
      return tr(S().validateEmpty);
    }
    return null;
  }

  String? validateEmptyMultiSelect(List<dynamic>? value) {
    if (value == null) {
      return tr(S().validateEmpty);
    } else if (value.isEmpty) {
      return tr(S().validateEmpty);
    }
    return null;
  }
}

bool hasMatch(String? s, String p) {
  return (s == null) ? false : RegExp(p).hasMatch(s);
}

extension StringExtension on String? {
  bool validateSaudiPhoneNumber() => hasMatch(this, r'^5[0-9]{8}$');
}
