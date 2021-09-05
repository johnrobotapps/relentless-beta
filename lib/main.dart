

import "package:flutter/material.dart";

import "screens/home.dart" as home;
import "configuration/theme.dart" as theme;
import "configuration/info.dart" as info;
import "navigation/homenavbar.dart" as homenavbar;


// Profile Part
//     -  has AppBar propagation
import "" as profileButton;


void main() => runApp(TheApp());


class TheApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        final AppBar HomeNavBar = homenavbar.getAppBar(
            mainTitle: info.AppTitle,
        );

        return MaterialApp(

            theme: theme.appTheme,
            title: info.AppTitle,

            home: home.HomeScreen(

                homeNavBar: HomeNavBar,
                bgColor: theme.RelentlessGreen,

            )
        );
    }
}
