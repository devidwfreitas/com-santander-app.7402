.class public Lneh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lneh;->a:Lgkw;

    .line 26
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lneh;->b:Lmip;

    .line 27
    return-void
.end method

.method static synthetic a(Lneh;)Lgkw;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lneh;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lnay;

    invoke-direct {v0}, Lnay;-><init>()V

    .line 31
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lneo;

    new-instance v2, Lnei;

    invoke-direct {v2, p0}, Lnei;-><init>(Lneh;)V

    invoke-direct {v1, v2}, Lneo;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnay;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 40
    invoke-virtual {v1, v2}, Lneo;->c([Ljava/lang/Object;)Lgne;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lnaw;

    invoke-direct {v0}, Lnaw;-><init>()V

    .line 45
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaw;->setConnUuid(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaw;->setTokenSessao(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lneh;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaw;->setTokenTransacao(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Lnaw;->a(Ljava/lang/String;)V

    .line 50
    new-instance v1, Lnek;

    new-instance v2, Lnej;

    invoke-direct {v2, p0}, Lnej;-><init>(Lneh;)V

    invoke-direct {v1, v2}, Lnek;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnaw;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 55
    invoke-virtual {v1, v2}, Lnek;->c([Ljava/lang/Object;)Lgne;

    .line 56
    return-void
.end method
