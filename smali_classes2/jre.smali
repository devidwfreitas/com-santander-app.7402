.class public Ljre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrd;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljra;

.field private c:Ljqe;

.field private d:Lmip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljra;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljre;->d:Lmip;

    .line 37
    iput-object p1, p0, Ljre;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Ljre;->b:Ljra;

    .line 39
    new-instance v0, Ljqf;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Ljqf;-><init>(Ljrd;Landroid/app/Activity;)V

    iput-object v0, p0, Ljre;->c:Ljqe;

    .line 40
    return-void
.end method

.method static synthetic a(Ljre;)Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljre;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljre;)Lmip;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljre;->d:Lmip;

    return-object v0
.end method

.method static synthetic c(Ljre;)Ljra;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljre;->b:Ljra;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Ljre;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 104
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljre;->d:Lmip;

    .line 105
    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljre;->d:Lmip;

    invoke-interface {v5}, Lmip;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->g()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {v4, v5}, Lnaq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljre;->b:Ljra;

    invoke-interface {v0}, Ljra;->a()V

    .line 45
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Ljre;->c:Ljqe;

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljqe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_0
    iget-object v0, p0, Ljre;->b:Ljra;

    if-eqz p2, :cond_1

    :goto_0
    invoke-interface {v0, v3, p2}, Ljra;->a(ZLjava/lang/String;)V

    .line 97
    :goto_1
    return-void

    .line 78
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lmzp;

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v1, v3

    new-instance v2, Ljrf;

    invoke-direct {v2, p0, p3, p4}, Ljrf;-><init>(Ljre;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljre;->b:Ljra;

    invoke-interface {v0, p1}, Ljra;->a(Z)V

    .line 58
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljre;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Ljre;->b:Ljra;

    invoke-interface {v0}, Ljra;->b()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljre;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ljre;->b:Ljra;

    invoke-interface {v0}, Ljra;->c()V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Ljre;->b:Ljra;

    invoke-interface {v0}, Ljra;->d()V

    goto :goto_0
.end method
