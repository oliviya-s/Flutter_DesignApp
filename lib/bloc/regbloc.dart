import 'dart:async';


import 'package:designapp/data/models/LoginModel.dart';
import 'package:designapp/data/repository.dart';
import 'package:designapp/helper/sharedpreferences.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/RegModel.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc() : super(RegState()) {

    on<CheckOTPs>(_checkOtp);
  }



  Future<FutureOr<void>> _checkOtp(
      CheckOTPs event, Emitter<RegState> emit) async {
    emit(CheckingOtps());
    RegModel regModel;
    Map data   = {
      "firstname": event.first,
      "lastname": event.last,
      "phone": event.phone,
      "houseName":event.house,
      "place":event.place,
      "pincode":event.pin,
      "password": event.password,

    };


    regModel =
    await Repository().registration(url: '/user/registration', data: data);
    if (regModel.status == true) {
      print("truw");
      //await TempStorage.addToken(regModel.token.toString());
      emit(OtpCheckeds());
    } else {
      emit(OtpErrors(errors: regModel.msg.toString()));
      print("false");
    }
  }
}
//events
class RegEvent extends Equatable {
  @override
  List<Object?> get props => [];
}



class CheckOTPs extends RegEvent {
  final String first,last,phone,house,place,pin,password;
  CheckOTPs({required this.first,required this.last, required this.phone,required this.house,required this.place,required this.pin,required this.password});
}
class ShowProfile extends RegEvent{}


//states

class RegState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingOtps extends RegState {}
class OtpCheckeds extends RegState {}

class OtpErrors extends RegState {
  final String errors;
  OtpErrors({required this.errors});
}