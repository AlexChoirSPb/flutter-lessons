import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/app_state_demo/screens/add_person_widget.dart';
import 'package:flutter_ui/apps/app_state_demo/screens/edit_person_widget.dart';
import 'package:flutter_ui/apps/app_state_demo/screens/person_contacts_widget.dart';
import 'package:flutter_ui/apps/app_state_demo/state/contact_book_state.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class AppStateDemoWidget extends StatelessWidget {
  const AppStateDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ContactBookState contactBookState = ContactBookState();
    contactBookState.load();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => contactBookState),
      ],
      child: MaterialApp.router(
        title: "State App Demo",
        routerConfig: router(),
      ),
    );
  }

  GoRouter router() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PersonContactsWidget(),
        routes: [
          GoRoute(
            path: 'add',
            builder: (context, state) => const AddPersonWidget(),
          ),
          GoRoute(
            path: 'edit/:id',
            builder: (context, state) => EditPersonWidget(
              id: state.pathParameters['id']!,
            ),
          ),
        ],
      ),
    ], initialLocation: '/');
  }
}
