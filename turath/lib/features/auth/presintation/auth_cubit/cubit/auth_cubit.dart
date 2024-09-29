import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turath/features/auth/presintation/auth_cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
