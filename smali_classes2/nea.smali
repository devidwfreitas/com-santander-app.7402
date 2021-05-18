.class public Lnea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnea;->a:Lgkw;

    .line 30
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnea;->b:Lmip;

    .line 31
    return-void
.end method

.method static synthetic a(Lnea;)Lgkw;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnea;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lnay;

    invoke-direct {v0}, Lnay;-><init>()V

    .line 35
    iget-object v1, p0, Lnea;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lnea;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lnea;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lneo;

    new-instance v2, Lneb;

    invoke-direct {v2, p0}, Lneb;-><init>(Lnea;)V

    invoke-direct {v1, v2}, Lneo;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnay;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 44
    invoke-virtual {v1, v2}, Lneo;->c([Ljava/lang/Object;)Lgne;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    const-string v0, "REFRESH"

    const-string v1, "init getNewTokenSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Lnay;

    invoke-direct {v1}, Lnay;-><init>()V

    .line 62
    iget-object v0, p0, Lnea;->b:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lnea;->b:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lnea;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 68
    :try_start_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 69
    const-class v2, Lnax;

    .line 70
    invoke-static {}, Lhas;->Z()Ljava/lang/String;

    move-result-object v3

    const-string v4, "generateToken"

    const-string v5, "return"

    .line 69
    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnax;

    .line 72
    iget-object v1, p0, Lnea;->a:Lgkw;

    invoke-interface {v1, v0}, Lgkw;->a(Ljava/lang/Object;)V

    .line 74
    const-string v1, "REFRESH"

    const-string v2, "FIM getNewTokenSync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Lnax;->getTokenTransacao()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method
