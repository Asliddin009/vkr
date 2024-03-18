// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code_data.freezed.dart';

part 'qr_code_data.g.dart';

@freezed
class QrCodeData with _$QrCodeData {
  const factory QrCodeData({
    @JsonKey(name: 'Url') required String url,
    @JsonKey(name: 'CountStudent') required int countStudent,
  }) = _QrCodeData;

  factory QrCodeData.fromJson(Map<String, dynamic> json) =>
      _$QrCodeDataFromJson(json);
}
