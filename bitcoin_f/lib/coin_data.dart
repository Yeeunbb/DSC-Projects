import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = ['KRW'];
DateTime now = DateTime.now();

String date = formatDate(now, [yyyy,mm,dd]);
const nowdate = 'date';
const authkey = 'c0Z0bRFIRiV8SZqciN5H4OptJRw2NXVZ';
const exchangeRateURL =
    'https://www.koreaexim.go.kr/site/program/financial/exchangeJSON';

class ExchangeData {
  Future getExchangeData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL = '$exchangeRateURL?authkey=$authkey&searchdate=$nowdate&data=AP01';
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 1) {
        var decodedData = jsonDecode(response.body);
        String pais = decodedData['cur_unit'];
        double lastPrice = decodedData['tts'];
        if(pais == selectedCurrency)
          cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
