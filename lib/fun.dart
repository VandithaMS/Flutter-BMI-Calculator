import 'dart:math';

class CalBmi{

  CalBmi(this.h,this.w);
  final double h;
  final double w;
  
  double _bmi=0;

  String cal(){
    _bmi= w/pow(h/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getr(){
    if (_bmi>=25){
      return 'Overweight';
    }else if (_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String geti(){
    if (_bmi>=25){
      return 'You have a higher than normal body weight.Do some exersices.';
    }else if (_bmi>18.5){
      return 'You have a normal body weight.';
    }
    else{
      return 'You have a lower than normal body weight.You can eat bit more.';
    }
  }
}