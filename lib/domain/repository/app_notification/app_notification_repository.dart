//@only_repository
abstract class AppNotificationRepository {
  // Inisialisasi Firebase Messaging dan pengaturan notifikasi lokal
  Future<void> initialize();
}
