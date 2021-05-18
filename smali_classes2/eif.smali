.class public final Leif;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ldlv;


# direct methods
.method public constructor <init>(Ldlv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Leif;->a:Ldlv;

    return-void
.end method

.method public static a(Landroid/content/Context;)Leif;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    invoke-static {p0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->n()Leif;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Legv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0}, Ldmw;->y()Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(J)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->u()Ldnk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldnk;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x28L
            min = 0x1L
        .end annotation
    .end param

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
        .end annotation
    .end param

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Z)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Leif;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->b(J)V

    return-void
.end method
