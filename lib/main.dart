import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:practical/src/presentation/cubits/country/country_cubit.dart';
import 'src/config/router/app_router.dart';
import 'src/config/themes/app_theme.dart';
import 'src/domain/repositories/api_repository.dart';
import 'src/locator.dart';
import 'src/utils/constants/colors.dart';
import 'src/utils/constants/strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: white, // navigation bar color
    statusBarColor: darkBlue, // status bar color
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (context) => CountryCubit(
            locator<ApiRepository>(),
          ),
        ),



      ],
      child: OKToast(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          title: appTitle,
          theme: AppTheme.light,
        ),
      ),
    );
  }
}
