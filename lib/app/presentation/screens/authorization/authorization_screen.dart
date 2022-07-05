import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_bank/app/presentation/screens/authorization/bloc/authorization_bloc.dart';
import 'package:power_bank/app/widgets/inputs/phone_input.dart';
import 'package:power_bank/app/widgets/texts/underlined_text.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/localization/app_localizations.dart';
import 'package:power_bank/app/widgets/buttons/base_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState
    extends BaseBlocStateWidget<AuthorizationScreen, AuthorizationBloc, AuthorizationEvent> {
  // late FocusNode _focusNode;
  // late void Function() _focusListener;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(),
        ),
      );

  Widget _buildBody() => BaseBlocListener<AuthorizationBloc, AuthorizationState>(
        child: Column(
          children: [
            const Spacer(flex: 196),
            _buildInfoSection(),
            _buildInputPhone(),
            _buildButtonAuthorization(),
            const Spacer(flex: 58),
            _buildFooterSection(),
            const Spacer(flex: 203),
          ],
        ),
      );

  Widget _buildInfoSection() => Column(
        children: [
          _buildLogo(),
          const SizedBox(height: 40),
          _buildDescription(),
        ],
      );

  Widget _buildLogo() => SvgPicture.asset(Assets.images.logo, width: 295, height: 71);

  Widget _buildInputPhone() => BlocBuilder<AuthorizationBloc, AuthorizationState>(
        buildWhen: (previous, current) => previous.phone != current.phone,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: PhoneInput(
              phone: state.phone.value,
              onChanged: (phone) {
                sendEvent(AuthorizationEvent.phoneChanged(phone));
              },
            ),
          );
        },
      );

  Widget _buildDescription() => Text(
        AppLocalizations.of(context).authorizationDescription,
        style: const TextStyle().copyWith(fontSize: 15, color: AppColors.onBackground1),
      );

  Widget _buildButtonAuthorization() => BlocBuilder<AuthorizationBloc, AuthorizationState>(
        buildWhen: (previous, current) =>
            previous.buttonEnabled != current.buttonEnabled || previous.isLoading != current.isLoading,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BaseButton(
              text: AppLocalizations.of(context).logIn,
              enabled: state.buttonEnabled,
              onPressed: () {
                setState(
                  () {
                    sendEvent(AuthorizationEvent.sendCodeClicked());
                  },
                );
              },
            ),
          );
        },
      );

  Widget _buildFooterSection() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context).privacyPolicyAndTermsOfUseDescription,
              textAlign: TextAlign.center,
              style: const TextStyle().copyWith(fontSize: 13, color: AppColors.onBackground1, height: 18 / 13,),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.onBackground13),
                ),
              ),
              child:
              UnderlinedText(
                localization.privacyPolicy,
                style: const TextStyle().copyWith(
                  fontSize: 13,
                  color: AppColors.onBackground13,
                  height: 18 / 13,
                ),
                onPressed: _launchUrl,
                bottom: 3,
                widthBorder: 1,
              ),
            ),
          ],
        ),
      );

  void _launchUrl() async {
    if (!await launch('https://youtu.be/dQw4w9WgXcQ')) throw 'Could not launch';
  }
}
