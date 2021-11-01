import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:trove_app_challenge/ui/shared/widgets/long_button.dart';
import 'package:trove_app_challenge/ui/view/login/login_viewmodel.dart';
import 'package:trove_app_challenge/utilities/constants/app_strings.dart';
import 'package:trove_app_challenge/utilities/constants/colors.dart';
import 'package:trove_app_challenge/utilities/constants/sizes_helpers.dart';
import 'package:trove_app_challenge/utilities/constants/ui_helpers.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          width: displayWidth(context),
          height: displayHeight(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(loginScreen), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LongButton(
                onPressed: () {},
                label: create,
                outlineColor: AppColors.blueColor,
                labelColor: AppColors.whiteColor,
              ),
              UIHelper.verticalSpace24(context),
              LongButton(
                onPressed: () {},
                label: login,
                outlineColor: AppColors.whiteColor,
                labelColor: AppColors.blueColor,
              ),
              UIHelper.verticalSpace55(context),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
