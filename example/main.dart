// View https://github.com/dayjs/day.dart for more usage.

import 'package:day/day.dart';

void main() {
  final now = Day();

  // Tomorrow
  final tomorrow = now.add(1, 'date');
  print(tomorrow);

  // Chainable
  now
    ..setYear(2020)
    ..setMonth(1)
    ..setDate(1)
    ..finished();

  // Get year
  print(now.year());




  // timezone test1
  String sourceTime1 = '2019-04-30 10:30:30+07:00';
  Day testTime1 = Day.fromString(sourceTime1);
  print('source time: $sourceTime1');
  print('locale time: ${testTime1.format('YYYY-MM-DD HH:mm:ss')}');
  print('    tz time: ${testTime1.tzFormat('YYYY-MM-DD HH:mm:ss')}');
  print('\n-----------------------------');

  // timezone test2
  String sourceTime2 = '2019-04-30 10:30:30+08:00';
  Day testTime2 = Day.fromString(sourceTime2);
  print('source time: $sourceTime2');
  print('locale time: ${testTime2.format('YYYY-MM-DD HH:mm:ss')}');
  print('    tz time: ${testTime2.tzFormat('YYYY-MM-DD HH:mm:ss')}');
  print('\n-----------------------------');

  // timezone test3
  String sourceTime3 = '2019-04-30 10:30:30+09:00';
  Day testTime3 = Day.fromString(sourceTime3);
  print('source time: $sourceTime3');
  print('locale time: ${testTime3.format('YYYY-MM-DD HH:mm:ss')}');
  print('    tz time: ${testTime3.tzFormat('YYYY-MM-DD HH:mm:ss')}');
  print('\n-----------------------------');

}
