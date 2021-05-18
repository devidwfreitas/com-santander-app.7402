.class public final Ldlm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ldlo;


# direct methods
.method public constructor <init>(Ldlo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldlm;->a:Ldlo;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 2

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.measurement.PackageMeasurementReceiver"

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ldou;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementReceiver"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-wide/16 v10, 0x0

    invoke-static {p1}, Ldlv;->a(Landroid/content/Context;)Ldlv;

    move-result-object v3

    invoke-virtual {v3}, Ldlv;->f()Ldkw;

    move-result-object v8

    if-nez p2, :cond_1

    invoke-virtual {v8}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Receiver called with null intent"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "Local receiver got"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldog;->a(Landroid/content/Context;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ldlm;->a:Ldlo;

    invoke-interface {v1, p1, v0}, Ldlo;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Install referrer extras are null"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3}, Ldlv;->o()Ldou;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldou;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v8}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "No campaign defined in install referrer broadcast"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "referrer_timestamp_seconds"

    invoke-virtual {p2, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    cmp-long v0, v4, v10

    if-nez v0, :cond_5

    invoke-virtual {v8}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Install referrer is missing timestamp"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldln;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Ldln;-><init>(Ldlm;Ldlv;JLandroid/os/Bundle;Landroid/content/Context;Ldkw;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
