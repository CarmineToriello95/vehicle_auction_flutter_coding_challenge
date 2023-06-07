// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'core/validators/input_validator.dart' as _i5;
import 'di_config.dart' as _i21;
import 'features/auction/data/datasources/local_data_source.dart' as _i7;
import 'features/auction/data/datasources/remote_data_source.dart' as _i3;
import 'features/auction/data/repositories/auction_repository_impl.dart' as _i9;
import 'features/auction/domain/repositories/auction_repository.dart' as _i8;
import 'features/auction/domain/usecases/get_auction_data_usecase.dart' as _i14;
import 'features/auction/domain/usecases/retrieve_last_auction_saved_use_case.dart'
    as _i15;
import 'features/auction/presentation/bloc/auction_page_manager.dart' as _i20;
import 'features/auth/data/datasources/local_data_source.dart' as _i10;
import 'features/auth/data/datasources/remote_data_source.dart' as _i11;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i13;
import 'features/auth/domain/repositories/auth_repository.dart' as _i12;
import 'features/auth/domain/usecases/retrieve_stored_user_id_usecase.dart'
    as _i16;
import 'features/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart'
    as _i17;
import 'features/auth/domain/usecases/sign_in_with_id_usecase.dart' as _i18;
import 'features/auth/presentation/bloc/auth_manager.dart' as _i19;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AuctionRemoteDataSource>(
        () => _i3.AuctionRemoteDataSourceImpl());
    gh.factory<_i4.Client>(() => registerModule.httpClient);
    gh.singleton<_i5.InputValidator>(_i5.InputValidator());
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i7.AuctionLocalDataSource>(
        () => _i7.AuctionLocalDataSourceImpl(gh<_i6.SharedPreferences>()));
    gh.factory<_i8.AuctionRepository>(() => _i9.AuctionRepositoryImpl(
          gh<_i3.AuctionRemoteDataSource>(),
          gh<_i7.AuctionLocalDataSource>(),
        ));
    gh.factory<_i10.AuthLocalDataSource>(
        () => _i10.AuthLocalDataSourceImpl(gh<_i6.SharedPreferences>()));
    gh.factory<_i11.AuthRemoteDataSource>(
        () => _i11.AuthRemoteDataSourceImpl(gh<_i4.Client>()));
    gh.factory<_i12.AuthRepository>(() => _i13.AuthRepositoryImpl(
          gh<_i11.AuthRemoteDataSource>(),
          gh<_i10.AuthLocalDataSource>(),
        ));
    gh.factory<_i14.GetAuctionDataUseCase>(
        () => _i14.GetAuctionDataUseCase(gh<_i8.AuctionRepository>()));
    gh.factory<_i15.RetrieveLastAuctionSavedUseCase>(() =>
        _i15.RetrieveLastAuctionSavedUseCase(gh<_i8.AuctionRepository>()));
    gh.factory<_i16.RetrieveStoredUserIdUseCase>(
        () => _i16.RetrieveStoredUserIdUseCase(gh<_i12.AuthRepository>()));
    gh.factory<_i17.SignInWithEmailAndPasswordUseCase>(() =>
        _i17.SignInWithEmailAndPasswordUseCase(gh<_i12.AuthRepository>()));
    gh.factory<_i18.SignInWithIdUseCase>(
        () => _i18.SignInWithIdUseCase(gh<_i12.AuthRepository>()));
    gh.singleton<_i19.AuthManager>(_i19.AuthManager(
      gh<_i17.SignInWithEmailAndPasswordUseCase>(),
      gh<_i18.SignInWithIdUseCase>(),
      gh<_i16.RetrieveStoredUserIdUseCase>(),
    ));
    gh.lazySingleton<_i20.AuctionPageManager>(() => _i20.AuctionPageManager(
          gh<_i19.AuthManager>(),
          gh<_i14.GetAuctionDataUseCase>(),
          gh<_i15.RetrieveLastAuctionSavedUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
