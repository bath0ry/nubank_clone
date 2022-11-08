import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewCubit extends Cubit<IconData> {
  ViewCubit() : super(Icons.visibility);
  void switchIcon() =>
      emit(state == Icons.visibility ? Icons.visibility_off : Icons.visibility);
}
