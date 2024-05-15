// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import '../../resources/constants/asset_string.dart';
// import '../../resources/dimens/dimens.dart';
// import 'bi_image.dart';
//
// class MyScreen extends StatelessWidget {
//   const MyScreen({
//     super.key,
//     required this.child,
//     required this.withPattern,
//   });
//
//   final Widget child;
//   final bool withPattern;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BgImg(
//         child: SafeArea(
//           child: LayoutBuilder(
//             builder: (context, constraints) => SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(minHeight: constraints.maxHeight),
//                 child: IntrinsicHeight(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: MediaQuery.sizeOf(context).height / 4,
//                         child: SvgPicture.asset(
//                           AssetString.logo,
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(Dimens.d40),
//                               topRight: Radius.circular(Dimens.d40),
//                             ),
//                           ),
//                           child: Stack(
//                             children: [
//                               if (withPattern) ...[
//                                 Positioned(
//                                   bottom: 0,
//                                   left: 0,
//                                   right: 0,
//                                   child: Image.asset(
//                                     AssetString.pattern,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                               child,
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
