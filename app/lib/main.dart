import 'package:auto_size_text/auto_size_text.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:localsend_app/gen/strings.g.dart';
import 'package:localsend_app/init.dart';
import 'package:localsend_app/model/persistence/color_mode.dart';
import 'package:localsend_app/pages/home_page.dart';
import 'package:localsend_app/pages/local_send_app.dart';
import 'package:localsend_app/provider/local_ip_provider.dart';
import 'package:localsend_app/provider/settings_provider.dart';
import 'package:localsend_app/theme.dart';
import 'package:localsend_app/util/ui/dynamic_colors.dart';
import 'package:localsend_app/widget/watcher/life_cycle_watcher.dart';
import 'package:localsend_app/widget/watcher/shortcut_watcher.dart';
import 'package:localsend_app/widget/watcher/tray_watcher.dart';
import 'package:localsend_app/widget/watcher/window_watcher.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:routerino/routerino.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ImageWithName {
  final String path;
  final String btnName;

  ImageWithName(this.path, this.btnName);
}

final _routeNames = <ImageWithName>[
  ImageWithName('assets/img/logo-128.png', 'local_send'),
  ImageWithName('assets/img/socket-128.png', 'socket_server'),
];
final _router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          routes: <RouteBase>[
            GoRoute(
                path: 'local_send',
                builder: (context, state) => const FloatingHome(LocalSendApp()))
          ],
          builder: (context, state) => const Home())
    ],
    errorBuilder: (context, state) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  context.go('/');
                },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: Container(
            alignment: Alignment.center,
            child: const Text('路由错误'),
          ),
        ));

Future<void> main(List<String> args) async {
  final container = await preInit(args);
  runApp(RefenaScope.withContainer(
    container: container,
    child: TranslationProvider(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        themeMode: ThemeMode.light,
        color: Colors.white,
        routerConfig: _router,
      ),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 150,
          children: List.generate(
            _routeNames.length,
            (index) => InkWell(
                onTap: () {
                  context.go('/${_routeNames[index].btnName}');
                },
                child: SizedBox(
                  width: 120,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Image.asset(_routeNames[index].path)),
                      AutoSizeText(
                        _routeNames[index].btnName,
                        maxLines: 1,
                        style: const TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                )),
          )),
    );
  }
}

class FloatingHome extends StatelessWidget {
  final Widget widget;

  const FloatingHome(this.widget);

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
      mainScreenWidget: widget,
      floatingWidget: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          context.go('/');
        },
      ),
      floatingWidgetWidth: 60,
      floatingWidgetHeight: 60,
    );
  }
}
