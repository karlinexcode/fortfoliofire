part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool submitting,
    required bool kycExists,
    required String failure,
    required String success,
    required String documentType,
    required Uint8List frontFile,
    required Uint8List backFile,
    required Uint8List utilityFile,
  }) = _VerificationState;
  const VerificationState._();
  factory VerificationState.empty() => VerificationState(
    submitting: false,
    kycExists: false,
    failure: "",
    frontFile: Uint8List.fromList([]),
    backFile: Uint8List.fromList([]),
    utilityFile: Uint8List.fromList([]),
    success: "",
    documentType: ""
  );
  bool get isValidState => frontFile.isNotEmpty && backFile.isNotEmpty;
}
