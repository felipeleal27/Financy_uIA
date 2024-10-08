import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestao_financeira/app/repository/login_repository/login_repository.dart';
import 'package:gestao_financeira/app/repository/login_repository/login_repository_impl.dart';
import 'package:gestao_financeira/app/viewmmodel/login/login_viewmodel.dart';
import 'package:gestao_financeira/app/views/login/login_page.dart';
import 'package:gestao_financeira/app/views/login/module/login_nome_rotas.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton<LoginRepository>((i) => LoginRepositoryImpl()),
    Bind.singleton((i) => LoginViewModel()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(LoginNomeRotas.login, child: (context, args) => const LoginPage()),
  ];
}