// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart'
    as _i14;
import 'package:school_management/application/auth/login_form/login_form_bloc.dart'
    as _i11;
import 'package:school_management/application/groups/cubit/groups_cubit.dart'
    as _i16;
import 'package:school_management/application/page_item_title/page_item_title_cubit.dart'
    as _i3;
import 'package:school_management/application/students/create_student/create_student_cubit.dart'
    as _i15;
import 'package:school_management/application/students/get_student/student_cubit.dart'
    as _i13;
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart'
    as _i12;
import 'package:school_management/domain/auth/i_auth_facade.dart' as _i5;
import 'package:school_management/domain/group/i_group_repository.dart' as _i7;
import 'package:school_management/domain/student/i_student_repository.dart'
    as _i9;
import 'package:school_management/infrastructure/auth/itunique_auth_facade.dart'
    as _i6;
import 'package:school_management/infrastructure/core/injectable_module.dart'
    as _i17;
import 'package:school_management/infrastructure/groups/itunique_group_repository.dart'
    as _i8;
import 'package:school_management/infrastructure/students/itunique_student_repository.dart'
    as _i10;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.PageItemTitleCubit>(() => _i3.PageItemTitleCubit());
    gh.factory<String>(
      () => injectableModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<String>(
      () => injectableModule.httpUrl,
      instanceName: 'HttpUrl',
    );
    gh.lazySingleton<_i4.Dio>(
        () => injectableModule.dio(gh<String>(instanceName: 'HttpUrl')));
    gh.lazySingleton<_i5.IAuthFacade>(
        () => _i6.ITUniqueAuthFacade(gh<_i4.Dio>()));
    gh.lazySingleton<_i7.IGroupRepository>(
        () => _i8.ITUniqueGroupRepository(gh<_i4.Dio>()));
    gh.lazySingleton<_i9.IStudentRepository>(
        () => _i10.ITUniqueStudentRepository(gh<_i4.Dio>()));
    gh.factory<_i11.LoginFormBloc>(
        () => _i11.LoginFormBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i12.StudentCardsCubit>(
        () => _i12.StudentCardsCubit(gh<_i9.IStudentRepository>()));
    gh.factory<_i13.StudentCubit>(
        () => _i13.StudentCubit(gh<_i9.IStudentRepository>()));
    gh.factory<_i14.AuthStatusBloc>(
        () => _i14.AuthStatusBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i15.CreateStudentCubit>(
        () => _i15.CreateStudentCubit(gh<_i9.IStudentRepository>()));
    gh.factory<_i16.GroupsCubit>(
        () => _i16.GroupsCubit(gh<_i7.IGroupRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i17.InjectableModule {}
