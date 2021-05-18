.class public interface abstract Ldtn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.google.android.location.LOCATION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "mockLocation"


# virtual methods
.method public abstract a(Lcpt;)Landroid/location/Location;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Landroid/app/PendingIntent;)Lcpy;
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

.method public abstract a(Lcpt;Landroid/location/Location;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Landroid/location/Location;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtu;Landroid/os/Looper;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtu;",
            "Landroid/os/Looper;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtv;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;Landroid/os/Looper;)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtv;",
            "Landroid/os/Looper;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Ldtu;)Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ldtu;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Ldtv;)Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ldtv;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcpt;Z)Lcpy;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Z)",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcpt;)Lcom/google/android/gms/location/LocationAvailability;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation
.end method

.method public abstract c(Lcpt;)Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
