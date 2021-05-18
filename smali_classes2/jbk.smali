.class public Ljbk;
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljbk;->a:Lgkw;

    .line 27
    iput-object p2, p0, Ljbk;->b:Landroid/app/Activity;

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbk;->c:Lmip;

    .line 29
    return-void
.end method

.method static synthetic a(Ljbk;)Lgkw;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ljbk;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Livb;

    invoke-direct {v0}, Livb;-><init>()V

    .line 33
    iget-object v1, p0, Ljbk;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livb;->setConnUuid(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Ljbk;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livb;->setTokenSessao(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Ljbk;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livb;->setTokenTransacao(Ljava/lang/String;)V

    .line 36
    const-string v1, "S"

    invoke-virtual {v0, v1}, Livb;->a(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljbx;

    new-instance v2, Ljbl;

    invoke-direct {v2, p0}, Ljbl;-><init>(Ljbk;)V

    iget-object v3, p0, Ljbk;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljbx;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Livb;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 43
    invoke-virtual {v1, v2}, Ljbx;->c([Ljava/lang/Object;)Lgne;

    .line 44
    return-void
.end method
