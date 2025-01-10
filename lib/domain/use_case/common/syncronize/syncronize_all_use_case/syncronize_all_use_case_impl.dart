import 'package:hyper_supabase/core.dart';

class SyncronizeAllUseCaseImpl implements SyncronizeAllUseCase {
  final SyncronizeApplicationConfigUseCase syncronizeApplicationConfigUseCase;
  final SyncronizeAppBluetoothUseCase syncronizeAppBluetoothUseCase;
  final SyncronizeAppPrinterUseCase syncronizeAppPrinterUseCase;
  final SyncronizeAppQueueUseCase syncronizeAppQueueUseCase;
  final SyncronizeAppSessionUseCase syncronizeAppSessionUseCase;
  final SyncronizeLoanTransactionUseCase syncronizeLoanTransactionUseCase;
  final SyncronizeLoanTransactionItemUseCase
      syncronizeLoanTransactionItemUseCase;
  final SyncronizeToolUseCase syncronizeToolUseCase;
  final SyncronizeUserProfileUseCase syncronizeUserProfileUseCase;

  SyncronizeAllUseCaseImpl({
    required this.syncronizeApplicationConfigUseCase,
    required this.syncronizeAppBluetoothUseCase,
    required this.syncronizeAppPrinterUseCase,
    required this.syncronizeAppQueueUseCase,
    required this.syncronizeAppSessionUseCase,
    required this.syncronizeLoanTransactionUseCase,
    required this.syncronizeLoanTransactionItemUseCase,
    required this.syncronizeToolUseCase,
    required this.syncronizeUserProfileUseCase,
  });

  Future<void> call() async {
    await syncronizeApplicationConfigUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeAppBluetoothUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeAppPrinterUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeAppQueueUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeAppSessionUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeLoanTransactionUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeLoanTransactionItemUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeToolUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
    await syncronizeUserProfileUseCase.call();
    await Future.delayed(const Duration(milliseconds: 250));
  }
}
