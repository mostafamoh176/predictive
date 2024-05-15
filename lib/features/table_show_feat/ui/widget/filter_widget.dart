import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/globals/helper.dart';
import '../../../../core/resources/styles/app_font_styles.dart';
import '../../business_logic/table_bloc.dart';

class FilterDialog extends StatefulWidget {
  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  String? selectedSymbol;
  TextEditingController priceController = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  DateTimeRange? dateRange;
  HelperFun helper=HelperFun();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> symbols = BlocProvider.of<TableBloc>(context)
        .uploadedData!
        .orderList!
        .orders!
        .map((e) => e.symbol!.trim().toUpperCase()) // Normalize the data
        .toSet()
        .toList();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).splashColor),
                      borderRadius: BorderRadius.circular(AppFontStyles.paragraph)
                  ),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.black,
                    value: selectedSymbol,

                    icon: Icon(FontAwesomeIcons.chevronDown,color: Theme.of(context).cardColor,size: 14,),
                    underline: Container(),
                    hint: Text("Symbol", style: Theme.of(context).textTheme.bodyMedium),
                    items: symbols.map((String? value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value!, style: TextStyle(color: Colors.white)),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedSymbol = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    labelStyle:Theme.of(context).textTheme.bodyMedium,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                      borderSide: BorderSide(color: Theme.of(context).splashColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                      borderSide: BorderSide(color: Theme.of(context).splashColor),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: startDate,
                  decoration: InputDecoration(
                      labelText: 'Start date',
                      hintText: "yyyy/mm/dd",
                      hintStyle: TextStyle(color: Theme.of(context).splashColor),
                      labelStyle:Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                        borderSide: BorderSide(color: Theme.of(context).splashColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                        borderSide: BorderSide(color: Theme.of(context).splashColor),
                      ),

                      suffixIcon:Icon(FontAwesomeIcons.calendar,color: Theme.of(context).cardColor,size: 20,)
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: TextField(
                  controller: endDate,
                  decoration: InputDecoration(
                      labelText: 'End date',
                      hintText: "yyyy/mm/dd",
                      hintStyle: TextStyle(color: Theme.of(context).splashColor),
                      labelStyle:Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                        borderSide: BorderSide(color: Theme.of(context).splashColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppFontStyles.paragraph),
                        borderSide: BorderSide(color: Theme.of(context).splashColor),
                      ),
                      suffixIcon:Icon(FontAwesomeIcons.calendar,color: Theme.of(context).cardColor,)
                  ),

                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  BlocProvider.of<TableBloc>(context).add(TableEvent.filterEvent(order: BlocProvider.of<TableBloc>(context)
                      .uploadedData!
                      .orderList!
                      .orders!, symbol: selectedSymbol.toString(),
                      price:priceController.text==""?null:double.parse(priceController.text),
                      startDate:startDate.text==""?null: helper.convertDateToTimestamp(startDate.text),
                      endDate:endDate.text==""?null: helper.convertDateToTimestamp(endDate.text)));
                },
                child: Container(
                  width: 107,
                  decoration: BoxDecoration(
                      color: Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(AppFontStyles.paragraph),
                  child: Center(
                    child: Text(
                      "Filter Table",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}