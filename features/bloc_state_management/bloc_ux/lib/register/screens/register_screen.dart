import 'package:bloc_ux/register/bloc/register_bloc.dart';
import 'package:bloc_ux/register/bloc/register_event.dart';
import 'package:bloc_ux/register/bloc/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            _logo(theme),
            const SizedBox(height: 10.0),
            //_name_field,
            _emailField(context),
            const SizedBox(height: 10.0),
            _passwordField(context),
            const SizedBox(height: 10.0),
            _btn(context),
          ],
        ),
      ),
    );
  }

  Widget _logo(ThemeData theme) =>
      BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
        if (state is RegisterErrorState) {
          return Text(state.errorMessage,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.errorColor,
              ));
        } else {
          return const Offstage();
        }
      });

  Widget _emailField(BuildContext context) => TextField(
        controller: _emailController,
        onChanged: (email) {
          BlocProvider.of<RegisterBloc>(context).add(RegisterTextChangedEvent(
              email: _emailController.text,
              password: _passwordController.text));
        },
        decoration: InputDecoration(hintText: "Enter Email"),
      );

  Widget _passwordField(BuildContext context) => TextField(
        controller: _passwordController,
        onChanged: (password) {
          BlocProvider.of<RegisterBloc>(context).add(RegisterTextChangedEvent(
              email: _emailController.text,
              password: _passwordController.text));
        },
        decoration: InputDecoration(hintText: "Enter Password"),
      );

  Widget _btn(BuildContext context) =>
      BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
        return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    (state is RegisterValidState) ? Colors.blue : Colors.grey),
            child: const Text("SUBMIT"));
      });
}
