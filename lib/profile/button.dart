

import "package:flutter/material.dart";

import "../screens/profile.dart" as profileScreen;
import "../configuration/theme.dart" as theme;



final profileButtonColor = theme.RelentlessGreen;
final decorationColor = theme.ColorCodes[800];
final iconButtonColor = theme.ColorCodes[250];


class ProfileButton extends StatelessWidget {

    const ProfileButton({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {

        return Material(

            color: profileButtonColor,

            child: Center(

                child: Ink(

                    decoration: ShapeDecoration(

                        color: decorationColor,
                        shape: CircleBorder(),

                    ),

                    child:  profileButton.ProfileButton();

                )
            )
        );
    }
}
