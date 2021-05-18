.class public Ldoq;
.super Ldmu;


# instance fields
.field private a:Z

.field private final b:Landroid/app/AlarmManager;

.field private final c:Ldkf;


# direct methods
.method protected constructor <init>(Ldlv;)V
    .locals 2

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Ldoq;->b:Landroid/app/AlarmManager;

    new-instance v0, Ldor;

    invoke-direct {v0, p0, p1}, Ldor;-><init>(Ldoq;Ldlv;)V

    iput-object v0, p0, Ldoq;->c:Ldkf;

    return-void
.end method

.method static synthetic a(Ldoq;)V
    .locals 0

    invoke-direct {p0}, Ldoq;->z()V

    return-void
.end method

.method private y()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->V()Z

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->V()Z

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Ldoq;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Ldoq;->y()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(J)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldoq;->R()V

    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ldlm;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldoq;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Receiver not registered/enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldoq;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ldog;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldoq;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ldoq;->x()V

    invoke-virtual {p0}, Ldoq;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    add-long v2, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldoq;->a:Z

    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->ap()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Ldoq;->c:Ldkf;

    invoke-virtual {v0}, Ldkf;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldoq;->c:Ldkf;

    invoke-virtual {v0, p1, p2}, Ldkf;->a(J)V

    :cond_2
    iget-object v0, p0, Ldoq;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-virtual {p0}, Ldoq;->w()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->aq()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0}, Ldoq;->y()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmu;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Ldmu;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Ldmu;->e()V

    return-void
.end method

.method public bridge synthetic f()Ldjs;
    .locals 1

    invoke-super {p0}, Ldmu;->f()Ldjs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ldjy;
    .locals 1

    invoke-super {p0}, Ldmu;->g()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ldmw;
    .locals 1

    invoke-super {p0}, Ldmu;->h()Ldmw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Ldks;
    .locals 1

    invoke-super {p0}, Ldmu;->i()Ldks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ldkh;
    .locals 1

    invoke-super {p0}, Ldmu;->j()Ldkh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ldno;
    .locals 1

    invoke-super {p0}, Ldmu;->k()Ldno;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ldnk;
    .locals 1

    invoke-super {p0}, Ldmu;->l()Ldnk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcvo;
    .locals 1

    invoke-super {p0}, Ldmu;->m()Lcvo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Ldmu;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ldkt;
    .locals 1

    invoke-super {p0}, Ldmu;->o()Ldkt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ldkb;
    .locals 1

    invoke-super {p0}, Ldmu;->p()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ldou;
    .locals 1

    invoke-super {p0}, Ldmu;->q()Ldou;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ldlp;
    .locals 1

    invoke-super {p0}, Ldmu;->r()Ldlp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ldok;
    .locals 1

    invoke-super {p0}, Ldmu;->s()Ldok;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ldlq;
    .locals 1

    invoke-super {p0}, Ldmu;->t()Ldlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ldkw;
    .locals 1

    invoke-super {p0}, Ldmu;->u()Ldkw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ldlh;
    .locals 1

    invoke-super {p0}, Ldmu;->v()Ldlh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ldka;
    .locals 1

    invoke-super {p0}, Ldmu;->w()Ldka;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 2

    invoke-virtual {p0}, Ldoq;->R()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldoq;->a:Z

    iget-object v0, p0, Ldoq;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Ldoq;->y()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Ldoq;->c:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    return-void
.end method
