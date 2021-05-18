.class public interface abstract Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;",
            "Ljava/lang/Error;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateStatusDeleteResult(ILjava/lang/Error;)V
.end method

.method public abstract updateStatusReadResult(ILjava/lang/Error;)V
.end method
