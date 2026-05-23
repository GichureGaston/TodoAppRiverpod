// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoController)
final todoControllerProvider = TodoControllerProvider._();

final class TodoControllerProvider
    extends $NotifierProvider<TodoController, TodoState> {
  TodoControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoControllerHash();

  @$internal
  @override
  TodoController create() => TodoController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoState>(value),
    );
  }
}

String _$todoControllerHash() => r'a7d1e163a3c0b76d72f95a4e4656299c99f6e59b';

abstract class _$TodoController extends $Notifier<TodoState> {
  TodoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TodoState, TodoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TodoState, TodoState>,
              TodoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
