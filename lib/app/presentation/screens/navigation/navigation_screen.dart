import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/presentation/screens/confirm_phone/bloc/confirm_phone_bloc.dart';
import 'package:power_bank/app/presentation/screens/contacts/bloc/contacts_bloc.dart';
import 'package:power_bank/app/presentation/screens/contacts/contacts_screen.dart';
import 'package:power_bank/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:power_bank/app/presentation/screens/vending_machines_on_map/bloc/vending_machines_on_map_bloc.dart';
import 'package:power_bank/app/presentation/screens/vending_machines_on_map/vending_machines_on_map_screen.dart';
import 'package:power_bank/app/widgets/app_bars/navigation_app_bar.dart';
import 'package:power_bank/app/widgets/drawers/navigation_drawer.dart';
import 'package:power_bank/app/widgets/items/menu_item_widget.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/domain/entities/network/response/vending_machine_response.dart';
import 'package:power_bank/gen/assets.gen.dart';

import '../../../../di/injection.dart';
import '../../../../domain/enums/menu_item.dart';
import '../../../resources/app_styles.dart';
import '../authorization/authorization_screen.dart';
import '../authorization/bloc/authorization_bloc.dart';
import '../confirm_phone/confirm_phone_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends BaseBlocStateWidget<NavigationScreen, NavigationBloc, NavigationEvent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        onDrawerChanged: (bool isOpen) {
          sendEvent(NavigationEvent.drawerStateChanged(isOpen));
        },
        key: _scaffoldKey,
        drawer: _buildDrawer(),
        body: SafeArea(
          child: _buildBody(),
        ),
      );

  Widget _buildDrawer() => BlocBuilder<NavigationBloc, NavigationState>(
        buildWhen: (previous, current) =>
            previous.menuItems != current.menuItems ||
            previous.phone != current.phone ||
            previous.pressedMenuItem != current.pressedMenuItem,
        builder: (context, state) => NavigationDrawer(
          phone: state.phone.formattedNumber,
          menuItems: state.menuItems,
          correctItem: state.pressedMenuItem,
          menuItemPressed: (MenuItemType item) {
            sendEvent(NavigationEvent.menuItemSelected(item));
          },
        ),
      );

  Widget _buildBody() => BaseBlocListener<NavigationBloc, NavigationState>(
      listener: (context, state, action) async {
        if (action is OpenDrawer) {
          _scaffoldKey.currentState?.openDrawer();
        }
        if (action is CloseDrawer) {
          _scaffoldKey.currentState?.openEndDrawer();
        }
      },
      child: Stack(
        children: [
          WillPopScope(
            onWillPop: () async {
              sendEvent(NavigationEvent.backClicked());
              return false;
            },
            child: Padding(
              padding: EdgeInsets.only(top: 56),
              child: _buildScreen(),
            ),
          ),
          _buildHeader(),
        ],
      ));

  Widget _buildHeader() => NavigationAppBar(
        title: localization.chooseVendingMachine,
        leadingButtonPressed: () {
          sendEvent(NavigationEvent.menuClicked());
        },
      );

  Widget _buildScreen() => BlocBuilder<NavigationBloc, NavigationState>(builder: (context, state) {
        switch (state.pressedMenuItem) {
          case MenuItemType.findPowerBank:
            return BlocProvider(
              create: (context) => VendingMachinesOnMapBloc(
                  vendingMachinesRepository: Locator.injection(),
                  productRentRepository: Locator.injection(),
                  localization: localization),
              child: VendingMachinesOnMapScreen(),
            );
          case MenuItemType.contacts:
            return BlocProvider(
              create: (context) => ContactsBloc(
                  preferencesLocalGateway: Locator.injection(),
                  contactsRepository: Locator.injection(),
                  localization: localization),
              child: ContactsScreen(),
            );
        }
        return const SizedBox();
      });
}
