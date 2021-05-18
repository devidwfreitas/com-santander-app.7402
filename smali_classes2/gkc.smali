.class public Lgkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgke;


# instance fields
.field private a:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgkc;->a:Lmip;

    .line 26
    return-void
.end method

.method private a()Lgkf;
    .locals 5

    .prologue
    .line 48
    new-instance v2, Lgkf;

    invoke-direct {v2}, Lgkf;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lgkf;->a(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lgkc;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 52
    new-instance v4, Lioz;

    invoke-direct {v4}, Lioz;-><init>()V

    .line 53
    invoke-virtual {v0}, Lghu;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lghu;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Lioz;->n(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lghu;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lghu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Lioz;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Lgkf;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 54
    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 59
    :cond_2
    iget-object v0, p0, Lgkc;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgkf;->setConnUuid(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lgkc;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgkf;->setTokenSessao(Ljava/lang/String;)V

    .line 62
    return-object v2
.end method

.method static synthetic a(Lgkc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgkc;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lioz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lgkc;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0, p1}, Lght;->b(Ljava/util/List;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a(Lfoh;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lgkc;->a()Lgkf;

    move-result-object v0

    .line 34
    new-instance v1, Lggr;

    new-instance v2, Lgkd;

    invoke-direct {v2, p0, p1}, Lgkd;-><init>(Lgkc;Lfoh;)V

    invoke-direct {v1, v2}, Lggr;-><init>(Lfoh;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgkf;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 43
    invoke-virtual {v1, v2}, Lggr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
