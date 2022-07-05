import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/app/widgets/buttons/base_button.dart';
import 'package:power_bank/app/widgets/inputs/base_input.dart';
import 'package:power_bank/app/widgets/items/contact_item.dart';
import 'package:power_bank/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/core/validation/default_form.dart';
import 'package:power_bank/core/validation/email.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:power_bank/localization/app_localizations.dart';

import 'bloc/contacts_bloc.dart';

class ContactsScreen extends StatefulWidget {
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends BaseBlocStateWidget<ContactsScreen, ContactsBloc, ContactsEvent> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.background2,
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<ContactsBloc, ContactsState>(
        listener: (context, state, action) async {
          if (action is UnFocusAction) {
            FocusScope.of(context).unfocus();
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildLogo(),
                _buildContactsAndSupportService(),
              ],
            ),
          ),
        ),
      );

  Widget _buildLogo() => Padding(
        padding: const EdgeInsets.all(40),
        child: SvgPicture.asset(
          Assets.images.logo,
          height: 71,
          width: 295,
        ),
      );

  Widget _buildContactsAndSupportService() => Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 25),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.background1,
            boxShadow: [BoxShadow(offset: Offset(4, 4), blurRadius: 8, color: AppColors.shadow)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContacts(),
              const SizedBox(height: 24),
              _buildDivider(),
              const SizedBox(height: 24),
              _buildSupportService(),
            ],
          ),
        ),
      );

  Widget _buildDivider() => Container(
        height: 1,
        color: AppColors.gray.withOpacity(0.6),
      );

  Widget _buildContacts() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(localization.contactData),
          const SizedBox(height: 32),
          _buildAddress(),
          const SizedBox(height: 24),
          _buildPhone(),
        ],
      );

  Widget _buildAddress() => BlocBuilder<ContactsBloc, ContactsState>(
    buildWhen: (previous, current) => previous.addresses != current.addresses,
        builder: (context, state) => ContactItem(
          title: localization.address + ':',
          values: state.addresses,
          needUnderLine: false,
        ),
      );

  Widget _buildPhone() => BlocBuilder<ContactsBloc, ContactsState>(
    buildWhen: (previous, current) => previous.phones != current.phones,
        builder: (context, state) {
          return ContactItem(
            title: localization.phones + ':',
            values: state.phones,
            onItemClicked: (phone) {
              sendEvent(ContactsEvent.phoneClicked(phone));
            },
          );
        },
      );

  Widget _buildSupportService() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(localization.questionsWriteToUs),
          const SizedBox(height: 24),
          _buildTopicInput(),
          const SizedBox(height: 16),
          _buildEmailInput(),
          const SizedBox(height: 16),
          _buildMessageInput(),
          const SizedBox(height: 28),
          _buildSendButton(),
        ],
      );

  Widget _buildTitle(String title) => Text(
        title,
        style: TextStyle().copyWith(
          fontSize: 19,
          color: AppColors.onBackground1,
          fontWeight: FontWeight.w700,
        ),
      );

  Widget _buildTopicInput() => BlocBuilder<ContactsBloc, ContactsState>(
    buildWhen: (previous, current) => previous.topicForm != current.topicForm,
        builder: (context, state) {
          return BaseInput(
            text: state.topicForm.value,
            hint: localization.topic,
            hintStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputHint, height: 24 / 15),
            textStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputText, height: 24 / 15),
            textAlign: TextAlign.start,
            contentPadding: const EdgeInsets.only(left: 8, right: 24, top: 12, bottom: 12),
            onChanged: (text) {
              sendEvent(ContactsEvent.topicChanged(DefaultForm.dirty(text)));
            },
          );
        },
      );

  Widget _buildEmailInput() => BlocBuilder<ContactsBloc, ContactsState>(
    buildWhen: (previous, current) => previous.emailForm != current.emailForm,
        builder: (context, state) {
          return BaseInput(
            hint: localization.email,
            text: state.emailForm.value,
            hintStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputHint, height: 24 / 15),
            textStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputText, height: 24 / 15),
            textAlign: TextAlign.start,
            contentPadding: const EdgeInsets.only(left: 8, right: 24, top: 12, bottom: 12),
            onChanged: (text) {
              sendEvent(ContactsEvent.emailChanged(EmailForm.dirty(text)));
            },
          );
        },
      );

  Widget _buildMessageInput() => BlocBuilder<ContactsBloc, ContactsState>(
    buildWhen: (previous, current) => previous.messageForm != current.messageForm,
        builder: (context, state) {
          return BaseInput(
            hint: localization.message,
            text: state.messageForm.value,
            hintStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputHint, height: 24 / 15),
            textStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.inputText, height: 24 / 15),
            textAlign: TextAlign.start,
            contentPadding: const EdgeInsets.only(left: 8, right: 24, top: 12, bottom: 12),
            minLines: 5,
            maxLines: 5,
            onChanged: (text) {
              sendEvent(ContactsEvent.messageChanged(DefaultForm.dirty(text)));
            },
          );
        },
      );

  Widget _buildSendButton() => BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, state) {
          return BaseButton(
            text: localization.send,
            onPressed: () {
              sendEvent(ContactsEvent.sendClicked());
            },
          );
        },
      );
}
