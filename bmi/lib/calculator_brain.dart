import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 35) {
      return '3단계 비만';
    } else if (_bmi >= 30) {
      return '2단계 비만';
    }
      else if (_bmi >= 25) {
      return '1단계 비만';
    }
      else if (_bmi >= 23) {
      return '비만 전단계';
    }
      else if (_bmi >= 18.5) {
      return '정상';
    }
      else{
      return '저체중';
    }
  }

  String getInterpretation() {
    if (_bmi >= 35) {
      return '건강 위험 신호!\n체중 관리가 시급합니다.';
    } else if (_bmi >= 30) {
      return '운동과 식이요법을 통해\n건강을 되찾으세요.';
    }
      else if (_bmi >= 25) {
      return '이제 슬슬 건강관리를\n해야할 때 입니다.^^';
    }
      else if (_bmi >= 23) {
      return '체중이 조금 더 늘어나면,\n건강에 악영향을 끼칠 수 있습니다.';
    }
      else if (_bmi >= 18.5) {
      return '정상 체중을 가지고 계시군요!\n늘 유지하시길 바랍니다.';
    }
      else{
      return '건강을 위해 체중을 더\n늘릴 필요가 있습니다.ㅠㅠ';
    }
  }
}
