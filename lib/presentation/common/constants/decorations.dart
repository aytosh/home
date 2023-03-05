import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/borders.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';

final kFormFieldDecoration = BoxDecoration(
  color: kBackgroundColor,
  borderRadius: BorderRadius.circular(15),
  boxShadow: [kFormFieldShadow],
);

final kLoginButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: kPrimaryColor,
  boxShadow: [kLoginButtonShadow],
);

final kSearchFieldDecoration = BoxDecoration(
  color: kBackgroundColor,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [kSearchFieldShadow],
);

final kTableDecoration = BoxDecoration(
  color: kBackgroundColor,
  boxShadow: [kTableShadow],
);

final kAddButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: kSecondaryColor,
  boxShadow: [kAddButtonShadow],
);

final kCreateFormDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: kBackgroundColor,
);

final kCreateDropdownDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: kBackgroundColor,

);

final kCreateDropdownOptionsDecoration = BoxDecoration(
  border: kPinkBorder,
  borderRadius: BorderRadius.circular(5),
  color: kBackgroundColor,
);

final kCreateButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: kBackgroundColor,
);

final kBackgroundDecoration = BoxDecoration(
  color: kBackgroundColor,
  boxShadow: [kBackgroundShadow],
);

const kSearchOptionsDecoration = BoxDecoration(
  color: kSecondaryColor,
);

final kFilterDropdownDecoration = BoxDecoration(
  color: kBackgroundColor,
  borderRadius: BorderRadius.circular(5),
  border: Border.all(
    color: kPrimaryColor,
    width: 0.5,
  ),
);

final kFilterDropdownOptionDecoration = BoxDecoration(
  color: kBackgroundColor,
  border: Border.all(
    color: kPrimaryColor,
    width: 0.5,
  ),
);

const kFilterDropdownSelectedOptionDecoration =
    BoxDecoration(color: kSecondaryColor);
