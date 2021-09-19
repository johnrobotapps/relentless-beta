
import "package:flutter/material.dart";


class SaveProfileButton extends StatelessWidget {

    final Color profileButtonColor;
    final Color profileDecorationColor;

    SaveProfileButton({
        required this.profileButtonColor,
        required this.profileDecorationColor,
    });

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

                    child: TextButton(
                        child: Text("Save"),
                        onPressed: () {},
                    ),

                )
            )
        );
    }
}

class ProfileScreen extends StatelessWidget {

    final Color profileDecorationColor;
    final Color profileButtonColor;

    ProfileScreen({
        required this.profileButtonColor,
        required this.profileDecorationColor,
    });

    @override
    Widget build(BuildContext context) {

        final SaveProfileButton saveProfileButton = SaveProfileButton(
            profileButtonColor: profileButtonColor,
            profileDecorationColor: profileDecorationColor,
        );

        final AppBar profileNavBar = AppBar(
            leading: BackButton(),
            title: Text("User Settings"),
            actions: <Widget>[
                saveProfileButton,
            ],
        );

        return Scaffold(

            appBar: profileNavBar,
            backgroundColor: Colors.white,
            body: Center(),

        );
    }

}
