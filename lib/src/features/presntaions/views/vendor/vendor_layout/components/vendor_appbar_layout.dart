import '../../../../../../../exports.dart';
import '../../../../widgets/custom_appbar/custom_appbar.dart';
import '../../../../widgets/icons/icon_counter.dart';

CustomAppbar vendorLayoutAppbar(BuildContext context) {
  return CustomAppbar(
    title: ' ',
    customLeading: const SizedBox.shrink(),
    leadingPress: () {},
    actions: [
      IconWithCounter(
        IconsLine.notificationBell,
        count: 2,
        tap: () {},
      )
    ],
  );
}
