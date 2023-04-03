import 'package:flutter/animation.dart';
import 'package:quiz_app/data/Question.dart';
import 'package:hexcolor/hexcolor.dart';

final Color gradient1 = HexColor('#A88BEB');
final Color gradient2 = HexColor('#F8CEEC');

List<Question> getQustionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده باز جهان کیست ؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'عرفان ایزدی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'اولین ریاضیدان زن تاریخ چه کسی بود؟';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.correctAnswer = 2;
  thirdQuestion.answerList = [
    'ماریا گائتانا آنیزی',
    'شارلوت اسکات',
    'هیپاتیا',
    'دوروتی ماود رینچ'
  ];

  var fourthQuestion = Question();
  fourthQuestion.questionTitle =
      'بدن انسان تا چه عمقی از آب، همراه با وسائل غواصی،  می تواند فشار را تحمل کند؟';
  fourthQuestion.imageNameNumber = '4';
  fourthQuestion.correctAnswer = 3;
  fourthQuestion.answerList = ['متر 10', 'متر 15', 'متر 45', 'متر 60'];

  var fifthQuestion = Question();
  fifthQuestion.questionTitle = 'بزرگترین جزیره جهان چه نام دارد؟';
  fifthQuestion.imageNameNumber = '5';
  fifthQuestion.correctAnswer = 0;
  fifthQuestion.answerList = ['گرینلند', 'ماراژو', 'قشم', 'مالت'];

  var sixthQuestion = Question();
  sixthQuestion.questionTitle = 'پدر علم شیمی چه کسی است؟';
  sixthQuestion.imageNameNumber = '6';
  sixthQuestion.correctAnswer = 1;
  sixthQuestion.answerList = [
    'دمیتری مندلیف',
    'جابر بن حیان',
    'والتر وایت',
    'نیلز بور'
  ];

  var seventhQuestion = Question();
  seventhQuestion.questionTitle =
      'از بین گزینه های زیر، چه کسی بیشترین تعداد مدال طلای المپیک را دارد؟';
  seventhQuestion.imageNameNumber = '7';
  seventhQuestion.correctAnswer = 3;
  seventhQuestion.answerList = [
    'سواو کاتو',
    'جنی تامپسون',
    'اوسین بولت',
    'مایکل فلپس'
  ];

  var eighthQuestion = Question();
  eighthQuestion.questionTitle =
      'چه کسی برای اولین بار بر روی کره ماه قدم گذاشت؟';
  eighthQuestion.imageNameNumber = '8';
  eighthQuestion.correctAnswer = 2;
  eighthQuestion.answerList = [
    'مایکل کولینز',
    'باز آلدرین',
    'نیل آرمسترانگ',
    'مائوریتسیو ساری'
  ];

  var ninethQuestion = Question();
  ninethQuestion.questionTitle = 'اولین تلسکوپ جهان در چه سالی اختراع شد؟';
  ninethQuestion.imageNameNumber = '9';
  ninethQuestion.correctAnswer = 1;
  ninethQuestion.answerList = ['1885', '1609', '1530', '1776'];

  List<Question> test = [
    firstQuestion,
    secondQuestion,
    thirdQuestion,
    fourthQuestion,
    fifthQuestion,
    sixthQuestion,
    seventhQuestion,
    eighthQuestion,
    ninethQuestion,
  ];
  return test;
}
