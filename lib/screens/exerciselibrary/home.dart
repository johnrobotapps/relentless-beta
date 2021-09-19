


// see that favorited page
// with clickable map of
// Netherlands



import "package:flutter/matreial.dart";



class ExerciseLibraryHome extends StatelessWidget {

    final appBar homeNavBar;
    final Color bgColor;

    ExerciseLibraryHome({
        required this.homeNavBar,
        required this.bgColor,
    })

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: homeNavBar,
            backgroundColor: bgColor,

        );
    }
}
