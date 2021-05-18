.class public Lgkq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lgkp;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lgkp;

    invoke-direct {v0}, Lgkp;-><init>()V

    .line 31
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgkp;->setConnUuid(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgkp;->setTokenSessao(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgkp;->setTokenTransacao(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public a(Lfoh;)V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lgks;

    invoke-direct {v0, p1}, Lgks;-><init>(Lfoh;)V

    .line 23
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lgkp;

    const/4 v2, 0x0

    invoke-direct {p0}, Lgkq;->a()Lgkp;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "OBTERTICKETCHAT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lfoh;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lnea;

    new-instance v1, Lgkr;

    invoke-direct {v1, p0, p1}, Lgkr;-><init>(Lgkq;Lfoh;)V

    invoke-direct {v0, v1}, Lnea;-><init>(Lgkw;)V

    .line 48
    invoke-virtual {v0}, Lnea;->a()V

    .line 49
    return-void
.end method
