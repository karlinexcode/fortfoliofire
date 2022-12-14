part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const NotificationState._();
  const factory NotificationState({
    required List<NotificationItem> notifications,
    required List<NotificationItem> selectedNotifications,
    required int notificationCount,
    required bool loading,
    required String type,
    required String title,
    required DateTime createdat,
    required String id,
    required String status,
  }) = _NotificationState;

  factory NotificationState.empty() => NotificationState(
        notifications: [ ],
        notificationCount: 0,
        loading: false,
        createdat: DateTime.now(),
        id: "",
        status: "pending",
        title: "",
        type: "",
        selectedNotifications: List<NotificationItem>.empty(growable: true)
      );

  bool get notificationExists => notificationCount > 0;
}
