.class public Ljcr;
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljcr;->a:Lgkw;

    .line 29
    iput-object p2, p0, Ljcr;->b:Landroid/app/Activity;

    .line 30
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljcr;->c:Lmip;

    .line 31
    return-void
.end method

.method static synthetic a(Ljcr;)Lgkw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ljcr;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljci;

    invoke-direct {v0}, Ljci;-><init>()V

    .line 36
    iget-object v1, p0, Ljcr;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljci;->setConnUuid(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Ljcr;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljci;->setTokenSessao(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Ljcr;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljci;->a(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljcu;

    new-instance v2, Ljcs;

    invoke-direct {v2, p0}, Ljcs;-><init>(Ljcr;)V

    iget-object v3, p0, Ljcr;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljcu;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljci;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 45
    invoke-virtual {v1, v2}, Ljcu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
