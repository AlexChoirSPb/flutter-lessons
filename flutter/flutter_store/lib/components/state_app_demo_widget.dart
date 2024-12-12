import 'package:flutter/material.dart';
import 'package:flutter_store/components/add_person_widget.dart';
import 'package:flutter_store/components/edit_person_widget.dart';
import 'package:flutter_store/components/persons_widget.dart';
import 'package:flutter_store/state/contact_book_state.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class StateAppDemoWidget extends StatelessWidget {
  const StateAppDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ContactBookState contactBookState = ContactBookState();
    contactBookState.load();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => contactBookState)
      ],
      child: MaterialApp.router(
        title: "SQLite Demo",
        routerConfig: router(),
      ),
    );
  }

  GoRouter router() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PersonsWidget(),
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
