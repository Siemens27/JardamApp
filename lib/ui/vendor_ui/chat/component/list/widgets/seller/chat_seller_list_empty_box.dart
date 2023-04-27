import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psxmpc/config/ps_colors.dart';
import 'package:psxmpc/core/vendor/provider/language/app_localization_provider.dart';

import '../../../../../../../core/vendor/constant/ps_dimens.dart';
import '../../../../../../../core/vendor/utils/utils.dart';

class ChatSellerListEmptyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: PsDimens.space145,
              ),
              SvgPicture.asset(
                'assets/images/chat_list_empty_photo.svg',
              ),
              const SizedBox(
                height: PsDimens.space16,
              ),
              Text('У вас нет сообщений'.tr,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Utils.isLightMode(context)
                          ? PsColors.secondary800
                          : PsColors.textColor2)),
              const SizedBox(
                height: PsDimens.space8,
              ),
              Text('Вы можете легко купить у других продавцов.'.tr,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Utils.isLightMode(context)
                          ? PsColors.secondary500
                          : PsColors.textColor3)),
            ]),
      ),
    );
  }
}