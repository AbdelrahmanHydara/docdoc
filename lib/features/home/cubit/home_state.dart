import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(List<SpecializationDataModel?>? SpecializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) = SpecializationsError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<DoctorsModel?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) = DoctorsError;
}

