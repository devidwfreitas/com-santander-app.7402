.class public Ldok;
.super Ldmu;


# instance fields
.field protected a:J

.field private b:Landroid/os/Handler;

.field private final c:Ldkf;

.field private final d:Ldkf;


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 2

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Ldol;

    iget-object v1, p0, Ldok;->n:Ldlv;

    invoke-direct {v0, p0, v1}, Ldol;-><init>(Ldok;Ldlv;)V

    iput-object v0, p0, Ldok;->c:Ldkf;

    new-instance v0, Ldom;

    iget-object v1, p0, Ldok;->n:Ldlv;

    invoke-direct {v0, p0, v1}, Ldom;-><init>(Ldok;Ldlv;)V

    iput-object v0, p0, Ldok;->d:Ldkf;

    return-void
.end method

.method private A()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldok;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldok;->b:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private B()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldok;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldok;->a(Z)Z

    invoke-virtual {p0}, Ldok;->f()Ldjs;

    move-result-object v0

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldjs;->a(J)V

    return-void
.end method

.method private a(J)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Ldok;->e()V

    invoke-direct {p0}, Ldok;->A()V

    iget-object v0, p0, Ldok;->c:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    iget-object v0, p0, Ldok;->d:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    invoke-virtual {p0}, Ldok;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Ldok;->a:J

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v2

    iget-object v2, v2, Ldlh;->i:Ldlk;

    invoke-virtual {v2}, Ldlk;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v2

    iget-object v2, v2, Ldlh;->k:Ldlk;

    invoke-virtual {v2}, Ldlk;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->j:Ldlj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldlj;->a(Z)V

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->l:Ldlk;

    invoke-virtual {v0, v6, v7}, Ldlk;->a(J)V

    :cond_0
    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->j:Ldlj;

    invoke-virtual {v0}, Ldlj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldok;->c:Ldkf;

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->h:Ldlk;

    invoke-virtual {v1}, Ldlk;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->l:Ldlk;

    invoke-virtual {v1}, Ldlk;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldkf;->a(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldok;->d:Ldkf;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->l:Ldlk;

    invoke-virtual {v1}, Ldlk;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldkf;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Ldok;)V
    .locals 0

    invoke-direct {p0}, Ldok;->B()V

    return-void
.end method

.method static synthetic a(Ldok;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ldok;->a(J)V

    return-void
.end method

.method private b(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldok;->e()V

    invoke-direct {p0}, Ldok;->A()V

    iget-object v0, p0, Ldok;->c:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    iget-object v0, p0, Ldok;->d:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    invoke-virtual {p0}, Ldok;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Ldok;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->l:Ldlk;

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->l:Ldlk;

    invoke-virtual {v1}, Ldlk;->a()J

    move-result-wide v2

    iget-wide v4, p0, Ldok;->a:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    :cond_0
    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->k:Ldlk;

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    return-void
.end method

.method static synthetic b(Ldok;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ldok;->b(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Z)Z
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Ldok;->e()V

    invoke-virtual {p0}, Ldok;->R()V

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ldok;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Ldok;->a:J

    :cond_0
    iget-wide v2, p0, Ldok;->a:J

    sub-long v2, v0, v2

    if-nez p1, :cond_1

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    invoke-virtual {p0}, Ldok;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v4

    iget-object v4, v4, Ldlh;->l:Ldlk;

    invoke-virtual {v4, v2, v3}, Ldlk;->a(J)V

    invoke-virtual {p0}, Ldok;->u()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->D()Ldky;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Ldok;->l()Ldnk;

    move-result-object v2

    invoke-virtual {v2}, Ldnk;->x()Ldnn;

    move-result-object v2

    invoke-static {v2, v4}, Ldnk;->a(Legk;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ldok;->h()Ldmw;

    move-result-object v2

    const-string v3, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Ldok;->a:J

    iget-object v0, p0, Ldok;->d:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    iget-object v0, p0, Ldok;->d:Ldkf;

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->l:Ldlk;

    invoke-virtual {v1}, Ldlk;->a()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldkf;->a(J)V

    const/4 v0, 0x1

    goto :goto_0
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

.method protected x()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldok;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldon;

    invoke-direct {v3, p0, v0, v1}, Ldon;-><init>(Ldok;J)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected y()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldok;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldoo;

    invoke-direct {v3, p0, v0, v1}, Ldoo;-><init>(Ldok;J)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected z()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldok;->e()V

    invoke-virtual {p0}, Ldok;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldok;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldok;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->j:Ldlj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldlj;->a(Z)V

    invoke-virtual {p0}, Ldok;->h()Ldmw;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
