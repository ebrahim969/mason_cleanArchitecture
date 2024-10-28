import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'core/theme/cubit/app_theme_cubit.dart';
import 'core/theme/theme_enum.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await Hive.initFlutter();
  await ScreenUtil.ensureScreenSize();
  Hive.registerAdapter(ThemeEnumAdapter());
  await Hive.openBox('app');

  timeago.setLocaleMessages('en', timeago.EnMessages());
  timeago.setLocaleMessages('en_short', timeago.EnShortMessages());
  timeago.setLocaleMessages('ar', timeago.ArMessages());
  timeago.setLocaleMessages('ar_short', timeago.ArShortMessages());

  runApp(
    BlocProvider(
      create: (context) => AppThemeCubit()..initial(),
      child: const {{projectName.pascalCase()}}(),
    ),
  );
}
