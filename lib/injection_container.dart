
import 'package:flutter_design_pattern/features/main_menu/data/data_source/remote_data_source.dart';
import 'package:flutter_design_pattern/features/main_menu/data/repository_imp/categories_repo_imp.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/repository/categories_repository.dart';
import 'package:flutter_design_pattern/features/main_menu/presentation/business_logic/main_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! blocs
  sl.registerFactory(() => MainCubit(categoriesRepo: sl()));
  

  //! repositories
  sl.registerLazySingleton<CategoriesRepo>(() =>
      CategoriesRepoImp(categoryRemoteDataSource: sl()));

  //! dataSources
  sl.registerLazySingleton<CategoryRemoteDataSource>(
          () => CategoriesRemoteDataImp(/* client: sl() */));


  //! core
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  // sl.registerLazySingleton(() => LocalStorage(prefs: sl()));

  //! external
  // final sharedPref = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPref);
  // sl.registerLazySingleton(() => http.Client);
  // sl.registerLazySingleton(() => InternetConnectionChecker());
}
