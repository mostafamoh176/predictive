import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/globals/helper.dart';
import '../../../../core/resources/constants/asset_string.dart';
import '../../../../core/resources/styles/app_font_styles.dart';
import '../../data/model/list_model_response.dart';
import '../../data/model/portfolio_model_response.dart';

class MobileLayout extends StatefulWidget {
  List<OrderObjectModel> orderData;
  PortfolioModel? portfolioData;
  MobileLayout({super.key, required this.orderData, required this.portfolioData});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  HelperFun helper = HelperFun();

  int _currentPage = 0;
  static const int _itemsPerPage = 5;

  void _nextPage() {
    setState(() {
      _currentPage++;
    });
  }

  void _previousPage() {
    setState(() {
      _currentPage--;
    });
  }


  @override
  Widget build(BuildContext context) {
    int startIndex = _currentPage * _itemsPerPage;
    int endIndex = startIndex + _itemsPerPage;
    endIndex = endIndex > widget.orderData.length ? widget.orderData.length : endIndex;
    List<OrderObjectModel> itemsToShow = widget.orderData.sublist(startIndex, endIndex);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppFontStyles.header2.h),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(AppFontStyles.body2.r), border: Border.all(color: Theme.of(context).splashColor, width: AppFontStyles.borderWidth.w)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppFontStyles.body),
                  width: double.infinity,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppFontStyles.body),
                  child: Container(
                    color: Theme.of(context).splashColor,
                    height: AppFontStyles.borderWidth.w,
                    width: double.infinity,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(AppFontStyles.body),
                  width: double.infinity,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppFontStyles.body),
                  child: Container(
                    color: Theme.of(context).splashColor,
                    height: AppFontStyles.borderWidth.w,
                    width: double.infinity,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(AppFontStyles.body),
                  width: double.infinity,
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
                Container(
                  color: Theme.of(context).splashColor,
                  height: AppFontStyles.borderWidth.w,
                  width: double.infinity,
                ),
                Container(
                  padding: const EdgeInsets.all(AppFontStyles.header2),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppFontStyles.body2.r), bottomRight: Radius.circular(AppFontStyles.body2.r)),
                  ),
                  child: Center(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  )),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppFontStyles.header2.h),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(AppFontStyles.body2.r), border: Border.all(color: Theme.of(context).splashColor, width: AppFontStyles.borderWidth.w)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppFontStyles.body),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(AppFontStyles.body2.r), topRight: Radius.circular(AppFontStyles.body2.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Open trades",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      InkWell(
                          onTap: () => helper.showFilterDialog(context),

                          child: SvgPicture.asset(AssetString.filterButton))
                    ],
                  ),
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: itemsToShow.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(AppFontStyles.body2.r), topRight: Radius.circular(AppFontStyles.body2.r)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                color: Theme.of(context).splashColor,
                                height: AppFontStyles.borderWidth.w,
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        itemsToShow[index].symbol.toString(),
                                        style: Theme.of(context).textTheme.titleLarge,
                                      ),
                                      Text(
                                        itemsToShow[index].price.toString(),
                                        style: Theme.of(context).textTheme.headlineMedium,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppFontStyles.paragraph,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
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
                                        child: Text(
                                          itemsToShow[index].side.toString(),
                                          style: Theme.of(context).textTheme.headlineSmall,
                                        ),
                                      ),
                                      Text(
                                        helper.formatTimestamp(itemsToShow[index].creation_time!),
                                        style: Theme.of(context).textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    color: Theme.of(context).splashColor,
                    height: AppFontStyles.borderWidth.w,
                    width: double.infinity,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).focusColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppFontStyles.body2.r), bottomRight: Radius.circular(AppFontStyles.body2.r))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${_currentPage + 1} - ${widget.orderData.length ~/ 5} of ${widget.orderData.length}", style: Theme.of(context).textTheme.titleSmall),
                      Row(
                        children: [
                          InkWell(onTap: _currentPage > 0 ? _previousPage : null, child: SvgPicture.asset(AssetString.backButton)),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(onTap: endIndex < widget.orderData.length ? _nextPage : null, child: SvgPicture.asset(AssetString.frontButton)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}