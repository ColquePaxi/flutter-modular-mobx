import 'package:slidy_aula_2/app/pages/splash/splash_controller.dart';
import 'package:slidy_aula_2/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_aula_2/app/app_widget.dart';
import 'package:slidy_aula_2/app/modules/home/home_module.dart';
import 'package:slidy_aula_2/app/pages/splash/splash_page.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
