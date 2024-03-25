import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/entities/error_entity/error_entity.dart';
import '../../../../app/ui/components/app_snack_bar.dart';

class AuthBuilder extends StatelessWidget {
  const AuthBuilder({
    super.key,
    required this.isNotAuthorized,
    required this.isWaiting,
    required this.isAuthorized,
  });

  final WidgetBuilder isNotAuthorized;
  final WidgetBuilder isWaiting;
  final ValueWidgetBuilder isAuthorized;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.when(
          notAuthorized: () => isNotAuthorized(context),
          authorized: (userEntity) => isAuthorized(context, userEntity, this),
          waiting: () => isWaiting(context),
          error: (error) => isNotAuthorized(context),
        );
      },
      listenWhen: ((previous, current) =>
          previous.mapOrNull(
            error: (value) => value,
          ) !=
          current.mapOrNull(
            error: (value) => value,
          )),
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => AppSnackBar.showSnackBarWithError(
              context, ErrorEntity.fromException(error)),
        );
      },
    );
  }
}
