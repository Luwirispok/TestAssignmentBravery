import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_bank/app/presentation/screens/confirm_phone/bloc/confirm_phone_bloc.dart';
import 'package:power_bank/app/widgets/inputs/code_input.dart';
import 'package:power_bank/app/widgets/texts/underlined_text.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/app/widgets/buttons/base_button.dart';
import '../../../widgets/app_bars/default_app_bar.dart';

class ConfirmPhoneScreen extends StatefulWidget {
  const ConfirmPhoneScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmPhoneScreen> createState() => _ConfirmPhoneScreenState();
}

class _ConfirmPhoneScreenState extends BaseBlocStateWidget<ConfirmPhoneScreen, ConfirmPhoneBloc, ConfirmPhoneEvent> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(),
        ),
      );

  Widget _buildBody() => BaseBlocListener<ConfirmPhoneBloc, ConfirmPhoneState>(
        child: Column(
          children: [
            _buildHeader(),
            const Spacer(flex: 144),
            _buildInfoSection(),
            _buildCodeInput(),
            _buildSendCodeButton(),
            const Spacer(flex: 58),
            _buildFooterSection(),
            const Spacer(flex: 202),
          ],
        ),
      );

  Widget _buildHeader() => DefaultAppBar(title: localization.authorizationCode);

  Widget _buildInfoSection() => Column(
        children: [
          _buildLogo(),
          const SizedBox(height: 40),
          _buildDescription(),
        ],
      );

  Widget _buildLogo() => SvgPicture.asset(Assets.images.logo, width: 295, height: 71);

  Widget _buildDescription() => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              localization.smsWasSentToTheNumber(state.phone.formattedNumber),
              textAlign: TextAlign.center,
              style: const TextStyle().copyWith(
                fontSize: 15,
                color: AppColors.onBackground1,
              ),
            ),
          );
        },
      );

  Widget _buildCodeInput() => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        buildWhen: (previous, current) => previous.code != current.code,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: CodeInput(
              hint: localization.enterConfirmationCode,
              code: state.code,
              onChanged: (code) {
                sendEvent(ConfirmPhoneEvent.codeChanged(code));
              },
            ),
          );
        },
      );

  Widget _buildSendCodeButton() => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        buildWhen: (previous, current) => previous.code != current.code,
        builder: (context, state) {
          bool buttonEnabled = (state.code?.length ?? 0) >= 5;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BaseButton(
              text: localization.enter,
              enabled: buttonEnabled,
              onPressed: () {
                sendEvent(ConfirmPhoneEvent.enterClicked());
              },
            ),
          );
        },
      );

  Widget _buildFooterSection() => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        buildWhen: (previous, current) => previous.countOfSecondsToResend != current.countOfSecondsToResend,
        builder: (context, state) {
          Color? color = state.countOfSecondsToResend > 0 ? AppColors.onInactive : AppColors.onBackground13;
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 48,
            ),
            child: Column(
              children: [
                Text(
                  state.countOfSecondsToResend > 0
                      ? localization.afterSecond('${state.countOfSecondsToResend}')
                      : localization.youCan,
                  textAlign: TextAlign.center,
                  style: const TextStyle().copyWith(
                    fontSize: 15,
                    height: 24 / 15,
                    color: AppColors.onBackground1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: color,
                      ),
                    ),
                  ),
                  child: UnderlinedText(
                    localization.resendCode,
                    style: const TextStyle().copyWith(
                      fontSize: 15,
                      color: color,
                      height: 24 / 15,
                    ),
                    bottom: 7,
                    lineColor: color,
                    onPressed: () {
                      if (state.countOfSecondsToResend == 0) {
                        sendEvent(ConfirmPhoneEvent.resendCodeClicked());
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
}
