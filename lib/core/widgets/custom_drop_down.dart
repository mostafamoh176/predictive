import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../resources/styles/app_font_styles.dart';

class SingleDropdown<T> extends StatefulWidget {
  SingleDropdown({
    required this.hint,
    this.value,
    required this.dropdownItems,
    required this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset,
    this.prefix,
    super.key,
    required this.onSearch,
    this.style,
  });

  static DropdownMenuItem<T> itemView<T>({required T? value, Widget? icon, required String text, required TextDirection direction}) {
    return DropdownMenuItem<T>(
      value: value,
      child: Directionality(
        textDirection: direction,
        child: Row(
          children: [
            if (icon != null) ...[
              icon,
              const SizedBox(
                width: 4,
              ),
            ],
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
             // style: AppStyles.appTextStyles(color: themeInject.getColor(ColorKeys.back_icon_title), fontWeight: AppFontStyles.fontWeight600, fontSize: AppFontStyles.body2),
            ),
          ],
        ),
      ),
    );
  }

  static DropdownMenuItem<T> itemView2<T>({required T? value, required String text, required bool isSelected, required TextDirection direction}) {
    return DropdownMenuItem(
        value: value,
        enabled: false,
        child: StatefulBuilder(builder: (context, setState) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(
                    () {
                  isSelected = !isSelected;
                },
              );
            },
            child: Container(
              height: double.infinity,
              child: Row(
                children: [
                  if (isSelected)
                    Icon(
                      Icons.check_box,
                      //color: themeInject.getColor(ColorKeys.back_icon_title),
                    )
                  else
                    Icon(
                      Icons.check_box_outline_blank,
                      //color: themeInject.getColor(ColorKeys.back_icon_title),
                    ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    //  style: AppStyles.appTextStyles(color: themeInject.getColor(ColorKeys.back_icon_title), fontWeight: AppFontStyles.fontWeight600, fontSize: AppFontStyles.body2),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }

  final String hint;
  final T? value;
  final TextStyle? style;
  final List<DropdownMenuItem<T>> dropdownItems;
  final ValueChanged<T?>? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final double? scrollbarThickness;
  final bool? scrollbarAlwaysShow;
  final Offset? offset;
  final Widget? prefix;
  final String? Function(T? item) onSearch;

  @override
  State<SingleDropdown<T>> createState() => _SingleDropdownState<T>();
}

class _SingleDropdownState<T> extends State<SingleDropdown<T>> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        hint: Row(
          children: [
            widget.prefix == null ? const SizedBox.shrink() : widget.prefix!,
            widget.prefix == null
                ? const SizedBox.shrink()
                : const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                widget.hint,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              //  style: AppStyles.appTextStyles(color: themeInject.getColor(ColorKeys.back_icon_title), fontWeight: AppFontStyles.fontWeight400, fontSize: AppFontStyles.title2),
              ),
            ),
          ],
        ),
        value: widget.value,
        items: widget.dropdownItems,
        onChanged: widget.onChanged,
        selectedItemBuilder: widget.selectedItemBuilder,
        buttonStyleData: ButtonStyleData(
          height: widget.buttonHeight ?? 45,
          width: widget.buttonWidth ?? double.infinity,
          padding: widget.buttonPadding ?? const EdgeInsets.symmetric(horizontal: 16),
          decoration: widget.buttonDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                 // color: themeInject.getColor(ColorKeys.back_icon_title),
                ),
              ),
          elevation: widget.buttonElevation,
        ),
        iconStyleData: IconStyleData(
          icon: widget.icon ?? const SizedBox.shrink(),
          iconSize: widget.iconSize ?? 12,
          iconEnabledColor: widget.iconEnabledColor,
          iconDisabledColor: widget.iconDisabledColor,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: widget.dropdownHeight ?? MediaQuery.sizeOf(context).height / 3,
          width: widget.dropdownWidth ?? MediaQuery.sizeOf(context).width - 36,
          padding: widget.dropdownPadding,
          decoration: widget.dropdownDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
          elevation: widget.dropdownElevation ?? 8,
          offset: widget.offset ?? const Offset(0, -5),
          scrollbarTheme: ScrollbarThemeData(
            radius: widget.scrollbarRadius ?? const Radius.circular(40),
            thickness: widget.scrollbarThickness != null ? MaterialStateProperty.all<double>(widget.scrollbarThickness!) : null,
            thumbVisibility: widget.scrollbarAlwaysShow != null ? MaterialStateProperty.all<bool>(widget.scrollbarAlwaysShow!) : null,
          ),
        ),
        menuItemStyleData: MenuItemStyleData(
          height: widget.itemHeight ?? 40,
          padding: widget.itemPadding,
        ),
        dropdownSearchData: DropdownSearchData(
          searchController: textEditingController,
          searchInnerWidgetHeight: 50,
          searchInnerWidget: Container(
            height: 50,
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 4,
              right: 8,
              left: 8,
            ),
            child: TextFormField(
              expands: true,
              maxLines: null,
              controller: textEditingController,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                hintText:"search",
                hintStyle: const TextStyle(fontSize: AppFontStyles.body2),
                enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(color:Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:  BorderSide(color:Colors.black),

                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return widget.onSearch(item.value)?.contains(searchValue) ?? false;
          },
        ),
        //This to clear the search value when you close the menu
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            textEditingController.clear();
          }
        },
      ),
    );
  }
  static DropdownMenuItem<T> itemView<T>({required T? value, Widget? icon, required String text,required TextDirection direction} ){
    return DropdownMenuItem<T>(
      value: value,
      child: Directionality(
        textDirection: direction,
        child: Row(
          children: [
            if(icon != null)...[
              icon,
              const SizedBox(width: 4,),
            ],
            Text(text,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
             // style: AppStyles.appTextStyles(color: themeInject.getColor(ColorKeys.back_icon_title), fontWeight: AppFontStyles.fontWeight600, fontSize: AppFontStyles.body2),
        ),
          ],
        ),
      ),
    );
  }
}
