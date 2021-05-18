.class public Ljrg;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljrg;->a:Lgkw;

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljrg;->c:Lmip;

    .line 29
    iput-object p2, p0, Ljrg;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method static synthetic a(Ljrg;)Lgkw;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljrg;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljqb;

    invoke-direct {v0}, Ljqb;-><init>()V

    .line 34
    iget-object v1, p0, Ljrg;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqb;->setConnUuid(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Ljrg;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqb;->setTokenSessao(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Ljrg;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqb;->setTokenTransacao(Ljava/lang/String;)V

    .line 39
    :try_start_0
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 41
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljqb;->a(Ljava/lang/String;)V

    .line 42
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqb;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    new-instance v1, Ljri;

    new-instance v2, Ljrh;

    invoke-direct {v2, p0}, Ljrh;-><init>(Ljrg;)V

    iget-object v3, p0, Ljrg;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljri;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljqb;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 54
    invoke-virtual {v1, v2}, Ljri;->c([Ljava/lang/Object;)Lgne;

    .line 55
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqb;->a(Ljava/lang/String;)V

    .line 45
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqb;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
