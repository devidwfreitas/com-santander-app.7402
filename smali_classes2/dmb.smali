.class public Ldmb;
.super Ldkq;


# instance fields
.field private final a:Ldlv;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldlv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldmb;-><init>(Ldlv;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ldlv;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ldkq;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldmb;->a:Ldlv;

    iput-object p2, p0, Ldmb;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ldmb;)Ldlv;
    .locals 1

    iget-object v0, p0, Ldmb;->a:Ldlv;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/internal/zzatd;Z)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ldmb;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldou;->h(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Measurement Service called without app package"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Measurement Service called without app package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ldmb;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Measurement Service called with invalid calling package. appId"

    invoke-static {p1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzatd;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzatd;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmi;

    invoke-direct {v1, p0, p1}, Ldmi;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    if-nez p2, :cond_1

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    invoke-static {v3}, Ldou;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzauq;-><init>(Ldot;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get user attributes. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzatd;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzatd;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmr;

    invoke-direct {v1, p0, p3, p1, p2}, Ldmr;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get conditional user properties"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
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
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldmb;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldms;

    invoke-direct {v1, p0, p1, p2, p3}, Ldms;-><init>(Ldmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get conditional user properties"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldmb;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmq;

    invoke-direct {v1, p0, p1, p2, p3}, Ldmq;-><init>(Ldmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    if-nez p4, :cond_1

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    invoke-static {v3}, Ldou;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzauq;-><init>(Ldot;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get user attributes. appId"

    invoke-static {p1}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzatd;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzatd;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmp;

    invoke-direct {v1, p0, p4, p1, p2}, Ldmp;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    if-nez p3, :cond_1

    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    invoke-static {v3}, Ldou;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzauq;-><init>(Ldot;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to get user attributes. appId"

    iget-object v3, p4, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmk;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Ldmk;-><init>(Ldmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzatd;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmj;

    invoke-direct {v1, p0, p1}, Ldmj;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzatg;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldmb;->b(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->h()Ldlq;

    move-result-object v1

    new-instance v2, Ldmn;

    invoke-direct {v2, p0, v0}, Ldmn;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->h()Ldlq;

    move-result-object v1

    new-instance v2, Ldmo;

    invoke-direct {v2, p0, v0}, Ldmo;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->h()Ldlq;

    move-result-object v1

    new-instance v2, Ldml;

    invoke-direct {v2, p0, v0, p2}, Ldml;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->h()Ldlq;

    move-result-object v1

    new-instance v2, Ldmm;

    invoke-direct {v2, p0, v0, p2}, Ldmm;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmd;

    invoke-direct {v1, p0, p1, p2}, Ldmd;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ldmb;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldme;

    invoke-direct {v1, p0, p1, p2}, Ldme;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmg;

    invoke-direct {v1, p0, p1, p2}, Ldmg;-><init>(Ldmb;Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmh;

    invoke-direct {v1, p0, p1, p2}, Ldmh;-><init>(Ldmb;Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p0, Ldmb;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms"

    iget-object v3, p0, Ldmb;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v0, v3}, Lcwi;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Lcww;

    move-result-object v0

    iget-object v3, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v3}, Ldlv;->s()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcww;->a(Landroid/content/pm/PackageManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldmb;->b:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Ldmb;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldmb;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v0, v3, p1}, Lcwv;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Ldmb;->c:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Ldmb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Unknown calling package name \'%s\'."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
    .locals 9
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const-wide/32 v4, 0xf4240

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ldmb;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->t()Lcvo;

    move-result-object v0

    invoke-interface {v0}, Lcvo;->c()J

    move-result-wide v0

    div-long v2, v0, v4

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmf;

    invoke-direct {v1, p0, p1, p2}, Ldmf;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldlq;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Log and bundle returned null. appId"

    invoke-static {p2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->c()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->C()Ldky;

    move-result-object v1

    const-string v6, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v8, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v1}, Ldlv;->f()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-static {p2}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/internal/zzatd;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    new-instance v1, Ldmc;

    invoke-direct {v1, p0, p1}, Ldmc;-><init>(Ldmb;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/zzatd;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldmb;->b(Lcom/google/android/gms/internal/zzatd;Z)V

    iget-object v0, p0, Ldmb;->a:Ldlv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldlv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
