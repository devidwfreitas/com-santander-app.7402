.class public Ljbh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Landroid/app/Activity;

.field private c:Lmip;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ljbh;->a:Lgkw;

    .line 31
    iput-object p2, p0, Ljbh;->b:Landroid/app/Activity;

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbh;->c:Lmip;

    .line 33
    return-void
.end method

.method static synthetic a(Ljbh;)Lgkw;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljbh;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Livg;

    invoke-direct {v0}, Livg;-><init>()V

    .line 37
    iget-object v1, p0, Ljbh;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livg;->setConnUuid(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Ljbh;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livg;->setTokenSessao(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Ljbh;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livg;->setTokenTransacao(Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljca;

    new-instance v2, Ljbi;

    invoke-direct {v2, p0}, Ljbi;-><init>(Ljbh;)V

    iget-object v3, p0, Ljbh;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljca;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Livg;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 46
    invoke-virtual {v1, v2}, Ljca;->c([Ljava/lang/Object;)Lgne;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 51
    new-instance v1, Liuw;

    invoke-direct {v1}, Liuw;-><init>()V

    .line 52
    iget-object v0, p0, Ljbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuw;->setConnUuid(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Ljbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuw;->setTokenSessao(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Ljbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuw;->setTokenTransacao(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, p1}, Liuw;->a(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    new-instance v0, Ljbv;

    new-instance v2, Ljbj;

    invoke-direct {v2, p0}, Ljbj;-><init>(Ljbh;)V

    iget-object v3, p0, Ljbh;->b:Landroid/app/Activity;

    invoke-direct {v0, v2, v3}, Ljbv;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Liuw;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 68
    invoke-virtual {v0, v2}, Ljbv;->c([Ljava/lang/Object;)Lgne;

    .line 69
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "ERROR_ENCRYPT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
