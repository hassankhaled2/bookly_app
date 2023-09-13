
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/home/data/data_sources/home_local_data_source.dart';
import '../../../Features/home/data/data_sources/home_remote_data_source.dart';
import '../../../Features/home/data/repos/home_repo_impl.dart';
import '../api_service.dart';
final  getIt=GetIt.instance;

void setupServiceLocator() {
  // تم انشاء ال api مره واحده بدل ماكنت هنتشاها فى كل repo  (ده لو كان عندك اكتر من Feature هيكون عندك اكتر من repo فبتالى هيكون عندك remote ,local )

  getIt.registerSingleton( ApiService(Dio(),),);
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource:HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      )
  ),
  );

}