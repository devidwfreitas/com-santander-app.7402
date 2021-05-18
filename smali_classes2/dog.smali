.class public final Ldog;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private final c:Ldoj;


# direct methods
.method public constructor <init>(Ldoj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ldoj;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldog;->b:Landroid/content/Context;

    iget-object v0, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldog;->c:Ldoj;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldog;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ldog;)Ldoj;
    .locals 1

    iget-object v0, p0, Ldog;->c:Ldoj;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.measurement.PackageMeasurementService"

    :goto_0
    invoke-static {p0, v0}, Ldou;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    goto :goto_0
.end method

.method static synthetic b(Ldog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ldog;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Ldkw;
    .locals 1

    iget-object v0, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "AppMeasurementService started with null intent"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ldlv;->d()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->V()Z

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v2

    new-instance v3, Ldoh;

    invoke-direct {v3, p0, v0, p3, v1}, Ldoh;-><init>(Ldog;Ldlv;ILdkw;)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "onBind called with null intent"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ldmb;

    iget-object v1, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v1}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v1

    invoke-direct {v0, v1}, Ldmb;-><init>(Ldlv;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "onBind received unknown action"

    invoke-virtual {v2, v3, v1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ldog;->b:Landroid/content/Context;

    invoke-static {v0}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "onRebind called with null intent"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ldog;->c()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "onRebind called. action"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
