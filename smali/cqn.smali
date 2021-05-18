.class public abstract Lcqn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ldcq;

.field private final b:Landroid/content/Context;

.field private final c:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Ldth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldth",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcpt;

.field private final i:Lded;

.field private final j:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcox;Lcoy;Landroid/os/Looper;Lded;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcox",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lded;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcqq;

    invoke-direct {v0}, Lcqq;-><init>()V

    invoke-virtual {v0, p4}, Lcqq;->a(Landroid/os/Looper;)Lcqq;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcqq;->a(Lded;)Lcqq;

    move-result-object v0

    invoke-virtual {v0}, Lcqq;->a()Lcqp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcqn;-><init>(Landroid/app/Activity;Lcox;Lcoy;Lcqp;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcox;Lcoy;Lcqp;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcox",
            "<TO;>;TO;",
            "Lcqp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.createDefault() instead."

    invoke-static {p4, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcqn;->b:Landroid/content/Context;

    iput-object p2, p0, Lcqn;->c:Lcox;

    iput-object p3, p0, Lcqn;->d:Lcoy;

    iget-object v0, p4, Lcqp;->d:Landroid/os/Looper;

    iput-object v0, p0, Lcqn;->f:Landroid/os/Looper;

    iget-object v0, p0, Lcqn;->c:Lcox;

    iget-object v1, p0, Lcqn;->d:Lcoy;

    invoke-static {v0, v1}, Ldth;->a(Lcox;Lcoy;)Ldth;

    move-result-object v0

    iput-object v0, p0, Lcqn;->e:Ldth;

    new-instance v0, Ldcy;

    invoke-direct {v0, p0}, Ldcy;-><init>(Lcqn;)V

    iput-object v0, p0, Lcqn;->h:Lcpt;

    iget-object v0, p0, Lcqn;->b:Landroid/content/Context;

    invoke-static {v0}, Ldcq;->a(Landroid/content/Context;)Ldcq;

    move-result-object v0

    iput-object v0, p0, Lcqn;->a:Ldcq;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0}, Ldcq;->c()I

    move-result v0

    iput v0, p0, Lcqn;->g:I

    iget-object v0, p4, Lcqp;->b:Lded;

    iput-object v0, p0, Lcqn;->i:Lded;

    iget-object v0, p4, Lcqp;->c:Landroid/accounts/Account;

    iput-object v0, p0, Lcqn;->j:Landroid/accounts/Account;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    iget-object v1, p0, Lcqn;->e:Ldth;

    invoke-static {p1, v0, v1}, Ldbl;->a(Landroid/app/Activity;Ldcq;Ldth;)V

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0, p0}, Ldcq;->a(Lcqn;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcox;Lcoy;Lded;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcox",
            "<TO;>;TO;",
            "Lded;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcqq;

    invoke-direct {v0}, Lcqq;-><init>()V

    invoke-virtual {v0, p4}, Lcqq;->a(Lded;)Lcqq;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqq;->a(Landroid/os/Looper;)Lcqq;

    move-result-object v0

    invoke-virtual {v0}, Lcqq;->a()Lcqp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcqn;-><init>(Landroid/app/Activity;Lcox;Lcoy;Lcqp;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcox;Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcox",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcqn;->b:Landroid/content/Context;

    iput-object p2, p0, Lcqn;->c:Lcox;

    iput-object v1, p0, Lcqn;->d:Lcoy;

    iput-object p3, p0, Lcqn;->f:Landroid/os/Looper;

    invoke-static {p2}, Ldth;->a(Lcox;)Ldth;

    move-result-object v0

    iput-object v0, p0, Lcqn;->e:Ldth;

    new-instance v0, Ldcy;

    invoke-direct {v0, p0}, Ldcy;-><init>(Lcqn;)V

    iput-object v0, p0, Lcqn;->h:Lcpt;

    iget-object v0, p0, Lcqn;->b:Landroid/content/Context;

    invoke-static {v0}, Ldcq;->a(Landroid/content/Context;)Ldcq;

    move-result-object v0

    iput-object v0, p0, Lcqn;->a:Ldcq;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0}, Ldcq;->c()I

    move-result v0

    iput v0, p0, Lcqn;->g:I

    new-instance v0, Ldtg;

    invoke-direct {v0}, Ldtg;-><init>()V

    iput-object v0, p0, Lcqn;->i:Lded;

    iput-object v1, p0, Lcqn;->j:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcox;Lcoy;Landroid/os/Looper;Lded;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcox",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lded;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcqq;

    invoke-direct {v0}, Lcqq;-><init>()V

    invoke-virtual {v0, p4}, Lcqq;->a(Landroid/os/Looper;)Lcqq;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcqq;->a(Lded;)Lcqq;

    move-result-object v0

    invoke-virtual {v0}, Lcqq;->a()Lcqp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcqn;-><init>(Landroid/content/Context;Lcox;Lcoy;Lcqp;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcox;Lcoy;Lcqp;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcox",
            "<TO;>;TO;",
            "Lcqp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.createDefault() instead."

    invoke-static {p4, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcqn;->b:Landroid/content/Context;

    iput-object p2, p0, Lcqn;->c:Lcox;

    iput-object p3, p0, Lcqn;->d:Lcoy;

    iget-object v0, p4, Lcqp;->d:Landroid/os/Looper;

    iput-object v0, p0, Lcqn;->f:Landroid/os/Looper;

    iget-object v0, p0, Lcqn;->c:Lcox;

    iget-object v1, p0, Lcqn;->d:Lcoy;

    invoke-static {v0, v1}, Ldth;->a(Lcox;Lcoy;)Ldth;

    move-result-object v0

    iput-object v0, p0, Lcqn;->e:Ldth;

    new-instance v0, Ldcy;

    invoke-direct {v0, p0}, Ldcy;-><init>(Lcqn;)V

    iput-object v0, p0, Lcqn;->h:Lcpt;

    iget-object v0, p0, Lcqn;->b:Landroid/content/Context;

    invoke-static {v0}, Ldcq;->a(Landroid/content/Context;)Ldcq;

    move-result-object v0

    iput-object v0, p0, Lcqn;->a:Ldcq;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0}, Ldcq;->c()I

    move-result v0

    iput v0, p0, Lcqn;->g:I

    iget-object v0, p4, Lcqp;->b:Lded;

    iput-object v0, p0, Lcqn;->i:Lded;

    iget-object v0, p4, Lcqp;->c:Landroid/accounts/Account;

    iput-object v0, p0, Lcqn;->j:Landroid/accounts/Account;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0, p0}, Ldcq;->a(Lcqn;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcox;Lcoy;Lded;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcox",
            "<TO;>;TO;",
            "Lded;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcqq;

    invoke-direct {v0}, Lcqq;-><init>()V

    invoke-virtual {v0, p4}, Lcqq;->a(Lded;)Lcqq;

    move-result-object v0

    invoke-virtual {v0}, Lcqq;->a()Lcqp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcqn;-><init>(Landroid/content/Context;Lcox;Lcoy;Lcqp;)V

    return-void
.end method

.method private a(ILdan;)Ldan;
    .locals 1
    .param p2    # Ldan;
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
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Ldan;->j()V

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0, p0, p1, p2}, Ldcq;->a(Lcqn;ILdan;)V

    return-object p2
.end method

.method private a(ILdeh;)Legv;
    .locals 6
    .param p2    # Ldeh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcpe;",
            ">(I",
            "Ldeh",
            "<TA;TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v4, Legw;

    invoke-direct {v4}, Legw;-><init>()V

    iget-object v0, p0, Lcqn;->a:Ldcq;

    iget-object v5, p0, Lcqn;->i:Lded;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ldcq;->a(Lcqn;ILdeh;Legw;Lded;)V

    invoke-virtual {v4}, Legw;->a()Legv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcox",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcqn;->c:Lcox;

    return-object v0
.end method

.method public a(Landroid/os/Looper;Ldcs;)Lcph;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ldcs",
            "<TO;>;)",
            "Lcph;"
        }
    .end annotation

    new-instance v0, Lcpu;

    iget-object v1, p0, Lcqn;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcpu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcqn;->j:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcpu;->a(Landroid/accounts/Account;)Lcpu;

    move-result-object v0

    invoke-virtual {v0}, Lcpu;->b()Lctn;

    move-result-object v3

    iget-object v0, p0, Lcqn;->c:Lcox;

    invoke-virtual {v0}, Lcox;->b()Lcpd;

    move-result-object v0

    iget-object v1, p0, Lcqn;->b:Landroid/content/Context;

    iget-object v4, p0, Lcqn;->d:Lcoy;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcpd;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;

    move-result-object v0

    return-object v0
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
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lddn;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lddn",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcqn;->f:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lddr;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lddn;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Ldea;
    .locals 1

    new-instance v0, Ldea;

    invoke-direct {v0, p1, p2}, Ldea;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public a(Lddp;)Legv;
    .locals 1
    .param p1    # Lddp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddp",
            "<*>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0, p0, p1}, Ldcq;->a(Lcqn;Lddp;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lddv;Ldeq;)Legv;
    .locals 2
    .param p1    # Lddv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Lddv",
            "<TA;*>;U:",
            "Ldeq",
            "<TA;*>;>(TT;TU;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lddv;->a()Lddp;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ldeq;->a()Lddp;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lddv;->a()Lddp;

    move-result-object v0

    invoke-virtual {p2}, Ldeq;->a()Lddp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddp;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcqn;->a:Ldcq;

    invoke-virtual {v0, p0, p1, p2}, Ldcq;->a(Lcqn;Lddv;Ldeq;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldeh;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcpe;",
            ">(",
            "Ldeh",
            "<TA;TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdeh;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcoy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcqn;->d:Lcoy;

    return-object v0
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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldeh;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcpe;",
            ">(",
            "Ldeh",
            "<TA;TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdeh;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public c(Ldan;)Ldan;
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

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldth",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcqn;->e:Ldth;

    return-object v0
.end method

.method public c(Ldeh;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcpe;",
            ">(",
            "Ldeh",
            "<TA;TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcqn;->a(ILdeh;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcqn;->g:I

    return v0
.end method

.method public e()Lcpt;
    .locals 1

    iget-object v0, p0, Lcqn;->h:Lcpt;

    return-object v0
.end method

.method public f()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcqn;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcqn;->b:Landroid/content/Context;

    return-object v0
.end method
