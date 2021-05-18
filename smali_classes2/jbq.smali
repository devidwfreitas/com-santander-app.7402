.class public Ljbq;
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
    iput-object p1, p0, Ljbq;->a:Lgkw;

    .line 31
    iput-object p2, p0, Ljbq;->b:Landroid/app/Activity;

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbq;->c:Lmip;

    .line 33
    return-void
.end method

.method static synthetic a(Ljbq;)Lgkw;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljbq;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lnay;

    invoke-direct {v0}, Lnay;-><init>()V

    .line 71
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lneo;

    new-instance v2, Ljbt;

    invoke-direct {v2, p0}, Ljbt;-><init>(Ljbq;)V

    invoke-direct {v1, v2}, Lneo;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnay;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 80
    invoke-virtual {v1, v2}, Lneo;->c([Ljava/lang/Object;)Lgne;

    .line 81
    return-void
.end method

.method public a(Liuz;)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Livi;

    invoke-direct {v0}, Livi;-><init>()V

    .line 37
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setConnUuid(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setTokenSessao(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setTokenTransacao(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Liuz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->b(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Liuz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->c(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->a(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljby;

    new-instance v2, Ljbr;

    invoke-direct {v2, p0}, Ljbr;-><init>(Ljbq;)V

    iget-object v3, p0, Ljbq;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljby;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Livi;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 49
    invoke-virtual {v1, v2}, Ljby;->c([Ljava/lang/Object;)Lgne;

    .line 50
    return-void
.end method

.method public b(Liuz;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Livi;

    invoke-direct {v0}, Livi;-><init>()V

    .line 54
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setConnUuid(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setTokenSessao(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->setTokenTransacao(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Liuz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->b(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Liuz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->c(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Ljbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livi;->a(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljcb;

    new-instance v2, Ljbs;

    invoke-direct {v2, p0}, Ljbs;-><init>(Ljbq;)V

    iget-object v3, p0, Ljbq;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljcb;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Livi;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 66
    invoke-virtual {v1, v2}, Ljcb;->c([Ljava/lang/Object;)Lgne;

    .line 67
    return-void
.end method
