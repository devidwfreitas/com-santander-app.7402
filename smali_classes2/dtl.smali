.class public interface abstract Ldtl;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a(Lcpt;JLandroid/app/PendingIntent;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "com.google.android.gms.permission.ACTIVITY_RECOGNITION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "J",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Landroid/app/PendingIntent;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "com.google.android.gms.permission.ACTIVITY_RECOGNITION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
