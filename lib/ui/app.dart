import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madam_makeup/ui/pages/authentication/welcome/welcome.dart';
import 'package:madam_makeup/ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // Quitamos el banner DEBUG
      debugShowCheckedModeBanner: false,
      // Establecemos el tema claro
      theme: MyTheme.ligthTheme,
      // Establecemos el tema oscuro
      darkTheme: MyTheme.darkTheme,
      //themeMode: ThemeMode.system,
      themeMode: ThemeMode.system,

      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
      },
    );
  }
}
