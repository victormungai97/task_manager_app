import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/navigation/navigation.dart';

part 'pages_bloc.freezed.dart';
part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PageEvent, PageState> {
  PagesBloc() : super(const PageState.view(Routes.root)) {
    on<PageEvent>((event, emit) {
      event.whenOrNull(navigated: _pageNavigated);
    });
  }

  Future<void> _pageNavigated(String? route) async {
    final page = route ?? 'anonymous';

    emit(PageState.view(page));
  }
}
