class HeroesState {
  String? message;
  bool? isFailure;
  bool? isSuccess;
  bool? isLoading;
  bool? isInitial;

  HeroesState({
    this.message = '',
    this.isFailure = false,
    this.isSuccess = false,
    this.isLoading = false,
    this.isInitial = false,
  });

  factory HeroesState.initial() {
    return HeroesState(isInitial: true);
  }

  factory HeroesState.loading() {
    return HeroesState(isLoading: true);
  }

  factory HeroesState.failure({required String message}) {
    return HeroesState(message: message, isFailure: true, isLoading: false);
  }

  factory HeroesState.success({required String message}) {
    return HeroesState(message: message, isSuccess: true);
  }
}
