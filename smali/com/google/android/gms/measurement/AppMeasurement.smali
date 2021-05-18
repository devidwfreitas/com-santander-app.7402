.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ldlv;


# direct methods
.method public constructor <init>(Ldlv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldmw;->a(J)V

    return-void
.end method

.method public a(Legg;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->a(Legg;)V

    return-void
.end method

.method public a(Legh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->a(Legh;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "app"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x28L
            min = 0x1L
        .end annotation
    .end param

    const/4 v3, 0x1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    const-string v0, "_iap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldou;->b(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v2}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->y()I

    move-result v2

    invoke-virtual {v0, p1, v2, v3}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v3}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1, p1, p2, v3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldou;->d(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v2}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->z()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v3}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "app"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    if-nez p3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->a(Z)V

    return-void
.end method

.method public b(Z)Ljava/util/Map;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->b(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldmw;->b(J)V

    return-void
.end method

.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->B()Ldjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjs;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
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
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->B()Ldjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjs;->b(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    invoke-virtual {v0}, Ldou;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldmw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->u()Ldnk;

    move-result-object v0

    invoke-virtual {v0}, Ldnk;->y()Legk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Legk;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lddc;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnScreenChangeCallback(Legi;)V
    .locals 1
    .param p1    # Legi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->u()Ldnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldnk;->a(Legi;)V

    return-void
.end method

.method protected setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->a(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method protected setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldmw;->b(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public unregisterOnScreenChangeCallback(Legi;)V
    .locals 1
    .param p1    # Legi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->u()Ldnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldnk;->b(Legi;)V

    return-void
.end method
