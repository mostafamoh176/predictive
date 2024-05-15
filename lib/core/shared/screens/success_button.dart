import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class SuccessButton extends StatelessWidget {
  const SuccessButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      title: "Languages.get(context, key: 'home')",
      action: () {
        //    AutoRouter.of(context).replace(const HomeRoute())
      },
    );
  }
}
