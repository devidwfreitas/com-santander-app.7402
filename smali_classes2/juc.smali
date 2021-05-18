.class public Ljuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljua;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Ljwj;

.field private d:Ljub;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljub;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljuc;->a:Lmip;

    .line 44
    iput-object p1, p0, Ljuc;->b:Landroid/app/Activity;

    .line 45
    new-instance v0, Ljwj;

    iget-object v1, p0, Ljuc;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljuc;->c:Ljwj;

    .line 46
    iput-object p2, p0, Ljuc;->d:Ljub;

    .line 47
    return-void
.end method

.method private a(Ljsz;)Ljsr;
    .locals 5

    .prologue
    .line 101
    new-instance v1, Ljsr;

    invoke-direct {v1}, Ljsr;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljsz;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljsz;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljsr;->p(Ljava/lang/String;)V

    .line 103
    const-string v0, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljsz;->a()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->k(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljsz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->g(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljsz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "S"

    :goto_1
    invoke-virtual {v1, v0}, Ljsr;->f(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljsz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "S"

    :goto_2
    invoke-virtual {v1, v0}, Ljsr;->m(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljsz;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "S"

    :goto_3
    invoke-virtual {v1, v0}, Ljsr;->i(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljsz;->getFields()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->a(Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {p1}, Ljsz;->getOsgData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->a(Ljava/util/HashMap;)V

    .line 112
    invoke-virtual {p1}, Ljsz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->h(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljsz;->i()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->j(Ljava/lang/String;)V

    .line 116
    return-object v1

    .line 102
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "N"

    goto :goto_1

    .line 106
    :cond_2
    const-string v0, "N"

    goto :goto_2

    .line 107
    :cond_3
    const-string v0, "N"

    goto :goto_3
.end method

.method static synthetic a(Ljuc;Ljsz;)Ljsr;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljuc;->a(Ljsz;)Ljsr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljuc;)Ljub;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljuc;->d:Ljub;

    return-object v0
.end method

.method static synthetic b(Ljuc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljuc;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljss;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljss;

    invoke-direct {v0}, Ljss;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Ljss;->d(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lnak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljss;->e(Ljava/lang/String;)V

    .line 124
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljss;->f(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Ljuc;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljss;->setTokenSessao(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Ljuc;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljss;->setConnUuid(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Ljuc;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljss;->setConta(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Ljuc;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljss;->setAgencia(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private c(Ljava/lang/String;)Liq;
    .locals 5

    .prologue
    .line 135
    const-string v0, ""

    .line 138
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v2, "barcode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "payment/v1/checkBarcode"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000121"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Ljuc;->c:Ljwj;

    new-instance v1, Ljud;

    invoke-direct {v1, p0}, Ljud;-><init>(Ljuc;)V

    .line 65
    invoke-direct {p0, p1}, Ljuc;->b(Ljava/lang/String;)Ljss;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Ljwj;->a(Lgkw;Ljss;)V

    .line 98
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Ljuc;->c:Ljwj;

    new-instance v1, Ljue;

    invoke-direct {v1, p0, p1}, Ljue;-><init>(Ljuc;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Ljuc;->c(Ljava/lang/String;)Liq;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Ljwj;->a(Lgkw;Liq;)V

    goto :goto_0
.end method
