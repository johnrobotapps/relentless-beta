

import "package:flutter/material.dart";

import "../configuration/info.dart" as info;
import "../configuration/theme.dart" as theme;

import "../screens/profile.dart" as profile;



final homeButtonColor = theme.RelentlessGreen;
final profileButtonColor = theme.RelentlessGreen;
final profileDecorationColor = (theme.ColorCodes[400])!;
final homeDecorationColor = (theme.ColorCodes[800])!;
final iconButtonColor = (theme.ColorCodes[200])!;



final AppBar HomeNavBar = AppBar(

    //=====================\\
    // LEFT SIDE BUTTON
    leading: HomeButton(),

    //=====================\\
    // MAIN TITLE TEXT
    actions:[
        ProfileButton(),
    ],

    title: FittedBox(
        fit:   BoxFit.fitWidth,
        child: Text(
            info.AppTitle,
            textAlign: TextAlign.center,
            overflow:  TextOverflow.visible,
            style:     TextStyle(
                fontWeight: FontWeight.bold
            ),
        )
    ),
);


class HomeButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Material(

        color: homeButtonColor,

        child: Center(
            child: Ink(

              decoration: ShapeDecoration(
                color: homeDecorationColor,
                shape: CircleBorder(),

              ),

              child: IconButton(

                color: iconButtonColor,
                icon: Image.asset(
                    "assets/images/thearr_black.png"
                ),

                onPressed: () {
                  Navigator.popUntil(
                    context,
                    ModalRoute.withName('/'),
                  );
                },
              ),
            )
        )
    );
  }
}


class ProfileButton extends StatelessWidget {

    final profile.ProfileScreen profileScreen = profile.ProfileScreen(

        profileButtonColor: profileButtonColor,
        profileDecorationColor: profileDecorationColor,

    );

    @override
    Widget build(BuildContext context) {

        return Material(

            color: profileButtonColor,

            child: Center(
                child: Ink(

                  decoration: ShapeDecoration(
                    color: profileDecorationColor,
                    shape: CircleBorder(),
                  ),

                  child: IconButton(
                    //color: iconButtonColor,
                    color: Colors.black,
                    icon: const Icon(Icons.settings),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return profileScreen;
                        },
                      ));
                    },

                  ),
                )
            )
        );
    }
}


//class ProfileButton extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//
//    final ProfileScreen profileScreen = ProfileScreen();
//
//    return Material(
//
//        color: profileButtonColor,
//
//        child: Center(
//            child: Ink(
//
//              decoration: ShapeDecoration(
//                color: profileDecorationColor,
//                shape: CircleBorder(),
//
//              ),
//
//              child: IconButton(
//
//                color: iconButtonColor,
//                icon: Image.asset(
//                    "assets/images/thearr_black.png"
//                ),
//
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute<void>(
//                    builder: (BuildContext context) {
//                      return profileScreen;
//                    },
//                  ));
//                },
//              ),
//            )
//        )
//    );
//  }
//}


//class ProfileScreen extends StatelessWidget {
//
//    ProfileScreen();
//
//    @override
//    Widget build(BuildContext context) {
//
//        return Scaffold(
//            appBar: AppBar(
//                title: Text("User Profile Settings"),
//                leading: BackButton(),
//            ),
//            backgroundColor: Colors.white,
//            body: Center(),
//        );
//    }
//}


//class ProfileButton extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//
//    final ProfileScreen profileScreen = ProfileScreen();
//
//    return Material(
//
//            color: profileButtonColor,
//
//            child: Center(
//                child: Ink(
//
//                    decoration: ShapeDecoration(
//                        color: decorationColor,
//                        shape: CircleBorder(),
//
//                    ),
//
//                    child: IconButton(
//
//                        color: iconButtonColor,
//                        icon: Image.asset(
//                            "assets/images/thearr_black.png"
//                        ),
//
//                        onPressed: () {
//                            Navigator.push(context, MaterialPageRoute<void>(
//                                builder: (BuildContext context) {
//                                    return profileScreen;
//                                },
//                            ));
//                        },
//                    ),
//                )
//            )
//        );
//    }
//}
