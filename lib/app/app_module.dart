import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => throw UnimplementedError();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, args) => Container(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
