import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nubank_clone/products/components/text.dart';

class TextCubit extends Cubit<String> {
  TextCubit() : super(text);

  void switchText() =>
      emit(state == text ? '${text.replaceAll(RegExp(r"."), "*")}' : text);
}
