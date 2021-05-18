.class public Ldmw;
.super Ldmu;


# instance fields
.field protected a:Ldnj;

.field private b:Legg;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Legh;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ldlv;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ldmw;->c:Ljava/util/Set;

    iput-object v1, p0, Ldmw;->e:Ljava/lang/String;

    iput-object v1, p0, Ldmw;->f:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Ldmw;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldmw;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private B()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    return-object v0
.end method

.method static synthetic a(Ldmw;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Ldmw;->d(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic a(Ldmw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ldmw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Ldmw;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldmw;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Ldmw;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->e()V

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldmw;->k()Ldno;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldno;->a(Lcom/google/android/gms/internal/zzauq;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v6

    new-instance v0, Ldnd;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Timed out waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v3, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v1, v3, p1, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    new-instance v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->e:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzatg;->f:Z

    iput-boolean v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->i:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzauq;->c:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->k:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
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

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v7

    new-instance v0, Ldne;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ldne;-><init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v3, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Ldmw;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Ldmw;->e(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldmw;->e()V

    invoke-virtual {p0}, Ldmw;->R()V

    iget-object v2, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v2}, Ldlv;->G()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Event not sent since app measurement is disabled"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Ldmw;->d:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Ldmw;->d:Z

    invoke-direct {p0}, Ldmw;->A()V

    :cond_2
    const-string v2, "am"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {p2}, Ldou;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_3

    iget-object v3, p0, Ldmw;->b:Legg;

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-nez v9, :cond_3

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, p2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Ldmw;->b:Legg;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Legg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v2}, Ldlv;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2, p2}, Ldou;->c(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->y()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, p2, v4, v5}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    iget-object v5, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v5}, Ldlv;->o()Ldou;

    move-result-object v5

    const-string v6, "_ev"

    invoke-virtual {v5, v3, v6, v4, v2}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const-string v2, "_o"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_o"

    invoke-static {v2}, Lcvp;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v3

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v3, p2, v0, v2, v1}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_sc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->V()Z

    invoke-virtual {p0}, Ldmw;->l()Ldnk;

    move-result-object v3

    invoke-virtual {v3}, Ldnk;->x()Ldnn;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v3, Ldnn;->a:Z

    :cond_6
    invoke-static {v3, v2}, Ldnk;->a(Legk;Landroid/os/Bundle;)V

    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldou;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v8, v2

    :goto_2
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Logging event (FE)"

    invoke-virtual {v2, v3, p2, v8}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v3, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0}, Ldmw;->k()Ldno;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Ldno;->a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    if-nez v9, :cond_0

    iget-object v2, p0, Ldmw;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Legh;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Legh;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_3

    :cond_8
    move-object v8, v2

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ldmw;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v0

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldnc;

    invoke-direct {v1, p0, v2}, Ldnc;-><init>(Ldmw;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Ldmw;->m()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->a()J

    move-result-wide v0

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldou;->e(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Invalid conditional user property name"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldou;->c(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Invalid conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldou;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Unable to normalize conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->M()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v4, "Invalid conditional user property timeout"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->N()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    cmp-long v1, v2, v6

    if-gez v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v4, "Invalid conditional user property time to live"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldnb;

    invoke-direct {v1, p0, p1}, Ldnb;-><init>(Ldmw;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private c(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldmw;->e()V

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldmw;->v()Ldlh;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldlh;->b(Z)V

    invoke-virtual {p0}, Ldmw;->k()Ldno;

    move-result-object v0

    invoke-virtual {v0}, Ldno;->y()V

    return-void
.end method

.method private d(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldmw;->e()V

    invoke-virtual/range {p0 .. p0}, Ldmw;->R()V

    invoke-static/range {p1 .. p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Ldmw;->n:Ldlv;

    invoke-virtual {v2}, Ldlv;->G()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldmw;->q()Ldou;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ldmw;->q()Ldou;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ldmw;->q()Ldou;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Ldmw;->k()Ldno;

    move-result-object v2

    invoke-virtual {v2, v4}, Ldno;->a(Lcom/google/android/gms/internal/zzatg;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private e(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldmw;->e()V

    invoke-virtual/range {p0 .. p0}, Ldmw;->R()V

    invoke-static/range {p1 .. p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ldmw;->n:Ldlv;

    invoke-virtual {v2}, Ldlv;->G()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->C()Ldky;

    move-result-object v2

    const-string v3, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldmw;->q()Ldou;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Ldmw;->k()Ldno;

    move-result-object v2

    invoke-virtual {v2, v4}, Ldno;->a(Lcom/google/android/gms/internal/zzatg;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldmw;->R()V

    invoke-virtual {p0}, Ldmw;->c()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldmw;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmw;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x7530

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ldmw;->c(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Ldmw;->f:Ljava/lang/String;

    iput-object v0, p0, Ldmw;->e:Ljava/lang/String;

    iget-object v0, p0, Ldmw;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0}, Ldmw;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->b()V

    invoke-direct {p0, p1, p2, p3}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
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

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->b()V

    invoke-direct {p0, p1, p2, p3, p4}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
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

    invoke-virtual {p0}, Ldmw;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 3

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldnf;

    invoke-direct {v1, p0, p1, p2}, Ldnf;-><init>(Ldmw;J)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 3

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldmw;->c()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldmw;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public a(Legg;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldmw;->e()V

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldmw;->b:Legg;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ldmw;->b:Legg;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Ldmw;->b:Legg;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Legh;)V
    .locals 2

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldmw;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "OnEventListener already registered"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "initialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldmw;->n()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 15

    if-eqz p5, :cond_0

    new-instance v8, Landroid/os/Bundle;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v13

    new-instance v2, Ldnh;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Ldnh;-><init>(Ldmw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v13, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldni;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Ldni;-><init>(Ldmw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ldmw;->c()V

    iget-object v0, p0, Ldmw;->b:Legg;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ldou;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 12

    invoke-virtual {p0}, Ldmw;->c()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v10}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    const/4 v4, 0x1

    invoke-virtual {p0}, Ldmw;->c()V

    iget-object v0, p0, Ldmw;->b:Legg;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ldou;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v1

    invoke-virtual {v1, p2}, Ldou;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->z()I

    move-result v3

    invoke-virtual {v2, p2, v3, v6}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v3, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v3}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ldou;->c(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v2

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->z()I

    move-result v3

    invoke-virtual {v2, p2, v3, v6}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    iget-object v3, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v3}, Ldlv;->o()Ldou;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Ldou;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ldmw;->q()Ldou;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ldou;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->b()V

    invoke-direct {p0, p1, p2, p3, p4}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-virtual {p0}, Ldmw;->R()V

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldmx;

    invoke-direct {v1, p0, p1}, Ldmx;-><init>(Ldmw;Z)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->K()I

    move-result v0

    return v0
.end method

.method public b(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v2, Ldmy;

    invoke-direct {v2, p0, v1, p1}, Ldmy;-><init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v0, v2}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Interrupted waiting for get user properties"

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method public b(J)V
    .locals 3

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldng;

    invoke-direct {v1, p0, p1, p2}, Ldng;-><init>(Ldmw;J)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ldmw;->b()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Ldmw;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ldmw;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ldmw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c(J)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v1

    invoke-virtual {v1}, Ldlq;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v1

    invoke-virtual {v1}, Ldlq;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Cannot retrieve app instance id from main thread"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v2

    new-instance v3, Ldna;

    invoke-direct {v3, p0, v1}, Ldna;-><init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Interrupted waiting for app instance id"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
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
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Ldmw;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldmw;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Ldmw;->a:Ldnj;

    if-nez v1, :cond_0

    new-instance v1, Ldnj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldnj;-><init>(Ldmw;Ldmx;)V

    iput-object v1, p0, Ldmw;->a:Ldnj;

    :cond_0
    iget-object v1, p0, Ldmw;->a:Ldnj;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Ldmw;->a:Ldnj;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public y()Legv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Legv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ldmw;->v()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Leha;->a(Ljava/lang/Object;)Legv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldmw;->t()Ldlq;

    move-result-object v0

    invoke-virtual {v0}, Ldlq;->z()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ldmz;

    invoke-direct {v1, p0}, Ldmz;-><init>(Ldmw;)V

    invoke-static {v0, v1}, Leha;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Legv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldmw;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    invoke-static {v0}, Leha;->a(Ljava/lang/Exception;)Legv;

    move-result-object v0

    goto :goto_0
.end method

.method public z()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldmw;->e()V

    invoke-virtual {p0}, Ldmw;->c()V

    invoke-virtual {p0}, Ldmw;->R()V

    iget-object v0, p0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldmw;->k()Ldno;

    move-result-object v0

    invoke-virtual {v0}, Ldno;->z()V

    invoke-virtual {p0}, Ldmw;->v()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldmw;->j()Ldkh;

    move-result-object v1

    invoke-virtual {v1}, Ldkh;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
