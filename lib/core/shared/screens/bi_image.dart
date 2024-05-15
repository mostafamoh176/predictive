// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../bloc/app/bloc/app_bloc.dart';
// import '../../resources/constants/asset_string.dart';
//
//
// class BgImg extends StatelessWidget {
//   const BgImg({Key? key, this.child,}) : super(key: key);
//   final Widget? child;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         BlocBuilder<AppBloc, AppState>(
//           builder: (context, state) {
//             return Container(
//               width: double.infinity,
//               height: double.infinity,
//               decoration:  BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(AssetString.splashLight,
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//         ),
//         SizedBox(
//           width: double.infinity,
//           height: double.infinity,
//           child: child,
//         ),
//       ],
//     );
//   }
// }
//
