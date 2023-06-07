import 'package:vehicles_dealing_flutter_coding_challenge/core/validators/input_validator.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/di_config.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/pages/auction_search_page.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/presentation/bloc/auth_manager.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final AuthManager _authManager;
  late final InputValidator _inputValidator;

  @override
  void initState() {
    _authManager = getIt.get<AuthManager>();
    _inputValidator = getIt.get<InputValidator>();
    _emailController = TextEditingController(text: _inputValidator.getEmail);
    _passwordController =
        TextEditingController(text: _inputValidator.getPassword);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<AuthManager, AuthState>(
          bloc: _authManager,
          builder: (context, state) => state.maybeWhen(
            (isLoading, user, failure) => _buildBody(),
            isLoading: () => _buildLoadingState(),
            failure: (failure) => _buildBody(),
            orElse: () => _buildBody(),
          ),
          listener: (_, state) {
            state.whenOrNull(
              (isLoading, user, failure) => null,
              isAuthenticated: (user) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const AuctionSearchPage(),
                ),
              ),
              failure: (failure) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red.shade300,
                  content: Text(
                    failure.message ?? '',
                  ),
                ),
              ),
            );
          },
        ),
      );

  Widget _buildBody() => Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 48.0),
              _buildEmailField(),
              const SizedBox(height: 24.0),
              _buildPasswordField(),
              const SizedBox(height: 24.0),
              _buildSignInButton(),
            ],
          ),
        ),
      );
  Widget _buildLoadingState() => Stack(
        children: [
          _buildBody(),
          Container(
            color: Colors.white.withOpacity(0.5),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      );

  Widget _buildEmailField() => StreamBuilder<String>(
        stream: _inputValidator.email$,
        builder: (context, snapshot) => TextField(
          controller: _emailController,
          onChanged: _inputValidator.updateEmail,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  5.0,
                ),
              ),
            ),
            hintText: 'Email',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
        ),
      );

  Widget _buildPasswordField() => StreamBuilder<String>(
        stream: _inputValidator.password$,
        builder: (context, snapshot) => TextField(
          controller: _passwordController,
          onChanged: _inputValidator.updatePassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  5.0,
                ),
              ),
            ),
            hintText: 'Password',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
          obscureText: true,
        ),
      );
  Widget _buildSignInButton() => StreamBuilder<bool>(
        stream: _inputValidator.emailAndPasswordValid$,
        builder: (context, snapshot) => CustomButton(
          text: 'Sign in',
          onPressed: snapshot.data ?? false
              ? () => _authManager.signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  )
              : null,
        ),
      );
  @override
  void dispose() {
    _inputValidator.disposeEmailAndPassword();
    super.dispose();
  }
}
