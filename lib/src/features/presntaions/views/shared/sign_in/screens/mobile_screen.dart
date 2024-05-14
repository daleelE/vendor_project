import '../../../../../../../exports.dart';
import '../../../../widgets/custom_form_filed/input_form.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: kEdgePadding,
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * .3,
        ),
        CustomTextForm(
          title: 'email',
        ),
        SizedBox(height: 10.rH),
        CustomTextForm(
          title: 'password',
        ),
        SizedBox(height: 20.rH),
        AdaptiveFilledButtonWidget(
          press: () => Routes.vendorLayout.offPage(),
          label: 'sign in',
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.lock_open),
            label: Text(
              'Forget password',
              style: context.labelMedium!
                  .copyWith(color: context.colorScheme.onSurface),
            ))
      ],
    );
  }
}
