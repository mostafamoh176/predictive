// import 'package:auto_route/auto_route.dart';
// import 'success_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../resources/constants/asset_string.dart';
// import '../../resources/languages/languages.dart';
// import '../../resources/styles/app_font_styles.dart';
// import '../../resources/styles/app_text_styles.dart';
// import 'my_screen.dart';
//
// @RoutePage()
// class SuccessPage extends StatelessWidget {
//   const SuccessPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MyScreen(
//       withPattern: true,
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Text(
//               Languages.get(context, key: 'change_password'),
//               style: AppStyles.appTextStyles(
//                   color:Theme.of(context).primaryColor,
//                   fontWeight: AppFontStyles.fontWeight600,
//                   fontSize: AppFontStyles.header2),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0),
//               child: SvgPicture.asset(
//                 AssetString.success,
//                 height: 130,
//               ),
//             ),
//             Text(
//               Languages.get(context,
//                   key: 'your_password_has_changed_successfully'),
//               textAlign: TextAlign.center,
//               style: AppStyles.appTextStyles(
//                   color: Theme.of(context).primaryColor,
//                   fontWeight: AppFontStyles.fontWeight600,
//                   fontSize: AppFontStyles.header2),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0),
//               child: Text(
//                 Languages.get(context, key: 'login_to_enter_your_account'),
//                 style: AppStyles.appTextStyles(
//                     color: Theme.of(context).primaryColor,
//                     fontWeight: AppFontStyles.fontWeight500,
//                     fontSize: AppFontStyles.title2),
//               ),
//             ),
//             const SuccessButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }
