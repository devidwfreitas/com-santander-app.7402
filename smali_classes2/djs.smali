.class public Ldjs;
.super Ldmt;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(Ldlv;)V
    .locals 1

    invoke-direct {p0, p1}, Ldmt;-><init>(Ldlv;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ldjs;->b:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ldjs;->a:Ljava/util/Map;

    return-void
.end method

.method private a(JLegk;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Not logging ad exposure. No active activity"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Not logging ad exposure. Less than 1000 ms. exposure"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_xt"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p3, v0}, Ldnk;->a(Legk;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ldjs;->h()Ldmw;

    move-result-object v1

    const-string v2, "am"

    const-string v3, "_xa"

    invoke-virtual {v1, v2, v3, v0}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Ldjs;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ldjs;->b(J)V

    return-void
.end method

.method static synthetic a(Ldjs;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldjs;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldjs;->c()V

    invoke-virtual {p0}, Ldjs;->e()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Ldjs;->c:J

    :cond_0
    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldjs;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Too many ads visible"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLegk;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p4, :cond_0

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Not logging ad unit exposure. No active activity"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ai"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_xt"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p4, v0}, Ldnk;->a(Legk;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ldjs;->h()Ldmw;

    move-result-object v1

    const-string v2, "am"

    const-string v3, "_xu"

    invoke-virtual {v1, v2, v3, v0}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ldjs;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Ldjs;->c:J

    :cond_1
    return-void
.end method

.method static synthetic b(Ldjs;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldjs;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private b(Ljava/lang/String;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Ldjs;->c()V

    invoke-virtual {p0}, Ldjs;->e()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ldjs;->l()Ldnk;

    move-result-object v1

    invoke-virtual {v1}, Ldnk;->x()Ldnn;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v2, "First ad unit exposure time was never set"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Ldjs;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Ldjs;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "First ad exposure time was never set"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2, v3, v1}, Ldjs;->a(Ljava/lang/String;JLegk;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ldjs;->c:J

    sub-long v2, p2, v2

    invoke-direct {p0, v2, v3, v1}, Ldjs;->a(JLegk;)V

    iput-wide v4, p0, Ldjs;->c:J

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ldjs;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Ldjs;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldjs;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldjv;

    invoke-direct {v3, p0, v0, v1}, Ldjv;-><init>(Ldjs;J)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldjs;->l()Ldnk;

    move-result-object v0

    invoke-virtual {v0}, Ldnk;->x()Ldnn;

    move-result-object v2

    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-direct {p0, v0, v4, v5, v2}, Ldjs;->a(Ljava/lang/String;JLegk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldjs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ldjs;->c:J

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1, v2}, Ldjs;->a(JLegk;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Ldjs;->b(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Ad unit id must be a non-empty string"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldjs;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldjs;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldjt;

    invoke-direct {v3, p0, p1, v0, v1}, Ldjt;-><init>(Ldjs;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmt;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ldjs;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Ad unit id must be a non-empty string"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldjs;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Ldjs;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldju;

    invoke-direct {v3, p0, p1, v0, v1}, Ldju;-><init>(Ldjs;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmt;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Ldmt;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Ldmt;->e()V

    return-void
.end method

.method public bridge synthetic f()Ldjs;
    .locals 1

    invoke-super {p0}, Ldmt;->f()Ldjs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ldjy;
    .locals 1

    invoke-super {p0}, Ldmt;->g()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ldmw;
    .locals 1

    invoke-super {p0}, Ldmt;->h()Ldmw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Ldks;
    .locals 1

    invoke-super {p0}, Ldmt;->i()Ldks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ldkh;
    .locals 1

    invoke-super {p0}, Ldmt;->j()Ldkh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ldno;
    .locals 1

    invoke-super {p0}, Ldmt;->k()Ldno;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ldnk;
    .locals 1

    invoke-super {p0}, Ldmt;->l()Ldnk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcvo;
    .locals 1

    invoke-super {p0}, Ldmt;->m()Lcvo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Ldmt;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ldkt;
    .locals 1

    invoke-super {p0}, Ldmt;->o()Ldkt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ldkb;
    .locals 1

    invoke-super {p0}, Ldmt;->p()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ldou;
    .locals 1

    invoke-super {p0}, Ldmt;->q()Ldou;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ldlp;
    .locals 1

    invoke-super {p0}, Ldmt;->r()Ldlp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ldok;
    .locals 1

    invoke-super {p0}, Ldmt;->s()Ldok;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ldlq;
    .locals 1

    invoke-super {p0}, Ldmt;->t()Ldlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ldkw;
    .locals 1

    invoke-super {p0}, Ldmt;->u()Ldkw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ldlh;
    .locals 1

    invoke-super {p0}, Ldmt;->v()Ldlh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ldka;
    .locals 1

    invoke-super {p0}, Ldmt;->w()Ldka;

    move-result-object v0

    return-object v0
.end method
