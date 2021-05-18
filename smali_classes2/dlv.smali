.class public Ldlv;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Ldlv;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Boolean;

.field private C:J

.field private D:Ljava/nio/channels/FileLock;

.field private E:Ljava/nio/channels/FileChannel;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:J

.field protected a:J

.field private final c:Landroid/content/Context;

.field private final d:Ldka;

.field private final e:Ldlh;

.field private final f:Ldkw;

.field private final g:Ldlq;

.field private final h:Ldok;

.field private final i:Ldlp;

.field private final j:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final k:Leif;

.field private final l:Ldou;

.field private final m:Ldkb;

.field private final n:Ldkt;

.field private final o:Ldla;

.field private final p:Lcvo;

.field private final q:Ldnk;

.field private final r:Ldno;

.field private final s:Ldkh;

.field private final t:Ldmw;

.field private final u:Ldks;

.field private final v:Ldlf;

.field private final w:Ldoq;

.field private final x:Ldjy;

.field private final y:Ldjs;

.field private final z:Z


# direct methods
.method constructor <init>(Ldmv;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Ldmv;->a:Landroid/content/Context;

    iput-object v0, p0, Ldlv;->c:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldlv;->I:J

    invoke-virtual {p1, p0}, Ldmv;->n(Ldlv;)Lcvo;

    move-result-object v0

    iput-object v0, p0, Ldlv;->p:Lcvo;

    invoke-virtual {p1, p0}, Ldmv;->a(Ldlv;)Ldka;

    move-result-object v0

    iput-object v0, p0, Ldlv;->d:Ldka;

    invoke-virtual {p1, p0}, Ldmv;->b(Ldlv;)Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->S()V

    iput-object v0, p0, Ldlv;->e:Ldlh;

    invoke-virtual {p1, p0}, Ldmv;->c(Ldlv;)Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->S()V

    iput-object v0, p0, Ldlv;->f:Ldkw;

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ldmv;->j(Ldlv;)Ldou;

    move-result-object v0

    invoke-virtual {v0}, Ldou;->S()V

    iput-object v0, p0, Ldlv;->l:Ldou;

    invoke-virtual {p1, p0}, Ldmv;->q(Ldlv;)Ldkh;

    move-result-object v0

    invoke-virtual {v0}, Ldkh;->S()V

    iput-object v0, p0, Ldlv;->s:Ldkh;

    invoke-virtual {p1, p0}, Ldmv;->r(Ldlv;)Ldks;

    move-result-object v0

    invoke-virtual {v0}, Ldks;->S()V

    iput-object v0, p0, Ldlv;->u:Ldks;

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->V()Z

    invoke-virtual {v0}, Ldks;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldou;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ldmv;->k(Ldlv;)Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->S()V

    iput-object v0, p0, Ldlv;->m:Ldkb;

    invoke-virtual {p1, p0}, Ldmv;->l(Ldlv;)Ldkt;

    move-result-object v0

    invoke-virtual {v0}, Ldkt;->S()V

    iput-object v0, p0, Ldlv;->n:Ldkt;

    invoke-virtual {p1, p0}, Ldmv;->u(Ldlv;)Ldjy;

    move-result-object v0

    invoke-virtual {v0}, Ldjy;->S()V

    iput-object v0, p0, Ldlv;->x:Ldjy;

    invoke-virtual {p1, p0}, Ldmv;->v(Ldlv;)Ldjs;

    move-result-object v0

    iput-object v0, p0, Ldlv;->y:Ldjs;

    invoke-virtual {p1, p0}, Ldmv;->m(Ldlv;)Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->S()V

    iput-object v0, p0, Ldlv;->o:Ldla;

    invoke-virtual {p1, p0}, Ldmv;->o(Ldlv;)Ldnk;

    move-result-object v0

    invoke-virtual {v0}, Ldnk;->S()V

    iput-object v0, p0, Ldlv;->q:Ldnk;

    invoke-virtual {p1, p0}, Ldmv;->p(Ldlv;)Ldno;

    move-result-object v0

    invoke-virtual {v0}, Ldno;->S()V

    iput-object v0, p0, Ldlv;->r:Ldno;

    invoke-virtual {p1, p0}, Ldmv;->i(Ldlv;)Ldmw;

    move-result-object v0

    invoke-virtual {v0}, Ldmw;->S()V

    iput-object v0, p0, Ldlv;->t:Ldmw;

    invoke-virtual {p1, p0}, Ldmv;->t(Ldlv;)Ldoq;

    move-result-object v0

    invoke-virtual {v0}, Ldoq;->S()V

    iput-object v0, p0, Ldlv;->w:Ldoq;

    invoke-virtual {p1, p0}, Ldmv;->s(Ldlv;)Ldlf;

    move-result-object v0

    iput-object v0, p0, Ldlv;->v:Ldlf;

    invoke-virtual {p1, p0}, Ldmv;->h(Ldlv;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iput-object v0, p0, Ldlv;->j:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p1, p0}, Ldmv;->g(Ldlv;)Leif;

    move-result-object v0

    iput-object v0, p0, Ldlv;->k:Leif;

    invoke-virtual {p1, p0}, Ldmv;->e(Ldlv;)Ldok;

    move-result-object v0

    invoke-virtual {v0}, Ldok;->S()V

    iput-object v0, p0, Ldlv;->h:Ldok;

    invoke-virtual {p1, p0}, Ldmv;->f(Ldlv;)Ldlp;

    move-result-object v0

    invoke-virtual {v0}, Ldlp;->S()V

    iput-object v0, p0, Ldlv;->i:Ldlp;

    invoke-virtual {p1, p0}, Ldmv;->d(Ldlv;)Ldlq;

    move-result-object v0

    invoke-virtual {v0}, Ldlq;->S()V

    iput-object v0, p0, Ldlv;->g:Ldlq;

    iget v0, p0, Ldlv;->G:I

    iget v1, p0, Ldlv;->H:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Ldlv;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ldlv;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlv;->z:Z

    iget-object v0, p0, Ldlv;->d:Ldka;

    invoke-virtual {v0}, Ldka;->V()Z

    iget-object v0, p0, Ldlv;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0}, Ldmw;->x()V

    :goto_1
    iget-object v0, p0, Ldlv;->g:Ldlq;

    new-instance v1, Ldlw;

    invoke-direct {v1, p0}, Ldlw;-><init>(Ldlv;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->B()Ldky;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ldky;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private P()Z
    .locals 1

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Q()V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->O()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Ldlv;->a:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    iget-wide v4, p0, Ldlv;->a:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->y()Ldlf;

    move-result-object v0

    invoke-virtual {v0}, Ldlf;->b()V

    invoke-virtual {p0}, Ldlv;->z()Ldoq;

    move-result-object v0

    invoke-virtual {v0}, Ldoq;->x()V

    goto :goto_0

    :cond_1
    iput-wide v8, p0, Ldlv;->a:J

    :cond_2
    invoke-virtual {p0}, Ldlv;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ldlv;->P()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Ldlv;->y()Ldlf;

    move-result-object v0

    invoke-virtual {v0}, Ldlf;->b()V

    invoke-virtual {p0}, Ldlv;->z()Ldoq;

    move-result-object v0

    invoke-virtual {v0}, Ldoq;->x()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ldlv;->R()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ldlv;->y()Ldlf;

    move-result-object v0

    invoke-virtual {v0}, Ldlf;->b()V

    invoke-virtual {p0}, Ldlv;->z()Ldoq;

    move-result-object v0

    invoke-virtual {v0}, Ldoq;->x()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v2

    invoke-virtual {v2}, Ldla;->x()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ldlv;->y()Ldlf;

    move-result-object v0

    invoke-virtual {v0}, Ldlf;->a()V

    invoke-virtual {p0}, Ldlv;->z()Ldoq;

    move-result-object v0

    invoke-virtual {v0}, Ldoq;->x()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    iget-object v2, v2, Ldlh;->e:Ldlk;

    invoke-virtual {v2}, Ldlk;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->ak()J

    move-result-wide v4

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Ldou;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_7

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_7
    invoke-virtual {p0}, Ldlv;->y()Ldlf;

    move-result-object v2

    invoke-virtual {v2}, Ldlf;->b()V

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v2

    invoke-interface {v2}, Lcvo;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->ao()J

    move-result-wide v0

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    iget-object v2, v2, Ldlh;->c:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v3

    invoke-interface {v3}, Lcvo;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldlk;->a(J)V

    :cond_8
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->z()Ldoq;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldoq;->a(J)V

    goto/16 :goto_0
.end method

.method private R()J
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->ar()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->au()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".none."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->an()J

    move-result-wide v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ldlv;->e()Ldlh;

    move-result-object v5

    iget-object v5, v5, Ldlh;->c:Ldlk;

    invoke-virtual {v5}, Ldlk;->a()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ldlv;->e()Ldlh;

    move-result-object v5

    iget-object v5, v5, Ldlh;->d:Ldlk;

    invoke-virtual {v5}, Ldlk;->a()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v5

    invoke-virtual {v5}, Ldkb;->G()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v5

    invoke-virtual {v5}, Ldkb;->H()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-nez v5, :cond_5

    const-wide/16 v2, 0x0

    :cond_1
    :goto_2
    return-wide v2

    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->am()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->al()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    sub-long/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v2, v12

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v2, v8

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v2, v12, v6

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_6

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v4

    invoke-virtual {v4, v8, v9, v0, v1}, Ldou;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_7

    add-long v2, v8, v0

    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    cmp-long v0, v10, v12

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->at()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v4, v1

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->as()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ldlv;
    .locals 2

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldlv;->b:Ldlv;

    if-nez v0, :cond_1

    const-class v1, Ldlv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldlv;->b:Ldlv;

    if-nez v0, :cond_0

    new-instance v0, Ldmv;

    invoke-direct {v0, p0}, Ldmv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ldmv;->a()Ldlv;

    move-result-object v0

    sput-object v0, Ldlv;->b:Ldlv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ldlv;->b:Ldlv;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ldmt;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ldki;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p1, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "_r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v10

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v0

    iget-object v1, p1, Ldki;->a:Ljava/lang/String;

    iget-object v2, p1, Ldki;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldlp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {p0}, Ldlv;->H()J

    move-result-wide v2

    iget-object v4, p1, Ldki;->a:Ljava/lang/String;

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Ldkb;->a(JLjava/lang/String;ZZZZZ)Ldkc;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-wide v0, v1, Ldkc;->e:J

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v2

    iget-object v3, p1, Ldki;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldka;->c(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v5, v10

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 22

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->x()V

    :try_start_0
    new-instance v8, Ldma;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Ldma;-><init>(Ldlv;Ldlw;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Ldlv;->I:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Ldkb;->a(Ljava/lang/String;JJLdkd;)V

    invoke-virtual {v8}, Ldma;->a()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v5, 0x0

    iget-object v0, v8, Ldma;->a:Ldpl;

    move-object/from16 v19, v0

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ldpi;

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->b:[Ldpi;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Ldlv;->j()Ldlp;

    move-result-object v3

    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v4, v2, Ldpl;->o:Ljava/lang/String;

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ldlp;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "Dropping blacklisted raw event. appId"

    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v2, v2, Ldpl;->o:Ljava/lang/String;

    invoke-static {v2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    iget-object v3, v8, Ldma;->a:Ldpl;

    iget-object v3, v3, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldou;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    iget-object v3, v8, Ldma;->a:Ldpl;

    iget-object v3, v3, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldou;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_28

    const-string v3, "_err"

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v3

    const/16 v4, 0xb

    const-string v7, "_ev"

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v7, v2, v9}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    move v2, v6

    move v3, v5

    :goto_2
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    move v6, v2

    move v5, v3

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ldlv;->j()Ldlp;

    move-result-object v3

    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v4, v2, Ldpl;->o:Ljava/lang/String;

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ldlp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v3

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ldou;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->a:[Ldpj;

    if-nez v2, :cond_4

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    const/4 v7, 0x0

    new-array v7, v7, [Ldpj;

    iput-object v7, v2, Ldpi;->a:[Ldpj;

    :cond_4
    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v9, v2, Ldpi;->a:[Ldpj;

    array-length v10, v9

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v10, :cond_6

    aget-object v2, v9, v7

    const-string v11, "_c"

    iget-object v12, v2, Ldpj;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Ldpj;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v2

    goto :goto_3

    :cond_5
    const-string v11, "_r"

    iget-object v12, v2, Ldpj;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Ldpj;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v3

    const-string v7, "Marking event as conversion"

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v3, v2, Ldpi;->a:[Ldpj;

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->a:[Ldpj;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldpj;

    new-instance v3, Ldpj;

    invoke-direct {v3}, Ldpj;-><init>()V

    const-string v7, "_c"

    iput-object v7, v3, Ldpj;->a:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v3, Ldpj;->c:Ljava/lang/Long;

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aput-object v3, v2, v7

    iget-object v3, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldpi;

    iput-object v2, v3, Ldpi;->a:[Ldpj;

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v3

    const-string v4, "Marking event as real-time"

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v3, v2, Ldpi;->a:[Ldpj;

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->a:[Ldpj;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldpj;

    new-instance v3, Ldpj;

    invoke-direct {v3}, Ldpj;-><init>()V

    const-string v4, "_r"

    iput-object v4, v3, Ldpj;->a:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Ldpj;->c:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    iget-object v3, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldpi;

    iput-object v2, v3, Ldpi;->a:[Ldpj;

    :cond_8
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ldlv;->H()J

    move-result-wide v10

    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v12, v2, Ldpl;->o:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v9 .. v17}, Ldkb;->a(JLjava/lang/String;ZZZZZ)Ldkc;

    move-result-object v2

    iget-wide v2, v2, Ldkc;->e:J

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v4

    iget-object v9, v8, Ldma;->a:Ldpl;

    iget-object v9, v9, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ldka;->c(Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_c

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    const/4 v3, 0x0

    :goto_5
    iget-object v4, v2, Ldpi;->a:[Ldpj;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    const-string v4, "_r"

    iget-object v7, v2, Ldpi;->a:[Ldpj;

    aget-object v7, v7, v3

    iget-object v7, v7, Ldpj;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v2, Ldpi;->a:[Ldpj;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ldpj;

    if-lez v3, :cond_9

    iget-object v7, v2, Ldpi;->a:[Ldpj;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v9, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    array-length v7, v4

    if-ge v3, v7, :cond_a

    iget-object v7, v2, Ldpi;->a:[Ldpj;

    add-int/lit8 v9, v3, 0x1

    array-length v10, v4

    sub-int/2addr v10, v3

    invoke-static {v7, v9, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iput-object v4, v2, Ldpi;->a:[Ldpj;

    :cond_b
    move v7, v5

    :cond_c
    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    iget-object v2, v2, Ldpi;->b:Ljava/lang/String;

    invoke-static {v2}, Ldou;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v20, :cond_13

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ldlv;->H()J

    move-result-wide v10

    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v12, v2, Ldpl;->o:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Ldkb;->a(JLjava/lang/String;ZZZZZ)Ldkc;

    move-result-object v2

    iget-wide v2, v2, Ldkc;->c:J

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v4

    iget-object v5, v8, Ldma;->a:Ldpl;

    iget-object v5, v5, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ldka;->b(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v8, Ldma;->a:Ldpl;

    iget-object v4, v4, Ldpl;->o:Ljava/lang/String;

    invoke-static {v4}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v10, v2, Ldpi;->a:[Ldpj;

    array-length v11, v10

    const/4 v3, 0x0

    move v9, v3

    :goto_6
    if-ge v9, v11, :cond_f

    aget-object v3, v10, v9

    const-string v12, "_c"

    iget-object v13, v3, Ldpj;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    move v4, v5

    :goto_7
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v4

    move-object v4, v3

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_e
    const-string v12, "_err"

    iget-object v3, v3, Ldpj;->a:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    move-object/from16 v21, v4

    move v4, v3

    move-object/from16 v3, v21

    goto :goto_7

    :cond_f
    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    iget-object v3, v2, Ldpi;->a:[Ldpj;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v10, v3, [Ldpj;

    const/4 v5, 0x0

    iget-object v11, v2, Ldpi;->a:[Ldpj;

    array-length v12, v11

    const/4 v3, 0x0

    move v9, v3

    :goto_8
    if-ge v9, v12, :cond_10

    aget-object v13, v11, v9

    if-eq v13, v4, :cond_24

    add-int/lit8 v3, v5, 0x1

    aput-object v13, v10, v5

    :goto_9
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v3

    goto :goto_8

    :cond_10
    iput-object v10, v2, Ldpi;->a:[Ldpj;

    move v4, v7

    :goto_a
    move-object/from16 v0, v19

    iget-object v5, v0, Ldpl;->b:[Ldpi;

    add-int/lit8 v3, v6, 0x1

    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpi;

    aput-object v2, v5, v6

    move v2, v3

    move v3, v4

    goto/16 :goto_2

    :cond_11
    if-eqz v4, :cond_12

    const-string v2, "_err"

    iput-object v2, v4, Ldpj;->a:Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Ldpj;->c:Ljava/lang/Long;

    move v4, v7

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v8, Ldma;->a:Ldpl;

    iget-object v4, v4, Ldpl;->o:Ljava/lang/String;

    invoke-static {v4}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    move v4, v7

    goto :goto_a

    :cond_14
    iget-object v2, v8, Ldma;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_15

    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->b:[Ldpi;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldpi;

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->b:[Ldpi;

    :cond_15
    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v2, v2, Ldpl;->o:Ljava/lang/String;

    iget-object v3, v8, Ldma;->a:Ldpl;

    iget-object v3, v3, Ldpl;->c:[Ldpn;

    move-object/from16 v0, v19

    iget-object v4, v0, Ldpl;->b:[Ldpi;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ldlv;->a(Ljava/lang/String;[Ldpn;[Ldpi;)[Ldph;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->A:[Ldph;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->e:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->f:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, v19

    iget-object v3, v0, Ldpl;->b:[Ldpi;

    array-length v3, v3

    if-ge v2, v3, :cond_18

    move-object/from16 v0, v19

    iget-object v3, v0, Ldpl;->b:[Ldpi;

    aget-object v3, v3, v2

    iget-object v4, v3, Ldpi;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-gez v4, :cond_16

    iget-object v4, v3, Ldpi;->c:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v4, v0, Ldpl;->e:Ljava/lang/Long;

    :cond_16
    iget-object v4, v3, Ldpi;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-lez v4, :cond_17

    iget-object v3, v3, Ldpi;->c:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v3, v0, Ldpl;->f:Ljava/lang/Long;

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v9, v2, Ldpl;->o:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v9}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v10

    if-nez v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v8, Ldma;->a:Ldpl;

    iget-object v4, v4, Ldpl;->o:Ljava/lang/String;

    invoke-static {v4}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_c
    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->b:[Ldpi;

    array-length v2, v2

    if-lez v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->V()Z

    invoke-virtual/range {p0 .. p0}, Ldlv;->j()Ldlp;

    move-result-object v2

    iget-object v3, v8, Ldma;->a:Ldpl;

    iget-object v3, v3, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldlp;->a(Ljava/lang/String;)Ldpe;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v3, v2, Ldpe;->a:Ljava/lang/Long;

    if-nez v3, :cond_20

    :cond_1a
    iget-object v2, v8, Ldma;->a:Ldpl;

    iget-object v2, v2, Ldpl;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->G:Ljava/lang/Long;

    :goto_d
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Ldkb;->a(Ldpl;Z)Z

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    iget-object v3, v8, Ldma;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ldkb;->a(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v9}, Ldkb;->i(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V

    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->b:[Ldpi;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_21

    const/4 v2, 0x1

    :goto_e
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    :goto_f
    return v2

    :cond_1c
    :try_start_1
    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->b:[Ldpi;

    array-length v2, v2

    if-lez v2, :cond_19

    invoke-virtual {v10}, Ldjw;->h()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_10
    move-object/from16 v0, v19

    iput-object v4, v0, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual {v10}, Ldjw;->g()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-nez v4, :cond_23

    :goto_11
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_12
    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual {v10}, Ldjw;->r()V

    invoke-virtual {v10}, Ldjw;->o()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->w:Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ldjw;->a(J)V

    move-object/from16 v0, v19

    iget-object v2, v0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ldjw;->b(J)V

    invoke-virtual {v10}, Ldjw;->z()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->x:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v10}, Ldkb;->a(Ldjw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_c

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    throw v2

    :cond_1d
    const/4 v4, 0x0

    goto :goto_10

    :cond_1e
    const/4 v2, 0x0

    goto :goto_12

    :cond_1f
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v8, Ldma;->a:Ldpl;

    iget-object v4, v4, Ldpl;->o:Ljava/lang/String;

    invoke-static {v4}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_20
    iget-object v2, v2, Ldpe;->a:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v2, v0, Ldpl;->G:Ljava/lang/Long;

    goto/16 :goto_d

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_22
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_23
    move-wide v2, v6

    goto/16 :goto_11

    :cond_24
    move v3, v5

    goto/16 :goto_9

    :cond_25
    move-object v3, v4

    move v4, v5

    goto/16 :goto_7

    :cond_26
    move v2, v4

    goto/16 :goto_4

    :cond_27
    move v4, v5

    goto/16 :goto_a

    :cond_28
    move v2, v6

    move v3, v5

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;[Ldpn;[Ldpi;)[Ldph;
    .locals 1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->A()Ldjy;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Ldjy;->a(Ljava/lang/String;[Ldpi;[Ldpn;)[Ldph;

    move-result-object v0

    return-object v0
.end method

.method private b(Ldmu;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ldmu;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private c(Lcom/google/android/gms/internal/zzatd;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v2

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ldlh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_b

    new-instance v0, Ldjw;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Ldjw;-><init>(Ldlv;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    invoke-virtual {v2}, Ldlh;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldjw;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ldjw;->c(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldjw;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldjw;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v2}, Ldjw;->l()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v2, v4, v5}, Ldjw;->d(J)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldjw;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v2}, Ldjw;->j()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v2, v4, v5}, Ldjw;->c(J)V

    move v0, v1

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldjw;->f(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v2}, Ldjw;->m()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v2, v4, v5}, Ldjw;->e(J)V

    move v0, v1

    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v2}, Ldjw;->n()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v2, v0}, Ldjw;->a(Z)V

    move v0, v1

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldjw;->g(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v2}, Ldjw;->A()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_c

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v2, v4, v5}, Ldjw;->o(J)V

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldkb;->a(Ldjw;)V

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v2}, Ldjw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ldjw;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldjw;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public A()Ldjy;
    .locals 1

    iget-object v0, p0, Ldlv;->x:Ldjy;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->x:Ldjy;

    return-object v0
.end method

.method public B()Ldjs;
    .locals 1

    iget-object v0, p0, Ldlv;->y:Ldjs;

    invoke-direct {p0, v0}, Ldlv;->a(Ldmt;)V

    iget-object v0, p0, Ldlv;->y:Ldjs;

    return-object v0
.end method

.method public C()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->h()Ldlq;

    move-result-object v0

    invoke-virtual {v0}, Ldlq;->e()V

    return-void
.end method

.method D()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Ldlv;->E:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method E()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldlv;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldlv;->D()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldlv;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v1

    invoke-virtual {v1}, Ldks;->A()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldlv;->a(II)Z

    :cond_0
    return-void
.end method

.method F()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    iget-object v0, p0, Ldlv;->m:Ldkb;

    invoke-virtual {v0}, Ldkb;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ldlv;->E:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Ldlv;->E:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Ldlv;->D:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Ldlv;->D:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public G()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->Y()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldlh;->c(Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->Z()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method H()J
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    invoke-virtual {v2}, Ldlh;->z()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method I()V
    .locals 1

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    return-void
.end method

.method J()V
    .locals 2

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected K()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    iget-object v0, p0, Ldlv;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->C()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Ldlv;->a:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    invoke-direct {p0}, Ldlv;->Q()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ldlv;->K()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->x()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Ldlv;->Q()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v8

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->aj()J

    move-result-wide v0

    sub-long v0, v8, v0

    invoke-virtual {p0, v0, v1}, Ldlv;->a(J)Z

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->c:Ldlk;

    invoke-virtual {v0}, Ldlk;->a()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-wide v6, p0, Ldlv;->I:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->K()J

    move-result-wide v6

    iput-wide v6, p0, Ldlv;->I:J

    :cond_7
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldka;->h(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldka;->i(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Ldkb;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldpl;

    iget-object v6, v0, Ldpl;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v0, v0, Ldpl;->s:Ljava/lang/String;

    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_f

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldpl;

    iget-object v7, v0, Ldpl;->s:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_a
    iget-object v0, v0, Ldpl;->s:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v4, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_3
    new-instance v6, Ldpk;

    invoke-direct {v6}, Ldpk;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldpl;

    iput-object v0, v6, Ldpk;->a:[Ldpl;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    iget-object v0, v6, Ldpk;->a:[Ldpl;

    array-length v0, v0

    if-ge v3, v0, :cond_b

    iget-object v7, v6, Ldpk;->a:[Ldpl;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldpl;

    aput-object v0, v7, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Ldpk;->a:[Ldpl;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v7

    invoke-virtual {v7}, Ldka;->U()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Ldpl;->r:Ljava/lang/Long;

    iget-object v0, v6, Ldpk;->a:[Ldpl;

    aget-object v0, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Ldpl;->d:Ljava/lang/Long;

    iget-object v0, v6, Ldpk;->a:[Ldpl;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v7

    invoke-virtual {v7}, Ldka;->V()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Ldpl;->z:Ljava/lang/Boolean;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ldkw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v6}, Ldou;->b(Ldpk;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v2

    invoke-virtual {v2, v6}, Ldou;->a(Ldpk;)[B

    move-result-object v3

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->ai()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ldlv;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v4

    iget-object v4, v4, Ldlh;->d:Ldlk;

    invoke-virtual {v4, v8, v9}, Ldlk;->a(J)V

    const-string v4, "?"

    iget-object v5, v6, Ldpk;->a:[Ldpl;

    array-length v5, v5

    if-lez v5, :cond_c

    iget-object v4, v6, Ldpk;->a:[Ldpl;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Ldpl;->o:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v5

    invoke-virtual {v5}, Ldkw;->D()Ldky;

    move-result-object v5

    const-string v6, "Uploading data. app, uncompressed size, data"

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v4, v8, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Ldly;

    invoke-direct {v5, p0}, Ldly;-><init>(Ldlv;)V

    invoke-virtual/range {v0 .. v5}, Ldla;->a(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Ldlc;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v7}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    iput-wide v10, p0, Ldlv;->I:J

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->aj()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Ldkb;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ldlv;->a(Ldjw;)V

    goto/16 :goto_0

    :cond_e
    move-object v0, v5

    goto/16 :goto_5

    :cond_f
    move-object v2, v4

    goto/16 :goto_3

    :cond_10
    move-object v6, v5

    goto/16 :goto_1
.end method

.method M()V
    .locals 1

    iget v0, p0, Ldlv;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldlv;->H:I

    return-void
.end method

.method N()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-boolean v0, p0, Ldlv;->A:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->E()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlv;->A:Z

    return-void
.end method

.method O()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-boolean v0, p0, Ldlv;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Ldjw;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ldjw;->j()J

    move-result-wide v7

    invoke-virtual {v2}, Ldjw;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ldjw;->l()J

    move-result-wide v10

    invoke-virtual {v2}, Ldjw;->m()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Ldjw;->n()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Ldjw;->f()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Ldjw;->A()J

    move-result-wide v18

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    goto :goto_0
.end method

.method a()V
    .locals 2

    iget-boolean v0, p0, Ldlv;->z:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/Throwable;[B)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Ldlv;->F:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Ldlv;->F:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->c:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v2

    invoke-interface {v2}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->d:Ldlk;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    invoke-direct {p0}, Ldlv;->Q()V

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->x()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldkb;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->b()J

    move-result-wide v0

    iput-wide v0, p0, Ldlv;->a:J

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Disable upload, time"

    iget-wide v2, p0, Ldlv;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ldlv;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ldlv;->L()V

    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldlv;->a:J

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldlv;->I:J

    invoke-direct {p0}, Ldlv;->Q()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v1

    iget-object v1, v1, Ldlh;->d:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v2

    invoke-interface {v2}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldlk;->a(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->e:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    :cond_7
    invoke-direct {p0}, Ldlv;->Q()V

    goto :goto_1
.end method

.method a(Lcom/google/android/gms/internal/zzatd;)V
    .locals 1

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method a(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldjw;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ldjw;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Ldjw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v0}, Ldjw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldkb;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldjw;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ldjw;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Ldjw;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_1
    return-void
.end method

.method a(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldlv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Ldlv;->a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v6, 0x1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->x()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldkb;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatg;->e:J

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iput-object v1, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    move v7, v0

    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v0, :cond_2

    iget-object v6, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Ldot;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/zzauq;->c:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ldot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldkb;->a(Ldot;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->C()Ldky;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, v0, Ldot;->c:Ljava/lang/String;

    iget-object v0, v0, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_2

    iget-object v0, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v0, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_2
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0, v8}, Ldkb;->a(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v5, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v1, v5, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauq;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->f:Z

    move v7, v6

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Ldot;->c:Ljava/lang/String;

    iget-object v0, v0, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    move v7, v0

    goto/16 :goto_1
.end method

.method a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzatq;->d:J

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ldou;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->x()V

    :try_start_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Ldkb;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v5

    invoke-virtual {v5}, Ldkw;->C()Ldky;

    move-result-object v5

    const-string v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v10, v11}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v5, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_3
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ldkb;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    throw v2

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Ldkb;->b(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v8

    invoke-virtual {v8}, Ldkw;->C()Ldky;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Ldkb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Ldkb;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v5, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Ldkb;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    move-object v9, v0

    if-eqz v9, :cond_9

    iget-object v8, v9, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v2, Ldot;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ldot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldkb;->a(Ldot;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->C()Ldky;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v8, v2, Ldot;->c:Ljava/lang/String;

    iget-object v12, v2, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzauq;-><init>(Ldot;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/zzatg;->f:Z

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v9}, Ldkb;->a(Lcom/google/android/gms/internal/zzatg;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->x()Ldky;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v5}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v2, Ldot;->c:Ljava/lang/String;

    iget-object v12, v2, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v4, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v4, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0
.end method

.method a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Ldjw;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ldjw;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ldjw;->j()J

    move-result-wide v7

    invoke-virtual {v2}, Ldjw;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ldjw;->l()J

    move-result-wide v10

    invoke-virtual {v2}, Ldjw;->m()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Ldjw;->n()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Ldjw;->f()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Ldjw;->A()J

    move-result-wide v18

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto/16 :goto_0
.end method

.method a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldou;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->z()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldou;->c(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->z()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_6
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldou;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Ldot;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzauq;->c:J

    invoke-direct/range {v0 .. v6}, Ldot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->C()Ldky;

    move-result-object v1

    const-string v2, "Setting user property"

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldkb;->a(Ldot;)Z

    move-result v1

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->C()Ldky;

    move-result-object v1

    const-string v2, "User property set"

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    iget-object v0, v0, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    iget-object v0, v0, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0
.end method

.method a(Ldjw;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Ldjw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Ldlv;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {p1}, Ldjw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ldjw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldka;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v4, "Fetching remote configuration"

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v2

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ldlp;->a(Ljava/lang/String;)Ldpe;

    move-result-object v2

    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v4

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldlp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v2

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ldlz;

    invoke-direct {v5, p0}, Ldlz;-><init>(Ldlv;)V

    invoke-virtual {v2, v4, v1, v3, v5}, Ldla;->a(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Ldlc;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Ldjw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ldki;Lcom/google/android/gms/internal/zzatd;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Ldki;->a:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Ldki;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcsp;->b(Z)V

    new-instance v2, Ldpl;

    invoke-direct {v2}, Ldpl;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Ldpl;->a:Ljava/lang/Integer;

    const-string v0, "android"

    iput-object v0, v2, Ldpl;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iput-object v0, v2, Ldpl;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    iput-object v0, v2, Ldpl;->n:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    iput-object v0, v2, Ldpl;->p:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->j:J

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Ldpl;->C:Ljava/lang/Integer;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Ldpl;->q:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    iput-object v0, v2, Ldpl;->y:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ldlh;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Ldpl;->s:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Ldpl;->t:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ldlv;->w()Ldkh;

    move-result-object v0

    invoke-virtual {v0}, Ldkh;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldpl;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->w()Ldkh;

    move-result-object v0

    invoke-virtual {v0}, Ldkh;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldpl;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->w()Ldkh;

    move-result-object v0

    invoke-virtual {v0}, Ldkh;->z()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Ldlv;->w()Ldkh;

    move-result-object v0

    invoke-virtual {v0}, Ldkh;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldpl;->l:Ljava/lang/String;

    iput-object v1, v2, Ldpl;->r:Ljava/lang/Long;

    iput-object v1, v2, Ldpl;->d:Ljava/lang/Long;

    iput-object v1, v2, Ldpl;->e:Ljava/lang/Long;

    iput-object v1, v2, Ldpl;->f:Ljava/lang/Long;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ldjw;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ldjw;-><init>(Ldlv;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v1

    invoke-virtual {v1}, Ldlh;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjw;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjw;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjw;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ldlh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjw;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ldjw;->f(J)V

    invoke-virtual {v0, v8, v9}, Ldjw;->a(J)V

    invoke-virtual {v0, v8, v9}, Ldjw;->b(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjw;->e(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v0, v4, v5}, Ldjw;->c(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjw;->f(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v0, v4, v5}, Ldjw;->d(J)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v0, v4, v5}, Ldjw;->e(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v0, v1}, Ldjw;->a(Z)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v0, v4, v5}, Ldjw;->o(J)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldkb;->a(Ldjw;)V

    :cond_1
    invoke-virtual {v0}, Ldjw;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ldpl;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ldjw;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldpl;->B:Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldpn;

    iput-object v0, v2, Ldpl;->c:[Ldpn;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    new-instance v4, Ldpn;

    invoke-direct {v4}, Ldpn;-><init>()V

    iget-object v0, v2, Ldpl;->c:[Ldpn;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    iget-object v0, v0, Ldot;->c:Ljava/lang/String;

    iput-object v0, v4, Ldpn;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    iget-wide v6, v0, Ldot;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Ldpn;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    iget-object v0, v0, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Ldou;->a(Ldpn;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ldlv;->w()Ldkh;

    move-result-object v0

    iget-object v3, p0, Ldlv;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ldkh;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldlv;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v3, "null secure ID. appId"

    iget-object v4, v2, Ldpl;->o:Ljava/lang/String;

    invoke-static {v4}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "null"

    :cond_4
    :goto_3
    iput-object v0, v2, Ldpl;->F:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "empty secure ID. appId"

    iget-object v5, v2, Ldpl;->o:Ljava/lang/String;

    invoke-static {v5}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldkb;->a(Ldpl;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-direct {p0, p1}, Ldlv;->a(Ldki;)Z

    move-result v3

    invoke-virtual {v2, p1, v0, v1, v3}, Ldkb;->a(Ldki;JZ)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-wide v8, p0, Ldlv;->a:J

    :cond_7
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Ldpl;->o:Ljava/lang/String;

    invoke-static {v2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method a(Ldmu;)V
    .locals 1

    iget v0, p0, Ldlv;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldlv;->G:I

    return-void
.end method

.method a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v6, 0x130

    const/4 v1, 0x1

    const/16 v5, 0x194

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->x()V

    :try_start_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3, p1}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v6, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v1

    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    :goto_2
    return-void

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v5, :cond_c

    :cond_4
    if-eqz p5, :cond_6

    :try_start_1
    const-string v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    if-eq p2, v5, :cond_5

    if-ne p2, v6, :cond_8

    :cond_5
    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldlp;->a(Ljava/lang/String;)Ldpe;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ldlp;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    :try_start_2
    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Ldlp;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto :goto_2

    :cond_9
    :try_start_3
    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ldjw;->g(J)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldkb;->a(Ldjw;)V

    if-ne p2, v5, :cond_a

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->A()Ldky;

    move-result-object v0

    const-string v1, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Ldlv;->r()Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Ldlv;->P()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ldlv;->L()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0

    :cond_a
    :try_start_4
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Ldlv;->Q()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v2

    invoke-interface {v2}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ldjw;->h(J)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v4}, Ldkb;->a(Ldjw;)V

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->j()Ldlp;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldlp;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    iget-object v2, v2, Ldlh;->d:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v3

    invoke-interface {v3}, Lcvo;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldlk;->a(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->e:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    :cond_f
    invoke-direct {p0}, Ldlv;->Q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcsp;->b(Z)V

    iget-object v0, p0, Ldlv;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ldlv;->F:Ljava/util/List;

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    invoke-direct {p0}, Ldlv;->Q()V

    return-void
.end method

.method a(II)Z
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Ldlv;->D()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ldlv;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Storage version upgraded. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Storage version upgrade failed. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method a(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ldlv;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldlx;

    invoke-direct {v1, p0, p1}, Ldlx;-><init>(Ldlv;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/internal/zzatd;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/32 v6, 0x36ee80

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->x()V

    :try_start_0
    invoke-virtual {p0, p1, v2, v3}, Ldlv;->a(Lcom/google/android/gms/internal/zzatd;J)V

    invoke-direct {p0, p1}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v1, v4}, Ldkb;->a(Ljava/lang/String;Ljava/lang/String;)Ldkj;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x1

    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    add-long/2addr v0, v4

    mul-long v4, v0, v6

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    const-string v1, "_fot"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Ldlv;->a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0, p1, v2, v3}, Ldlv;->b(Lcom/google/android/gms/internal/zzatd;J)V

    invoke-virtual {p0, p1, v2, v3}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;J)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2, v3}, Ldlv;->d(Lcom/google/android/gms/internal/zzatd;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0
.end method

.method b(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldjw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v8, v9}, Ldjw;->g(J)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldkb;->a(Ldjw;)V

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->h(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    const-string v2, "_pfo"

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_4

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    const-string v0, "_uwa"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ldgk;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const-string v1, "_sys"

    invoke-virtual {v3, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const-string v0, "_sysu"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v4, "Package info is null, first open report might be inaccurate. appId"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v5}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v4, "Application info is null, first open report might be inaccurate. appId"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v5}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2
.end method

.method b(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldlv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Ldlv;->b(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method b(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldkb;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldkb;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldkb;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzatq;->d:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0
.end method

.method b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p2 .. p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Ldlv;->C()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->a()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ldou;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ldlv;->j()Ldlp;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ldlp;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldou;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldou;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    const-string v4, "_err"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "_ev"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ldjw;->q()J

    move-result-wide v4

    invoke-virtual {v2}, Ldjw;->p()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ldlv;->t()Lcvo;

    move-result-object v3

    invoke-interface {v3}, Lcvo;->a()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->ac()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->C()Ldky;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Ldky;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ldlv;->a(Ldjw;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ldkw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v4, "Logging event"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->x()V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    const-string v2, "currency"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_9

    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    :cond_9
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_d

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_d

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-wide v8, v4

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[A-Z]{3}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "_ltv_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Ldkb;->c(Ljava/lang/String;Ljava/lang/String;)Ldot;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v4, v2, Ldot;->e:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    :cond_a
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldka;->e(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ldkb;->a(Ljava/lang/String;I)V

    new-instance v2, Ldot;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->t()Lcvo;

    move-result-object v6

    invoke-interface {v6}, Lcvo;->a()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ldot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldkb;->a(Ldot;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->x()Ldky;

    move-result-object v4

    const-string v5, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Ldot;->c:Ljava/lang/String;

    iget-object v2, v2, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-static {v2}, Ldou;->a(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ldlv;->H()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Ldkb;->a(JLjava/lang/String;ZZZZZ)Ldkc;

    move-result-object v2

    iget-wide v4, v2, Ldkc;->b:J

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v6

    invoke-virtual {v6}, Ldka;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_11

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->x()Ldky;

    move-result-object v4

    const-string v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Ldkc;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const/16 v3, 0x10

    const-string v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v6, "Data lost. Currency value is too big. appId"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_2

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    throw v2

    :cond_10
    :try_start_3
    iget-object v2, v2, Ldot;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v2, Ldot;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->t()Lcvo;

    move-result-object v6

    invoke-interface {v6}, Lcvo;->a()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ldot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_11
    if-eqz v10, :cond_13

    iget-wide v4, v2, Ldkc;->a:J

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v6

    invoke-virtual {v6}, Ldka;->H()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_13

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->x()Ldky;

    move-result-object v4

    const-string v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Ldkc;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const/16 v3, 0x10

    const-string v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_13
    if-eqz v12, :cond_15

    :try_start_4
    iget-wide v4, v2, Ldkc;->d:J

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ldka;->a(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_15

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->x()Ldky;

    move-result-object v4

    const-string v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Ldkc;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_15
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const-string v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual {v2, v14, v4, v5}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldou;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const-string v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const-string v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldkb;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    new-instance v5, Ldki;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v14}, Ldki;-><init>(Ldlv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    iget-object v4, v5, Ldki;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ldkb;->a(Ljava/lang/String;Ljava/lang/String;)Ldkj;

    move-result-object v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldkb;->j(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->F()I

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-ltz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v5, Ldki;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v6

    invoke-virtual {v6}, Ldka;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v5, v6}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    goto/16 :goto_0

    :cond_18
    :try_start_6
    new-instance v7, Ldkj;

    iget-object v9, v5, Ldki;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Ldki;->d:J

    move-object v8, v3

    invoke-direct/range {v7 .. v15}, Ldkj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v7}, Ldkb;->a(Ldkj;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Ldlv;->a(Ldki;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ldkw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Event recorded"

    invoke-virtual {v2, v3, v5}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    invoke-direct/range {p0 .. p0}, Ldlv;->Q()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    :try_start_7
    iget-wide v6, v2, Ldkj;->e:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7}, Ldki;->a(Ldlv;J)Ldki;

    move-result-object v5

    iget-wide v6, v5, Ldki;->d:J

    invoke-virtual {v2, v6, v7}, Ldkj;->a(J)Ldkj;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    goto :goto_5
.end method

.method b(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Removing user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Ldlv;->c(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldkb;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->y()V

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "User property removed"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->z()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v1

    invoke-virtual {v1}, Ldkb;->z()V

    throw v0
.end method

.method protected b()Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldlv;->a()V

    invoke-virtual {p0}, Ldlv;->C()V

    iget-object v1, p0, Ldlv;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Ldlv;->C:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldlv;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldlv;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    iget-wide v4, p0, Ldlv;->C:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    iput-wide v2, p0, Ldlv;->C:J

    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ldou;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Ldou;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v1

    invoke-virtual {v1}, Ldgk;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ldlm;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ldog;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldlv;->B:Ljava/lang/Boolean;

    iget-object v0, p0, Ldlv;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v1

    invoke-virtual {v1}, Ldks;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldou;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldlv;->B:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Ldlv;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
    .locals 18
    .param p1    # Lcom/google/android/gms/internal/zzatq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldlv;->a()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->C()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->J()V

    invoke-static/range {p1 .. p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Ldpk;

    invoke-direct {v13}, Ldpk;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v16

    if-nez v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ldjw;->n()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v17, Ldpl;

    invoke-direct/range {v17 .. v17}, Ldpl;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ldpl;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    iput-object v2, v13, Ldpk;->a:[Ldpl;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->a:Ljava/lang/Integer;

    const-string v2, "android"

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->i:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->o:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->k()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->n:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->p:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->j()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->C:Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ldjw;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->q:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ldjw;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->y:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ldlv;->e()Ldlh;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ldjw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldlh;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->s:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->t:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ldlv;->w()Ldkh;

    move-result-object v2

    invoke-virtual {v2}, Ldkh;->x()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->k:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->w()Ldkh;

    move-result-object v2

    invoke-virtual {v2}, Ldkh;->y()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->j:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->w()Ldkh;

    move-result-object v2

    invoke-virtual {v2}, Ldkh;->z()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ldlv;->w()Ldkh;

    move-result-object v2

    invoke-virtual {v2}, Ldkh;->A()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->l:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->u:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ldjw;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->B:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ldjw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldkb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ldpn;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->c:[Ldpn;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    new-instance v5, Ldpn;

    invoke-direct {v5}, Ldpn;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Ldpl;->c:[Ldpn;

    aput-object v5, v2, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldot;

    iget-object v2, v2, Ldot;->c:Ljava/lang/String;

    iput-object v2, v5, Ldpn;->b:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldot;

    iget-wide v6, v2, Ldot;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Ldpn;->a:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldot;

    iget-object v2, v2, Ldot;->e:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Ldou;->a(Ldpn;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v12

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    const-string v2, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    const-string v2, "_o"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldou;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v2

    const-string v3, "_r"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ldkb;->a(Ljava/lang/String;Ljava/lang/String;)Ldkj;

    move-result-object v2

    if-nez v2, :cond_6

    const-wide/16 v14, 0x0

    new-instance v3, Ldkj;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Ldkj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldkb;->a(Ldkj;)V

    move-wide v10, v14

    :goto_2
    new-instance v3, Ldki;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Ldki;-><init>(Ldlv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v6, Ldpi;

    invoke-direct {v6}, Ldpi;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ldpi;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->b:[Ldpi;

    iget-wide v4, v3, Ldki;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Ldpi;->c:Ljava/lang/Long;

    iget-object v2, v3, Ldki;->b:Ljava/lang/String;

    iput-object v2, v6, Ldpi;->b:Ljava/lang/String;

    iget-wide v4, v3, Ldki;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Ldpi;->d:Ljava/lang/Long;

    iget-object v2, v3, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->a()I

    move-result v2

    new-array v2, v2, [Ldpj;

    iput-object v2, v6, Ldpi;->a:[Ldpj;

    const/4 v2, 0x0

    iget-object v4, v3, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Ldpj;

    invoke-direct {v8}, Ldpj;-><init>()V

    iget-object v9, v6, Ldpi;->a:[Ldpj;

    add-int/lit8 v5, v4, 0x1

    aput-object v8, v9, v4

    iput-object v2, v8, Ldpj;->a:Ljava/lang/String;

    iget-object v4, v3, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzato;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Ldou;->a(Ldpj;Ljava/lang/Object;)V

    move v4, v5

    goto :goto_3

    :cond_6
    iget-wide v10, v2, Ldkj;->e:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    invoke-virtual {v2, v4, v5}, Ldkj;->a(J)Ldkj;

    move-result-object v2

    invoke-virtual {v2}, Ldkj;->a()Ldkj;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldkb;->a(Ldkj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v3

    invoke-virtual {v3}, Ldkb;->z()V

    throw v2

    :cond_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ldjw;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Ldpl;->c:[Ldpn;

    move-object/from16 v0, v17

    iget-object v4, v0, Ldpl;->b:[Ldpi;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ldlv;->a(Ljava/lang/String;[Ldpn;[Ldpi;)[Ldph;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->A:[Ldph;

    iget-object v2, v6, Ldpi;->c:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->e:Ljava/lang/Long;

    iget-object v2, v6, Ldpi;->c:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ldjw;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_4
    move-object/from16 v0, v17

    iput-object v4, v0, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ldjw;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_6
    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ldjw;->r()V

    invoke-virtual/range {v16 .. v16}, Ldjw;->o()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->w:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ldlv;->d()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->r:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ldlv;->t()Lcvo;

    move-result-object v2

    invoke-interface {v2}, Lcvo;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->d:Ljava/lang/Long;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Ldpl;->z:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iget-object v2, v0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ldjw;->a(J)V

    move-object/from16 v0, v17

    iget-object v2, v0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ldjw;->b(J)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ldkb;->a(Ldjw;)V

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ldlv;->p()Ldkb;

    move-result-object v2

    invoke-virtual {v2}, Ldkb;->z()V

    :try_start_4
    invoke-virtual {v13}, Ldpk;->g()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v2}, Ldqw;->a([B)Ldqw;

    move-result-object v3

    invoke-virtual {v13, v3}, Ldpk;->a(Ldqw;)V

    invoke-virtual {v3}, Ldqw;->b()V

    invoke-virtual/range {p0 .. p0}, Ldlv;->o()Ldou;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldou;->a([B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->x()Ldky;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-wide v2, v4

    goto/16 :goto_5
.end method

.method protected c()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlv;->p()Ldkb;

    move-result-object v0

    invoke-virtual {v0}, Ldkb;->E()V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->c:Ldlk;

    invoke-virtual {v0}, Ldlk;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->c:Ldlk;

    invoke-virtual {p0}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    :cond_0
    invoke-virtual {p0}, Ldlv;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ldlv;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ldou;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ldou;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    invoke-virtual {v0}, Ldgk;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Ldlm;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Ldog;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-direct {p0}, Ldlv;->Q()V

    return-void

    :cond_6
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v0

    invoke-virtual {v0}, Ldks;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v1

    invoke-virtual {v1}, Ldks;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldlh;->c(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v0

    invoke-virtual {v0}, Ldks;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ldlv;->l()Ldmw;

    move-result-object v0

    invoke-virtual {v0}, Ldmw;->z()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v1

    invoke-virtual {v1}, Ldks;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->D()V

    iget-object v0, p0, Ldlv;->r:Ldno;

    invoke-virtual {v0}, Ldno;->C()V

    iget-object v0, p0, Ldlv;->r:Ldno;

    invoke-virtual {v0}, Ldno;->A()V

    invoke-virtual {p0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {p0}, Ldlv;->x()Ldks;

    move-result-object v1

    invoke-virtual {v1}, Ldks;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldlh;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method c(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_et"

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method public d()Ldka;
    .locals 1

    iget-object v0, p0, Ldlv;->d:Ldka;

    return-object v0
.end method

.method d(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method public e()Ldlh;
    .locals 1

    iget-object v0, p0, Ldlv;->e:Ldlh;

    invoke-direct {p0, v0}, Ldlv;->a(Ldmt;)V

    iget-object v0, p0, Ldlv;->e:Ldlh;

    return-object v0
.end method

.method public f()Ldkw;
    .locals 1

    iget-object v0, p0, Ldlv;->f:Ldkw;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->f:Ldkw;

    return-object v0
.end method

.method public g()Ldkw;
    .locals 1

    iget-object v0, p0, Ldlv;->f:Ldkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldlv;->f:Ldkw;

    invoke-virtual {v0}, Ldkw;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldlv;->f:Ldkw;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ldlq;
    .locals 1

    iget-object v0, p0, Ldlv;->g:Ldlq;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->g:Ldlq;

    return-object v0
.end method

.method public i()Ldok;
    .locals 1

    iget-object v0, p0, Ldlv;->h:Ldok;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->h:Ldok;

    return-object v0
.end method

.method public j()Ldlp;
    .locals 1

    iget-object v0, p0, Ldlv;->i:Ldlp;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->i:Ldlp;

    return-object v0
.end method

.method k()Ldlq;
    .locals 1

    iget-object v0, p0, Ldlv;->g:Ldlq;

    return-object v0
.end method

.method public l()Ldmw;
    .locals 1

    iget-object v0, p0, Ldlv;->t:Ldmw;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->t:Ldmw;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Ldlv;->j:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public n()Leif;
    .locals 1

    iget-object v0, p0, Ldlv;->k:Leif;

    return-object v0
.end method

.method public o()Ldou;
    .locals 1

    iget-object v0, p0, Ldlv;->l:Ldou;

    invoke-direct {p0, v0}, Ldlv;->a(Ldmt;)V

    iget-object v0, p0, Ldlv;->l:Ldou;

    return-object v0
.end method

.method public p()Ldkb;
    .locals 1

    iget-object v0, p0, Ldlv;->m:Ldkb;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->m:Ldkb;

    return-object v0
.end method

.method public q()Ldkt;
    .locals 1

    iget-object v0, p0, Ldlv;->n:Ldkt;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->n:Ldkt;

    return-object v0
.end method

.method public r()Ldla;
    .locals 1

    iget-object v0, p0, Ldlv;->o:Ldla;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->o:Ldla;

    return-object v0
.end method

.method public s()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldlv;->c:Landroid/content/Context;

    return-object v0
.end method

.method public t()Lcvo;
    .locals 1

    iget-object v0, p0, Ldlv;->p:Lcvo;

    return-object v0
.end method

.method public u()Ldnk;
    .locals 1

    iget-object v0, p0, Ldlv;->q:Ldnk;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->q:Ldnk;

    return-object v0
.end method

.method public v()Ldno;
    .locals 1

    iget-object v0, p0, Ldlv;->r:Ldno;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->r:Ldno;

    return-object v0
.end method

.method public w()Ldkh;
    .locals 1

    iget-object v0, p0, Ldlv;->s:Ldkh;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->s:Ldkh;

    return-object v0
.end method

.method public x()Ldks;
    .locals 1

    iget-object v0, p0, Ldlv;->u:Ldks;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->u:Ldks;

    return-object v0
.end method

.method public y()Ldlf;
    .locals 2

    iget-object v0, p0, Ldlv;->v:Ldlf;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldlv;->v:Ldlf;

    return-object v0
.end method

.method public z()Ldoq;
    .locals 1

    iget-object v0, p0, Ldlv;->w:Ldoq;

    invoke-direct {p0, v0}, Ldlv;->b(Ldmu;)V

    iget-object v0, p0, Ldlv;->w:Ldoq;

    return-object v0
.end method
