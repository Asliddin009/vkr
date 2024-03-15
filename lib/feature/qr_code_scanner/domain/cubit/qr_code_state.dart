part of 'qr_code_cubit.dart';

@freezed
class QrCodeState with _$QrCodeState {
  const factory QrCodeState.initial() = _Initial;
  const factory QrCodeState.loading() = _LoadingQrCodeState;
  const factory QrCodeState.done() = _DoneQrCodeState;
  const factory QrCodeState.error(String message) = _ErrorQrCodeState;
}
