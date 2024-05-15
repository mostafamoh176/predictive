import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/constants/asset_string.dart';
import '../../../../core/resources/styles/app_font_styles.dart';
import '../layouts/desktop_layout.dart';
class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    super.key,
    required this.widget,
  });

  final DesktopLayout widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppFontStyles.header2.h),
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(AppFontStyles.body2.r), border: Border.all(color: Theme.of(context).splashColor, width: AppFontStyles.borderWidth)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(AppFontStyles.body),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(AppFontStyles.body2.r), topRight: Radius.circular(AppFontStyles.body2.r)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "\$ ${widget.portfolioData!.portfolio!.portfolio!.balance}",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppFontStyles.body),
                  child: Container(
                    color: Theme.of(context).splashColor,
                    width: AppFontStyles.borderWidth.w,
                    height: 50.h,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(AppFontStyles.body),
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(AppFontStyles.body2.r), topRight: Radius.circular(AppFontStyles.body2.r)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profits",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ ${widget.portfolioData!.portfolio!.portfolio!.profit}",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            widget.portfolioData!.portfolio!.portfolio!.profit_percentage! <= widget.portfolioData!.portfolio!.portfolio!.assets!
                                ? Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppFontStyles.paragraph2.w,
                                vertical: AppFontStyles.padding.h,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).errorColor,
                                    width: AppFontStyles.borderWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).hoverColor),
                              child: Row(
                                children: [
                                  SvgPicture.asset(AssetString.downArrow),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "${widget.portfolioData!.portfolio!.portfolio!.profit_percentage} %",
                                    style: Theme.of(context).textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                            )
                                : Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppFontStyles.paragraph2.w,
                                vertical: AppFontStyles.padding.h,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).toggleableActiveColor,
                                    width: AppFontStyles.borderWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).hoverColor),
                              child: Row(
                                children: [
                                  SvgPicture.asset(AssetString.upArrow),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    " ${widget.portfolioData!.portfolio!.portfolio!.profit_percentage}%",
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppFontStyles.body),
                  child: Container(
                    color: Theme.of(context).splashColor,
                    width: AppFontStyles.borderWidth.w,
                    height: 50.h,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(AppFontStyles.body),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(AppFontStyles.body2.r), topRight: Radius.circular(AppFontStyles.body2.r)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Assets",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "${widget.portfolioData!.portfolio!.portfolio!.assets}",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Theme.of(context).splashColor,
              height: AppFontStyles.borderWidth,
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.all(AppFontStyles.header2),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppFontStyles.body2.r), bottomRight: Radius.circular(AppFontStyles.body2.r)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetString.alertIcon),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "This subscription expires in a month",
                    style: Theme.of(context).textTheme.headlineMedium,
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
