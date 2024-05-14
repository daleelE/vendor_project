import 'dart:ui';

import '../../../../../../exports.dart';

class CustomBottomBar extends StatelessWidget {
  final List<Widget> children;
  const CustomBottomBar({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight.rH,
        margin: kPagePadding,
        child: BottomAppBar(
          elevation: 0,
          padding: EdgeInsets.zero,
          color: Colors.transparent,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(320),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: getPrimaryThemeColor(context),
                gradient: LinearGradient(
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    colors: [
                      getPrimaryThemeColor(context),
                      getPrimaryThemeColor(context).darken(60),
                    ]),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  blendMode: BlendMode.srcOver,
                  filter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                    tileMode: TileMode.decal,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: children,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
