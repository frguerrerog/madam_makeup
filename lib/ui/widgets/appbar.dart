import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madam_makeup/ui/pages/authentication/login/login_screen.dart';
import 'package:madam_makeup/ui/theme/theme.dart';

class CustomAppBar extends AppBar {
  final BuildContext context;
  final bool home;
  final String picUrl;
  final Widget tile;

  // Creating a custom AppBar that extends from Appbar with super();
  CustomAppBar(
      {Key? key,
      required this.context,
      required this.picUrl,
      required this.tile,
      this.home = true})
      : super(
          key: key,
          centerTitle: true,
          leading: Center(
            child: CircleAvatar(
              minRadius: 18.0,
              maxRadius: 18.0,
              backgroundImage: NetworkImage(picUrl),
            ),
          ),
          title: tile,
          actions: <Widget>[
            // Widgets que  realizan acciones
            IconButton(
                key: const Key("darkBtn"),
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? MyTheme.ligthTheme : MyTheme.darkTheme);
                },
                icon: const Icon(Icons.brightness_4_rounded),
                ),
            IconButton(
                key: const Key("logoutBtn"),
                onPressed: () {
                  //authenticationController.logout(); // controla que el logout se haya efectuado
                  Get.to(() => const LoginScreen());
                },
                icon: const Icon(
                    Icons.logout)), // se invoca el icono que se desea crear
          ],
        );
}
