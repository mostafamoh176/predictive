import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../features/table_show_feat/ui/layouts/mobie_layout.dart';
import '../../features/table_show_feat/ui/widget/filter_widget.dart';
class HelperFun{
 static String detectNavigateType({required String value}){

    switch(value){
      case "FREELANCER":
        return "0";
      case "SMALL_ENTERPRISE":
        return "1";
      case "MEDIUM_ENTERPRISE":
        return "2";
      default:
        return "3";
    }
  }

  // convert timestamp to date format
 String formatTimestamp(int timestamp) {
   DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
   String formattedDate = DateFormat('dd MMM, yyyy').format(date);
   return formattedDate;
 }

 //convert date format to timestamp
 int? convertDateToTimestamp(String dateString) {
   try {
     DateFormat format = DateFormat('yyyy/MM/dd');
     DateTime dateTime = format.parse(dateString);
     int timestamp = dateTime.millisecondsSinceEpoch ~/ 1000;
     return timestamp;
   } catch (e) {
     print("Error parsing date: $e");
     return null;
   }
 }

 void showFilterDialog(BuildContext context) {
   showDialog(

     context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         backgroundColor:Color(0xff19191B),
         contentPadding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16),
         content: FilterDialog(),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
       );
     },
   );
 }
}