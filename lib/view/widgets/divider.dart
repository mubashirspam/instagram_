import 'package:flutter/material.dart';
import 'package:instagram/view/constant/dimension.dart';

import '../constant/colors.dart';

Widget dividerGrey() => Padding(
      padding: EdgeInsets.symmetric(vertical: Dimension.f10),
      child: const Divider(
        thickness: 0.5,
        color: AppColor.divderGreyColor,
      ),
    );
