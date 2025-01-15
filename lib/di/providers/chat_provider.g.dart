// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$centrifugeClientHash() => r'd8425c875d18b804c49f1f4ed9be94469db14756';

/// See also [centrifugeClient].
@ProviderFor(centrifugeClient)
final centrifugeClientProvider = AutoDisposeProvider<Client>.internal(
  centrifugeClient,
  name: r'centrifugeClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$centrifugeClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CentrifugeClientRef = AutoDisposeProviderRef<Client>;
String _$chatNotifierHash() => r'a9e425b39ed76ce24e2ca42ef0f66df1165346a9';

/// See also [ChatNotifier].
@ProviderFor(ChatNotifier)
final chatNotifierProvider =
    AutoDisposeNotifierProvider<ChatNotifier, ChatState>.internal(
  ChatNotifier.new,
  name: r'chatNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatNotifier = AutoDisposeNotifier<ChatState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
