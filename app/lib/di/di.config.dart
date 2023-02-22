// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/ui/shared/cubit/inactivity/inactivity_cubit.dart' as _i3;
import 'package:app/ui/shared/cubit/theme/theme_cubit.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'injector_module.dart' as _i6;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final serviceModule = _$ServiceModule();
  gh.lazySingleton<_i3.InactivityCubit>(() => _i3.InactivityCubit());
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => serviceModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i5.ThemeCubit>(() => _i5.ThemeCubit());
  return getIt;
}

class _$ServiceModule extends _i6.ServiceModule {}
