import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdrawal_item.freezed.dart';

@freezed
abstract class WithdrawalItem implements _$WithdrawalItem {
  const WithdrawalItem._();
  const factory WithdrawalItem({
    required String description,
    required int amount,
    required String traxId,
    required String uid,
    required String planName,
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    // add duration
    // add roi
  }) = _WithdrawalItem;

  factory WithdrawalItem.empty() => WithdrawalItem(
        amount: 0,
        createdat: DateTime.now(),
        description: '',
        paymentMethod: '',
        planName: '',
        status: "Pending",
        traxId: '',
        uid: '',
      );
}
