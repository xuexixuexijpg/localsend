import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:routerino/routerino.dart';
import 'package:routerino/routerino_home.dart';

import '../gen/strings.g.dart';
import '../model/persistence/color_mode.dart';
import '../provider/local_ip_provider.dart';
import '../provider/settings_provider.dart';
import '../theme.dart';
import '../util/ui/dynamic_colors.dart';
import '../widget/watcher/life_cycle_watcher.dart';
import '../widget/watcher/shortcut_watcher.dart';
import '../widget/watcher/tray_watcher.dart';
import '../widget/watcher/window_watcher.dart';
import 'home_page.dart';

class LocalSendApp extends StatelessWidget {
  const LocalSendApp();
  @override
  Widget build(BuildContext context) {
    final ref = context.ref;
    final (themeMode, colorMode) = ref.watch(settingsProvider.select((settings) => (settings.theme, settings.colorMode)));
    final dynamicColors = ref.watch(dynamicColorsProvider);
    return TrayWatcher(
      child: WindowWatcher(
        child: LifeCycleWatcher(
          onChangedState: (AppLifecycleState state) {
            if (state == AppLifecycleState.resumed) {
              ref.redux(localIpProvider).dispatch(InitLocalIpAction());
            }
          },
          child: ShortcutWatcher(
            child: MaterialApp(
              title: t.appName,
              locale: TranslationProvider.of(context).flutterLocale,
              supportedLocales: AppLocaleUtils.supportedLocales,
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              debugShowCheckedModeBanner: false,
              theme: getTheme(colorMode, Brightness.light, dynamicColors),
              darkTheme: getTheme(colorMode, Brightness.dark, dynamicColors),
              themeMode: colorMode == ColorMode.oled ? ThemeMode.dark : themeMode,
              navigatorKey: Routerino.navigatorKey,
              home: RouterinoHome(
                builder: () => const HomePage(
                  initialTab: HomeTab.receive,
                  appStart: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}