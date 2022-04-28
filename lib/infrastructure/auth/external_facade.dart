import 'dart:developer';

import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IExternalFacade)
class ExternalFacade implements IExternalFacade {
  Coinbase coinbase = Coinbase("api-key");
  @override
  Future<Option<double>> getCoinPrice({ required String id}) async {
    try {
      var url = Uri.parse("https://api.coingecko.com/api/v3/coins" + id);
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var value = json['market_data']['current_price']['usd'].toString();
      return some(double.parse(value));
    } catch (e) {
      log(e.toString());
      return none();
    }
  }

  @override
  Future<Option<ChargeObject>> createCharge() async {
      try {
        ChargeObject charge = await coinbase.createCharge(
          description: "Investment",
          name: "Fort Crypto",
          pricingType: PricingType.noPrice);
        return some(charge);
      } catch (e) {
        log(e.toString());
        return none();
      }
    }
}
