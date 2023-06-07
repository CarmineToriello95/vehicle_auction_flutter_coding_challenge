// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuctionPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionPageStateCopyWith<$Res> {
  factory $AuctionPageStateCopyWith(
          AuctionPageState value, $Res Function(AuctionPageState) then) =
      _$AuctionPageStateCopyWithImpl<$Res, AuctionPageState>;
}

/// @nodoc
class _$AuctionPageStateCopyWithImpl<$Res, $Val extends AuctionPageState>
    implements $AuctionPageStateCopyWith<$Res> {
  _$AuctionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuctionPageStateCopyWith<$Res> {
  factory _$$_AuctionPageStateCopyWith(
          _$_AuctionPageState value, $Res Function(_$_AuctionPageState) then) =
      __$$_AuctionPageStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String vin,
      Auction? auction,
      List<Vehicle>? vehicles,
      Failure? failure});
}

/// @nodoc
class __$$_AuctionPageStateCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$_AuctionPageState>
    implements _$$_AuctionPageStateCopyWith<$Res> {
  __$$_AuctionPageStateCopyWithImpl(
      _$_AuctionPageState _value, $Res Function(_$_AuctionPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vin = null,
    Object? auction = freezed,
    Object? vehicles = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_AuctionPageState(
      vin: null == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String,
      auction: freezed == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as Auction?,
      vehicles: freezed == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_AuctionPageState
    with DiagnosticableTreeMixin
    implements _AuctionPageState {
  const _$_AuctionPageState(
      {this.vin = '',
      this.auction,
      final List<Vehicle>? vehicles,
      this.failure})
      : _vehicles = vehicles;

  @override
  @JsonKey()
  final String vin;
  @override
  final Auction? auction;
  final List<Vehicle>? _vehicles;
  @override
  List<Vehicle>? get vehicles {
    final value = _vehicles;
    if (value == null) return null;
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState(vin: $vin, auction: $auction, vehicles: $vehicles, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuctionPageState'))
      ..add(DiagnosticsProperty('vin', vin))
      ..add(DiagnosticsProperty('auction', auction))
      ..add(DiagnosticsProperty('vehicles', vehicles))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuctionPageState &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.auction, auction) || other.auction == auction) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vin, auction,
      const DeepCollectionEquality().hash(_vehicles), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuctionPageStateCopyWith<_$_AuctionPageState> get copyWith =>
      __$$_AuctionPageStateCopyWithImpl<_$_AuctionPageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return $default(vin, auction, vehicles, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return $default?.call(vin, auction, vehicles, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(vin, auction, vehicles, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuctionPageState implements AuctionPageState {
  const factory _AuctionPageState(
      {final String vin,
      final Auction? auction,
      final List<Vehicle>? vehicles,
      final Failure? failure}) = _$_AuctionPageState;

  String get vin;
  Auction? get auction;
  List<Vehicle>? get vehicles;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$_AuctionPageStateCopyWith<_$_AuctionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState.isLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuctionPageState.isLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuctionPageState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$PopulatedWithAuctionCopyWith<$Res> {
  factory _$$PopulatedWithAuctionCopyWith(_$PopulatedWithAuction value,
          $Res Function(_$PopulatedWithAuction) then) =
      __$$PopulatedWithAuctionCopyWithImpl<$Res>;
  @useResult
  $Res call({Auction auction});
}

/// @nodoc
class __$$PopulatedWithAuctionCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$PopulatedWithAuction>
    implements _$$PopulatedWithAuctionCopyWith<$Res> {
  __$$PopulatedWithAuctionCopyWithImpl(_$PopulatedWithAuction _value,
      $Res Function(_$PopulatedWithAuction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auction = null,
  }) {
    return _then(_$PopulatedWithAuction(
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as Auction,
    ));
  }
}

/// @nodoc

class _$PopulatedWithAuction
    with DiagnosticableTreeMixin
    implements PopulatedWithAuction {
  _$PopulatedWithAuction({required this.auction});

  @override
  final Auction auction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState.populatedWithAuction(auction: $auction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuctionPageState.populatedWithAuction'))
      ..add(DiagnosticsProperty('auction', auction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopulatedWithAuction &&
            (identical(other.auction, auction) || other.auction == auction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopulatedWithAuctionCopyWith<_$PopulatedWithAuction> get copyWith =>
      __$$PopulatedWithAuctionCopyWithImpl<_$PopulatedWithAuction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return populatedWithAuction(auction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return populatedWithAuction?.call(auction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (populatedWithAuction != null) {
      return populatedWithAuction(auction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return populatedWithAuction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return populatedWithAuction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (populatedWithAuction != null) {
      return populatedWithAuction(this);
    }
    return orElse();
  }
}

abstract class PopulatedWithAuction implements AuctionPageState {
  factory PopulatedWithAuction({required final Auction auction}) =
      _$PopulatedWithAuction;

  Auction get auction;
  @JsonKey(ignore: true)
  _$$PopulatedWithAuctionCopyWith<_$PopulatedWithAuction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopulatedWithVehiclesCopyWith<$Res> {
  factory _$$PopulatedWithVehiclesCopyWith(_$PopulatedWithVehicles value,
          $Res Function(_$PopulatedWithVehicles) then) =
      __$$PopulatedWithVehiclesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Vehicle> vehicles});
}

/// @nodoc
class __$$PopulatedWithVehiclesCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$PopulatedWithVehicles>
    implements _$$PopulatedWithVehiclesCopyWith<$Res> {
  __$$PopulatedWithVehiclesCopyWithImpl(_$PopulatedWithVehicles _value,
      $Res Function(_$PopulatedWithVehicles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$PopulatedWithVehicles(
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc

class _$PopulatedWithVehicles
    with DiagnosticableTreeMixin
    implements PopulatedWithVehicles {
  _$PopulatedWithVehicles({required final List<Vehicle> vehicles})
      : _vehicles = vehicles;

  final List<Vehicle> _vehicles;
  @override
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState.populatedWithVehicles(vehicles: $vehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuctionPageState.populatedWithVehicles'))
      ..add(DiagnosticsProperty('vehicles', vehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopulatedWithVehicles &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopulatedWithVehiclesCopyWith<_$PopulatedWithVehicles> get copyWith =>
      __$$PopulatedWithVehiclesCopyWithImpl<_$PopulatedWithVehicles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return populatedWithVehicles(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return populatedWithVehicles?.call(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (populatedWithVehicles != null) {
      return populatedWithVehicles(vehicles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return populatedWithVehicles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return populatedWithVehicles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (populatedWithVehicles != null) {
      return populatedWithVehicles(this);
    }
    return orElse();
  }
}

abstract class PopulatedWithVehicles implements AuctionPageState {
  factory PopulatedWithVehicles({required final List<Vehicle> vehicles}) =
      _$PopulatedWithVehicles;

  List<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$PopulatedWithVehiclesCopyWith<_$PopulatedWithVehicles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateCopyWith<$Res> {
  factory _$$FailureStateCopyWith(
          _$FailureState value, $Res Function(_$FailureState) then) =
      __$$FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FailureStateCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$FailureState>
    implements _$$FailureStateCopyWith<$Res> {
  __$$FailureStateCopyWithImpl(
      _$FailureState _value, $Res Function(_$FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FailureState with DiagnosticableTreeMixin implements FailureState {
  _$FailureState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuctionPageState.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      __$$FailureStateCopyWithImpl<_$FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureState implements AuctionPageState {
  factory FailureState({required final Failure failure}) = _$FailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastAuctionAvailableCopyWith<$Res> {
  factory _$$LastAuctionAvailableCopyWith(_$LastAuctionAvailable value,
          $Res Function(_$LastAuctionAvailable) then) =
      __$$LastAuctionAvailableCopyWithImpl<$Res>;
  @useResult
  $Res call({Auction auction, Failure failure});
}

/// @nodoc
class __$$LastAuctionAvailableCopyWithImpl<$Res>
    extends _$AuctionPageStateCopyWithImpl<$Res, _$LastAuctionAvailable>
    implements _$$LastAuctionAvailableCopyWith<$Res> {
  __$$LastAuctionAvailableCopyWithImpl(_$LastAuctionAvailable _value,
      $Res Function(_$LastAuctionAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auction = null,
    Object? failure = null,
  }) {
    return _then(_$LastAuctionAvailable(
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as Auction,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LastAuctionAvailable
    with DiagnosticableTreeMixin
    implements LastAuctionAvailable {
  _$LastAuctionAvailable({required this.auction, required this.failure});

  @override
  final Auction auction;
  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuctionPageState.lastAuctionAvailable(auction: $auction, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuctionPageState.lastAuctionAvailable'))
      ..add(DiagnosticsProperty('auction', auction))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastAuctionAvailable &&
            (identical(other.auction, auction) || other.auction == auction) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auction, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastAuctionAvailableCopyWith<_$LastAuctionAvailable> get copyWith =>
      __$$LastAuctionAvailableCopyWithImpl<_$LastAuctionAvailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)
        $default, {
    required TResult Function() isLoading,
    required TResult Function(Auction auction) populatedWithAuction,
    required TResult Function(List<Vehicle> vehicles) populatedWithVehicles,
    required TResult Function(Failure failure) failure,
    required TResult Function(Auction auction, Failure failure)
        lastAuctionAvailable,
  }) {
    return lastAuctionAvailable(auction, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult? Function()? isLoading,
    TResult? Function(Auction auction)? populatedWithAuction,
    TResult? Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult? Function(Failure failure)? failure,
    TResult? Function(Auction auction, Failure failure)? lastAuctionAvailable,
  }) {
    return lastAuctionAvailable?.call(auction, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String vin, Auction? auction, List<Vehicle>? vehicles,
            Failure? failure)?
        $default, {
    TResult Function()? isLoading,
    TResult Function(Auction auction)? populatedWithAuction,
    TResult Function(List<Vehicle> vehicles)? populatedWithVehicles,
    TResult Function(Failure failure)? failure,
    TResult Function(Auction auction, Failure failure)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (lastAuctionAvailable != null) {
      return lastAuctionAvailable(auction, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuctionPageState value) $default, {
    required TResult Function(Loading value) isLoading,
    required TResult Function(PopulatedWithAuction value) populatedWithAuction,
    required TResult Function(PopulatedWithVehicles value)
        populatedWithVehicles,
    required TResult Function(FailureState value) failure,
    required TResult Function(LastAuctionAvailable value) lastAuctionAvailable,
  }) {
    return lastAuctionAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuctionPageState value)? $default, {
    TResult? Function(Loading value)? isLoading,
    TResult? Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult? Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult? Function(FailureState value)? failure,
    TResult? Function(LastAuctionAvailable value)? lastAuctionAvailable,
  }) {
    return lastAuctionAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuctionPageState value)? $default, {
    TResult Function(Loading value)? isLoading,
    TResult Function(PopulatedWithAuction value)? populatedWithAuction,
    TResult Function(PopulatedWithVehicles value)? populatedWithVehicles,
    TResult Function(FailureState value)? failure,
    TResult Function(LastAuctionAvailable value)? lastAuctionAvailable,
    required TResult orElse(),
  }) {
    if (lastAuctionAvailable != null) {
      return lastAuctionAvailable(this);
    }
    return orElse();
  }
}

abstract class LastAuctionAvailable implements AuctionPageState {
  factory LastAuctionAvailable(
      {required final Auction auction,
      required final Failure failure}) = _$LastAuctionAvailable;

  Auction get auction;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$LastAuctionAvailableCopyWith<_$LastAuctionAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}
