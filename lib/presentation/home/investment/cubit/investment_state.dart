part of 'investment_cubit.dart';

@freezed
class InvestmentState with _$InvestmentState {
  const factory InvestmentState(
      {required String planName,
      required double duration,
      required int amountInvested,
      required int roi,
      required String failure,
      required String success,
      required bool agreementAccepted,
      required bool isLoading,
      required String exchangeType,
      required List<bool> isSelected,
      required List<int> durations,
      required String paymentMethod
      }) = _InvestmentState;
  const InvestmentState._();

  factory InvestmentState.initial() => InvestmentState(
        amountInvested: 0,
        planName: '',
        roi: 0,
        failure: "",
        success: "",
        agreementAccepted: false,
        isLoading: false,
        exchangeType: "NGN",
        isSelected: List.from(boolList),
        durations: [3, 6, 9], 
        duration: 6,
        paymentMethod: 'Bank'
      );
    bool get isValid => planName.isNotEmpty && !duration.isNaN && !amountInvested.isNaN && agreementAccepted;
}

var boolList = <bool>[false,true,false];