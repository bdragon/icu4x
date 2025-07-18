// generated by diplomat-tool
// dart format off

part of 'lib.g.dart';

/// Documents which days of the week are considered to be a part of the weekend
///
/// See the [Rust documentation for `WeekdaySetIterator`](https://docs.rs/icu/2.0.0/icu/calendar/week/struct.WeekdaySetIterator.html) for more information.
final class WeekdaySetIterator implements ffi.Finalizable, core.Iterator<Weekday> {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  WeekdaySetIterator._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  @_DiplomatFfiUse('icu4x_WeekdaySetIterator_destroy_mv1')
  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_WeekdaySetIterator_destroy_mv1));

  Weekday? _current;

  @override
  Weekday get current => _current!;

  @override
  bool moveNext() {
    _current = _iteratorNext();
    return _current != null;
  }

  /// See the [Rust documentation for `next`](https://docs.rs/icu/2.0.0/icu/calendar/week/struct.WeekdaySetIterator.html#method.next) for more information.
  Weekday? _iteratorNext() {
    final result = _icu4x_WeekdaySetIterator_next_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return Weekday.values.firstWhere((v) => v._ffi == result.union.ok);
  }

}

@_DiplomatFfiUse('icu4x_WeekdaySetIterator_destroy_mv1')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_WeekdaySetIterator_destroy_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_WeekdaySetIterator_destroy_mv1(ffi.Pointer<ffi.Void> self);

@_DiplomatFfiUse('icu4x_WeekdaySetIterator_next_mv1')
@ffi.Native<_ResultInt32Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_WeekdaySetIterator_next_mv1')
// ignore: non_constant_identifier_names
external _ResultInt32Void _icu4x_WeekdaySetIterator_next_mv1(ffi.Pointer<ffi.Opaque> self);

// dart format on
