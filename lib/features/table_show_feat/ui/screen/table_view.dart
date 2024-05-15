import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:predictive_task/features/table_show_feat/business_logic/table_bloc.dart';
import '../../../../core/shared/responsive/detect_device_type.dart';
import '../layouts/desktop_layout.dart';
import '../layouts/mobie_layout.dart';

@RoutePage()
class TablePage extends StatefulWidget {
 const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {

  @override
  void initState() {
    BlocProvider.of<TableBloc>(context).add(TableEvent.orderListEvent());
    BlocProvider.of<TableBloc>(context).add(TableEvent.portfolioEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TableBloc, TableState>(
  listener: (context, state) {},
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        backgroundColor: Theme.of(context).focusColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Robin,",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "Here is an overview of your account activities.",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              BlocProvider.of<TableBloc>(context).uploadedData==null||BlocProvider.of<TableBloc>(context).portofilaData==null?Text("Loading ..."):
              !ResponsiveTypeImpl().isTablet(context) ? MobileLayout(orderData:BlocProvider.of<TableBloc>(context).filterData??
                  BlocProvider.of<TableBloc>(context).uploadedData!.orderList!.orders!,
                portfolioData: BlocProvider.of<TableBloc>(context).portofilaData,) :
              DesktopLayout(orderData:BlocProvider.of<TableBloc>(context).filterData??
                  BlocProvider.of<TableBloc>(context).uploadedData!.orderList!.orders!,
                portfolioData: BlocProvider.of<TableBloc>(context).portofilaData,),
            ],
          ),
        ),
      ),
    );
  },
);
  }
}

