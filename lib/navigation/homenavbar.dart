

import "package:flutter/material.dart";
import "../profile/button.dart" as profileButton;


typedef TitledAppBar = AppBar Function(
    String title
);

getAppBar({

    String mainTitle = "",

}) => AppBar(

    //=====================\\
    // LEFT SIDE BUTTON
    leading:




    IconButton(

        color: iconButtonColor,

        icon: Image.asset(
            "assets/images/thearr_black.png"
        ),

        onPressed: () {

            Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                    return profileScreen.ProfileScreen();
                },
            ));

        },
    ),





    profileButton.ProfileButton(),

    //=====================\\
    // MAIN TITLE TEXT
    title: FittedBox(

        fit:   BoxFit.fitWidth,

        child: Text(

          mainTitle,

          textAlign: TextAlign.right,

          overflow:  TextOverflow.visible,

            style:     TextStyle(
                fontWeight: FontWeight.bold,),
          )
      ),
);
