// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  List<WebsocketMessageEntity> get messages =>
      throw _privateConstructorUsedError;
  List<TemplateMessageDataEntity> get templateMessages =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDialogOpen => throw _privateConstructorUsedError;
  bool get isMessageFullscreen => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<WebsocketMessageEntity> messages,
      List<TemplateMessageDataEntity> templateMessages,
      bool isLoading,
      bool isDialogOpen,
      bool isMessageFullscreen,
      bool hasReachedEnd,
      int currentPage,
      String? error});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? templateMessages = null,
    Object? isLoading = null,
    Object? isDialogOpen = null,
    Object? isMessageFullscreen = null,
    Object? hasReachedEnd = null,
    Object? currentPage = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<WebsocketMessageEntity>,
      templateMessages: null == templateMessages
          ? _value.templateMessages
          : templateMessages // ignore: cast_nullable_to_non_nullable
              as List<TemplateMessageDataEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDialogOpen: null == isDialogOpen
          ? _value.isDialogOpen
          : isDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isMessageFullscreen: null == isMessageFullscreen
          ? _value.isMessageFullscreen
          : isMessageFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WebsocketMessageEntity> messages,
      List<TemplateMessageDataEntity> templateMessages,
      bool isLoading,
      bool isDialogOpen,
      bool isMessageFullscreen,
      bool hasReachedEnd,
      int currentPage,
      String? error});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? templateMessages = null,
    Object? isLoading = null,
    Object? isDialogOpen = null,
    Object? isMessageFullscreen = null,
    Object? hasReachedEnd = null,
    Object? currentPage = null,
    Object? error = freezed,
  }) {
    return _then(_$ChatStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<WebsocketMessageEntity>,
      templateMessages: null == templateMessages
          ? _value._templateMessages
          : templateMessages // ignore: cast_nullable_to_non_nullable
              as List<TemplateMessageDataEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDialogOpen: null == isDialogOpen
          ? _value.isDialogOpen
          : isDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isMessageFullscreen: null == isMessageFullscreen
          ? _value.isMessageFullscreen
          : isMessageFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {final List<WebsocketMessageEntity> messages = const [],
      final List<TemplateMessageDataEntity> templateMessages = const [],
      this.isLoading = false,
      this.isDialogOpen = false,
      this.isMessageFullscreen = false,
      this.hasReachedEnd = false,
      this.currentPage = 1,
      this.error})
      : _messages = messages,
        _templateMessages = templateMessages;

  final List<WebsocketMessageEntity> _messages;
  @override
  @JsonKey()
  List<WebsocketMessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<TemplateMessageDataEntity> _templateMessages;
  @override
  @JsonKey()
  List<TemplateMessageDataEntity> get templateMessages {
    if (_templateMessages is EqualUnmodifiableListView)
      return _templateMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templateMessages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDialogOpen;
  @override
  @JsonKey()
  final bool isMessageFullscreen;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChatState(messages: $messages, templateMessages: $templateMessages, isLoading: $isLoading, isDialogOpen: $isDialogOpen, isMessageFullscreen: $isMessageFullscreen, hasReachedEnd: $hasReachedEnd, currentPage: $currentPage, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._templateMessages, _templateMessages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDialogOpen, isDialogOpen) ||
                other.isDialogOpen == isDialogOpen) &&
            (identical(other.isMessageFullscreen, isMessageFullscreen) ||
                other.isMessageFullscreen == isMessageFullscreen) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_templateMessages),
      isLoading,
      isDialogOpen,
      isMessageFullscreen,
      hasReachedEnd,
      currentPage,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<WebsocketMessageEntity> messages,
      final List<TemplateMessageDataEntity> templateMessages,
      final bool isLoading,
      final bool isDialogOpen,
      final bool isMessageFullscreen,
      final bool hasReachedEnd,
      final int currentPage,
      final String? error}) = _$ChatStateImpl;

  @override
  List<WebsocketMessageEntity> get messages;
  @override
  List<TemplateMessageDataEntity> get templateMessages;
  @override
  bool get isLoading;
  @override
  bool get isDialogOpen;
  @override
  bool get isMessageFullscreen;
  @override
  bool get hasReachedEnd;
  @override
  int get currentPage;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
