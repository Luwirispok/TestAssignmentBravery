import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/presentation/screens/start/bloc/start_bloc.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/di/injection.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:power_bank/app/resources/app_colors.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends BaseBlocStateWidget<StartScreen, StartBloc, StartEvent> {
  @override
  Widget build(BuildContext context) => BaseBlocListener<StartBloc, StartState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {
          if (action is RegisterLocalization) {
            await Locator.registerLocalization(context);
          }
        },
        child: Scaffold(
          body: _buildBody(),
        ),
      );

  Widget _buildBody() => Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 240),
          Center(child: _buildLogo()),
          const Spacer(flex: 216),
          _buildLoader(),
          const Spacer(flex: 220),
        ],
      );

  Widget _buildLogo() => SvgPicture.asset(Assets.images.logo, width: 295, height: 71);

  Widget _buildLoader() => const SizedBox(
        height: 70.0,
        width: 70.0,
        child: CircularProgressIndicator(
          strokeWidth: 5,
          color: AppColors.onBackground12,
        ),
      );
}
