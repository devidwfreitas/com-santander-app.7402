.class public Lmnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmna;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Lmnb;

.field private d:Lmqc;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmnb;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lmnc;->b:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lmnc;->c:Lmnb;

    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmnc;->a:Lmip;

    .line 53
    new-instance v0, Lmqc;

    invoke-direct {v0, p1}, Lmqc;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmnc;->d:Lmqc;

    .line 54
    return-void
.end method

.method static synthetic a(Lmnc;)Lmqc;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmnc;->d:Lmqc;

    return-object v0
.end method

.method private b(Lcom/santander/app/contacorrente/domain/Conta;)Liq;
    .locals 6

    .prologue
    .line 170
    const-string v0, ""

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string v2, "accountIndex"

    iget-object v3, p0, Lmnc;->a:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->q()Lgvx;

    move-result-object v3

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lgvx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/listAllGrantee"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lmnc;)Lmnb;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmnc;->c:Lmnb;

    return-object v0
.end method

.method static synthetic c(Lmnc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmnc;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Lcom/santander/app/contacorrente/domain/Conta;)Lmku;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lmku;

    invoke-direct {v0}, Lmku;-><init>()V

    .line 187
    iget-object v1, p0, Lmnc;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmku;->setConnUuid(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lmnc;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmku;->setTokenSessao(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lmnc;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmku;->setTokenTransacao(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmku;->setAgencia(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmku;->setConta(Ljava/lang/String;)V

    .line 193
    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lmnc;->d:Lmqc;

    sget-object v0, Lmqc;->a:Lmkt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmnc;->d:Lmqc;

    sget-object v0, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmnc;->d:Lmqc;

    sget-object v0, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmnc;->d:Lmqc;

    sget-object v0, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 61
    invoke-virtual {v0, p1}, Lcom/santander/app/contacorrente/domain/Conta;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    :cond_0
    iget-object v0, p0, Lmnc;->d:Lmqc;

    sput-object v1, Lmqc;->a:Lmkt;

    .line 64
    iget-object v0, p0, Lmnc;->d:Lmqc;

    sput-object v1, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 66
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    iget-object v0, p0, Lmnc;->d:Lmqc;

    new-instance v1, Lmnd;

    invoke-direct {v1, p0, p1}, Lmnd;-><init>(Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 82
    invoke-direct {p0, p1}, Lmnc;->c(Lcom/santander/app/contacorrente/domain/Conta;)Lmku;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lmqc;->a(Lgkw;Lmku;)V

    .line 167
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lmnc;->d:Lmqc;

    new-instance v1, Lmne;

    invoke-direct {v1, p0, p1}, Lmne;-><init>(Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 161
    invoke-direct {p0, p1}, Lmnc;->b(Lcom/santander/app/contacorrente/domain/Conta;)Liq;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lmqc;->a(Lgkw;Liq;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lmnc;->c:Lmnb;

    iget-object v1, p0, Lmnc;->d:Lmqc;

    sget-object v1, Lmqc;->a:Lmkt;

    invoke-interface {v0, v1}, Lmnb;->a(Lmkt;)V

    goto :goto_0
.end method
