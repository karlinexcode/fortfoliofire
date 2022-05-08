import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_functions_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final IFirestoreFacade firestoreFacade;
  final IExternalFacade externalFacade;
  final IFunctionsFacade functionsFacade;
  InvestmentCubit(this.firestoreFacade, this.externalFacade, this.functionsFacade) : super(InvestmentState.initial());

  void exchangeTypeChanged({required String exchangeType}) {
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void baseAmountChanged({required double baseAmount}) {
    emit(state.copyWith(baseAmount: baseAmount));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    var boolList = <bool>[false, false, false];
    List<bool> newList = List.from(boolList);
    duration = state.durations[newIndex];
    durationChanged(duration: duration);
    newList[newIndex] = true;
    emit(state.copyWith(isSelected: newList));
  }

  void planNameChanged({required String planName}) {
    switch (planName) {
      case "FortDollar":
        emit(state.copyWith(roi: 30));
        break;
      case "FortShield":
        emit(state.copyWith(roi: 18));
        break;
      case "FortCrypto":
        emit(state.copyWith(roi: 15));
        break;
      default:
    }
    emit(state.copyWith(planName: planName));
  }

  void durationChanged({required int duration}) {
    emit(state.copyWith(duration: duration));
  }
  void coinChanged({required String coin}) async {
    emit(state.copyWith(coin: coin));
  }

  void amountInvestedChanged({required int amountInvested}) {
    emit(state.copyWith(amountInvested: amountInvested));
  }

  void roiChanged({required int roi}) {
    emit(state.copyWith(roi: roi));
  }

  void paymentMethodChanged({required String paymentMethod}) {
    emit(state.copyWith(paymentMethod: paymentMethod));
  }

  void agreementAcceptedChanged({required bool agreementAccepted}) {
    emit(state.copyWith(agreementAccepted: agreementAccepted));
  }

  void createCharge () async {
    emit(state.copyWith(isLoading: true));
    final amount = state.amountInvested;
    final chargeOption = await functionsFacade.createCharge(amount: amount.toString());
    chargeOption.fold((failure) {
      emit(state.copyWith(isLoading: false));
      emit(state.copyWith(failure: failure));
    }, (charge) {
      emit(state.copyWith(isLoading: false));
      print(charge);
      emit(state.copyWith(charge: ChargeObject.fromJson(charge)));
    });
  }

  void iHavePaid() async {
    emit(state.copyWith(isLoading: true));
    late InvestmentItem investmentItem;
    final String description = "${state.planName} Investment";
    final int amount = state.amountInvested;
    final DateTime paymentDate = DateTime.now();
    final String planName = state.planName;
    final int roi = state.roi;
    final int duration = state.duration;
    const String status = "Pending";
    final String traxId = const Uuid().v4().substring(0, 7);
    final String uid = nanoid(8);
    final dueDate = Jiffy(paymentDate).add(months: duration.toInt()).dateTime;
    final int numberOfDays = dueDate.difference(paymentDate).inDays;
    final String currency = state.exchangeType == "USD" ? "\$" : "N";
    final String paymentMethod = state.paymentMethod;
    final String coin = state.coin;
    final String bankAccountType = state.bankAccountType;
    if (state.planName == "FortCrypto") {
      investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          amount: amount.toDouble(),
          traxId: traxId,
          roi: roi,
          planName: planName,
          paymentDate: paymentDate,
          dueDate: dueDate,
          duration: duration,
          status: status,
          planYield: 0,
          paymentMethod: paymentMethod,
          coin: coin,
          numberOfDays: numberOfDays);
    } else {
      investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          amount: amount.toDouble(),
          traxId: traxId,
          roi: roi,
          planName: planName,
          bankAccountType: bankAccountType,
          paymentDate: paymentDate,
          dueDate: dueDate,
          duration: duration,
          status: status,
          planYield: 0,
          paymentMethod: paymentMethod,
          numberOfDays: numberOfDays);
    }
    final response = await firestoreFacade.createInvestmentTransaction(
        investmentItem: investmentItem);
    try {
      response.fold((failure) {
        emit(state.copyWith(isLoading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(isLoading: false, success: success));
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      log(e.toString());
    }
  }

  void reset() {
    emit(state.copyWith(
        amountInvested: 0, planName: "", agreementAccepted: false));
  }
}
