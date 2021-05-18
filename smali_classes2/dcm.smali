.class public Ldcm;
.super Ljava/lang/Object;

# interfaces
.implements Lday;
.implements Lddg;


# instance fields
.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lctn;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field final i:Ldce;

.field final j:Lddh;

.field private final k:Ljava/util/concurrent/locks/Lock;

.field private final l:Ljava/util/concurrent/locks/Condition;

.field private final m:Landroid/content/Context;

.field private final n:Lcwn;

.field private final o:Ldco;

.field private volatile p:Ldcl;

.field private q:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Lddh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldce;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcwn;",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;",
            "Lctn;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;",
            "Lddh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldcm;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Ldcm;->m:Landroid/content/Context;

    iput-object p3, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Ldcm;->n:Lcwn;

    iput-object p6, p0, Ldcm;->c:Ljava/util/Map;

    iput-object p7, p0, Ldcm;->e:Lctn;

    iput-object p8, p0, Ldcm;->f:Ljava/util/Map;

    iput-object p9, p0, Ldcm;->g:Lcpd;

    iput-object p2, p0, Ldcm;->i:Ldce;

    iput-object p11, p0, Ldcm;->j:Lddh;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldax;

    invoke-virtual {v0, p0}, Ldax;->a(Lday;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldco;

    invoke-direct {v0, p0, p4}, Ldco;-><init>(Ldcm;Landroid/os/Looper;)V

    iput-object v0, p0, Ldcm;->o:Ldco;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ldcd;

    invoke-direct {v0, p0}, Ldcd;-><init>(Ldcm;)V

    iput-object v0, p0, Ldcm;->p:Ldcl;

    return-void
.end method

.method static synthetic a(Ldcm;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Ldcm;)Ldcl;
    .locals 1

    iget-object v0, p0, Ldcm;->p:Ldcl;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldcm;->a()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Ldcm;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ldcm;->c()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldcm;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v1

    iget-object v0, p0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ldan;)Ldan;
    .locals 1
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "R::",
            "Lcqg;",
            "T:",
            "Ldan",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->j()V

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0, p1}, Ldcl;->a(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0}, Ldcl;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0, p1}, Ldcl;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0, p1}, Ldcl;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Ldcd;

    invoke-direct {v0, p0}, Ldcd;-><init>(Ldcm;)V

    iput-object v0, p0, Ldcm;->p:Ldcl;

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0}, Ldcl;->a()V

    iget-object v0, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0, p1, p2, p3}, Ldcl;->a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Ldcn;)V
    .locals 2

    iget-object v0, p0, Ldcm;->o:Ldco;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ldco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ldcm;->o:Ldco;

    invoke-virtual {v1, v0}, Ldco;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Ldcm;->o:Ldco;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ldco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ldcm;->o:Ldco;

    invoke-virtual {v1, v0}, Ldco;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Ldcm;->p:Ldcl;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Ldcm;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcox;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcox;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Ldcm;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcox;->c()Lcpf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0, v1, p2, p3, p4}, Lcph;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lddz;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldcm;->a()V

    :goto_0
    invoke-virtual {p0}, Ldcm;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldcm;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldcm;->q:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public b(Ldan;)Ldan;
    .locals 1
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->j()V

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0, p1}, Ldcl;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0}, Ldcl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ldcm;->p:Ldcl;

    instance-of v0, v0, Ldbp;

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Ldcm;->p:Ldcl;

    instance-of v0, v0, Ldbs;

    return v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Ldcm;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcm;->p:Ldcl;

    check-cast v0, Ldbp;

    invoke-virtual {v0}, Ldbp;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method h()V
    .locals 8

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Ldbs;

    iget-object v2, p0, Ldcm;->e:Lctn;

    iget-object v3, p0, Ldcm;->f:Ljava/util/Map;

    iget-object v4, p0, Ldcm;->n:Lcwn;

    iget-object v5, p0, Ldcm;->g:Lcpd;

    iget-object v6, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Ldcm;->m:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ldbs;-><init>(Ldcm;Lctn;Ljava/util/Map;Lcwn;Lcpd;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Ldcm;->p:Ldcl;

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0}, Ldcl;->a()V

    iget-object v0, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldcm;->i:Ldce;

    invoke-virtual {v0}, Ldce;->o()Z

    new-instance v0, Ldbp;

    invoke-direct {v0, p0}, Ldbp;-><init>(Ldcm;)V

    iput-object v0, p0, Ldcm;->p:Ldcl;

    iget-object v0, p0, Ldcm;->p:Ldcl;

    invoke-interface {v0}, Ldcl;->a()V

    iget-object v0, p0, Ldcm;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcm;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
