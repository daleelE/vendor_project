
import '../../../../../../../exports.dart';

class CustomIndicatorWidget extends StatelessWidget {
  final int currentIndex;
  const CustomIndicatorWidget({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(onboardingItem.length, (index) {
          bool active = currentIndex == index;
          return indicatorWidgte(context, active);
        }),
      ],
    );
  }

  Widget indicatorWidgte(BuildContext context, bool active) {
    return AnimatedContainer(
      width: active ? 20.rW : 10.rW,
      height: 10.rW,
      margin: EdgeInsets.symmetric(horizontal: 4.rW),
      duration: const Duration(
        milliseconds: 400,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: active ? null : Border.all(color: context.colorScheme.primary),
        color: active
            ? context.colorScheme.primary
            : context.colorScheme.primary.lighten(90),
      ),
    );
  }
}

List<OnboardingModel> onboardingItem = [
  OnboardingModel(
      img: OnboardingImages.onboard03,
      title: 'gift',
      description:
          'That’s one of the reasons this bio is so good. Even if you’ve never heard of BarkBox before'),
  OnboardingModel(
      img: OnboardingImages.onboard02,
      title: 'choose product',
      description:
          'That’s one of the reasons this bio is so good. Even if you’ve never heard of BarkBox before'),
  OnboardingModel(
      img: OnboardingImages.onboard01,
      title: 'online ecommerce',
      description:
          'That’s one of the reasons this bio is so good. Even if you’ve never heard of BarkBox before'),
];

class OnboardingModel {
  final String img;
  final String title;
  final String description;

  OnboardingModel(
      {required this.img, required this.title, required this.description});
}
