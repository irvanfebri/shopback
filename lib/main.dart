
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_shop/app_blocs.dart';
import 'package:flutter_shop/app_events.dart';
import 'package:flutter_shop/app_states.dart';
import 'package:flutter_shop/common/values/colors.dart';
import 'package:flutter_shop/pages/application/application_page.dart';
import 'package:flutter_shop/pages/bloc_providers.dart';
import 'package:flutter_shop/pages/register/register.dart';
import 'package:flutter_shop/pages/sign_in/sign_in.dart';
import 'package:flutter_shop/pages/welcome/welcome.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: AppBlocProviders.allBlocProviders,
        child: ScreenUtilInit(
            designSize: Size(375, 812),
            builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    appBarTheme: AppBarTheme(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(
                        color: AppColors.primaryText,
                      ),
                    )
                  ),
                   home: ApplicationPage(),
                  routes: {
                    "/myHomePage":(context)=>MyHomePage(),
                    "/signIn":(context)=>SignIn(),
                    "/register":(context)=>Register(),
                  },
                )));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppStates>(
          builder: (BuildContext context, AppStates state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "heroTag1",
            onPressed: () =>
                BlocProvider.of<AppBlocs>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "heroTag2",
            onPressed: () =>
                BlocProvider.of<AppBlocs>(context).add(Decrement()),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
