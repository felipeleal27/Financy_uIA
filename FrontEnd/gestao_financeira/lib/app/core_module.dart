import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestao_financeira/app/database/local_storage/local_storage.dart';
import 'package:gestao_financeira/app/database/local_storage/shared_preferences/shared_preferences_local_storage_impl.dart';
import 'package:gestao_financeira/app/service/rest_client/dio/dio_rest_client.dart';
import 'package:gestao_financeira/app/service/rest_client/exceptions/rest_client.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<RestClient>((i) => DioRestClient(), export: true),
    Bind.lazySingleton<LocalStorage>((i) => SharedPreferencesLocalStorageImpl(), export: true),
  ];
}