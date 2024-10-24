import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_routers_import.dart';
import 'core/routes/routes_name.dart';
import 'core/theme/style.dart';
import 'generated/l10n.dart';

class {{projectName}} extends StatefulWidget {
  const {{projectName}}({super.key});

  static void setMyAppState(BuildContext context) async {
    _{{projectName}}State? state = context.findAncestorStateOfType<_{{projectName}}State>();
    state?.setMyAppState();
  }

  @override
  State<{{projectName}}> createState() => _{{projectName}}State();
}

class _{{projectName}}State extends State<{{projectName}}> {
  void setMyAppState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: const [
              // BlocProvider(create: (context) => AuthCubit()),
            ],
            child: MaterialApp(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: {{projectName}},
              debugShowCheckedModeBanner: false,
              theme: appThemeData(context),
              builder: BotToastInit(),
              navigatorObservers: [BotToastNavigatorObserver()],
              initialRoute: RoutesName.splashScreen,
              onGenerateRoute: AppRouters.onGenerateRoute,
              navigatorKey: AppRouters.navigatorKey,
            ),
          );
        });
  }
}
