import 'dart:developer';

import 'package:get/get.dart';

import '../../../../../../../exports.dart';
import '../widgets/widgets.dart';

class ImagesAndIndicator extends StatefulWidget {
  const ImagesAndIndicator({super.key});

  @override
  State<ImagesAndIndicator> createState() => _ImagesAndIndicatorState();
}

class _ImagesAndIndicatorState extends State<ImagesAndIndicator> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.4,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.4, .5],
                colors: [
                  context.colorScheme.background,
                  context.colorScheme.background.withOpacity(.0),
                ],
              ),
            ),
            child: PageView.builder(
                controller: pageController,
                itemCount: onboardingItem.length,
                onPageChanged: (page) {
                  setState(() {
                    currentPage = page;
                    log(currentPage.toString());
                  });
                },
                itemBuilder: (context, index) {
                  final item = onboardingItem[index];
                  return SvgPicture.asset(
                    item.img,
                    width: SizeConfig.screenWidth,
                  );
                }),
          ),
          Positioned(
            bottom: 100.rH,
            child: CustomIndicatorWidget(
              currentIndex: currentPage,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  onboardingItem[currentPage].title.capitalize!,
                  style: context.titleMedium!
                      .copyWith(color: context.colorScheme.onBackground),
                ),
                SizedBox(height: 10.rH),
                Text(
                  onboardingItem[currentPage].description,
                  textAlign: TextAlign.center,
                  style: context.bodySmall!
                      .copyWith(color: context.colorScheme.onBackground),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
