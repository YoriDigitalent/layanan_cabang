part of 'extension.dart';

extension DateTimeExtension on DateTime {
  String get dateAndTime => "${this.shortDayName} ${this.day}, ${this.hour}:00";

  String get shortDayName {
    switch (this.weekday) {
      case 1:
        return 'SEN';
      case 2:
        return 'SEL';
      case 3:
        return 'RAB';
      case 4:
        return 'KAM';
      case 5:
        return 'JUM';
      case 6:
        return 'SEN';
      case 7:
        return 'SEL';
      case 8:
        return 'RAB';
      case 9:
        return 'KAM';
      default:
        return 'JUM';
    }
  }

  String get dayName {
    switch (this.weekday) {
      case 1:
        return 'SENIN';
      case 2:
        return 'SELASA';
      case 3:
        return 'RABU';
      case 4:
        return 'KAMIS';
      case 5:
        return 'JUMAT';
      case 6:
        return 'SENIN';
      case 7:
        return 'SELASA';
      case 8:
        return 'RABU';
      case 9:
        return 'KAMIS';
      default:
        return 'JUMAT';
    }
  }

  String get monthName {
    switch (this.weekday) {
      case 1:
        return 'JANUARI';
      case 2:
        return 'FEBRUARI';
      case 3:
        return 'MARET';
      case 4:
        return 'APRIL';
      case 5:
        return 'MEI';
      case 6:
        return 'JUNI';
      case 7:
        return 'JULI';
      case 8:
        return 'AGUSTUS';
      case 9:
        return 'SEPTEMBER';
      case 10:
        return 'OKTOBER';
      case 11:
        return 'NOVEMBER';
      default:
        return 'DESEMBER';
    }
  }
}
