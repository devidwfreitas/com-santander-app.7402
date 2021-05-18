.class public Lmlw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmlu;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmlv;

.field private c:Lmqc;

.field private d:Lmiq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmlv;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lmlw;->a:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lmlw;->b:Lmlv;

    .line 56
    new-instance v0, Lmqc;

    invoke-direct {v0, p1}, Lmqc;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmlw;->c:Lmqc;

    .line 57
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmlw;->d:Lmiq;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Liq;
    .locals 5

    .prologue
    .line 262
    const-string v0, ""

    .line 265
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    const-string v2, "branch"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "account"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/validateBranchAndAccount"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lmkw;I)Liq;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 329
    const-string v10, ""

    .line 330
    new-instance v11, Lmln;

    invoke-direct {v11}, Lmln;-><init>()V

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Lmln;->a(Ljava/lang/Integer;)V

    .line 333
    new-instance v0, Lmlg;

    new-instance v1, Lmkr;

    .line 335
    invoke-virtual {p1}, Lmkw;->c()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {p1}, Lmkw;->l()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {p1}, Lmkw;->n()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lmkr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lmkw;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    invoke-virtual {p1}, Lmkw;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmkw;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {p1}, Lmkw;->h()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual {p1}, Lmkw;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-virtual {p1}, Lmkw;->g()Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-virtual {p1}, Lmkw;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ge v8, v9, :cond_0

    const-string v8, "1"

    :goto_0
    move v9, v4

    invoke-direct/range {v0 .. v9}, Lmlg;-><init>(Lmkr;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    invoke-virtual {v11, v0}, Lmln;->a(Lmlg;)V

    .line 348
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->b()Lejm;

    move-result-object v1

    invoke-virtual {v1, v11}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    :goto_1
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/validateAccounts"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    const-string v8, "2"

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_1
.end method

.method static synthetic a(Lmlw;Lmkw;I)Liq;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lmlw;->a(Lmkw;I)Liq;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmlt;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 369
    new-instance v0, Lmlt;

    invoke-direct {v0}, Lmlt;-><init>()V

    .line 370
    invoke-static {p3, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlt;->a(Ljava/lang/String;)V

    .line 371
    invoke-static {p2, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlt;->b(Ljava/lang/String;)V

    .line 372
    invoke-static {p1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlt;->c(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlt;->setConnUuid(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlt;->setTokenSessao(Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method static synthetic a(Lmlw;)Lmlv;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmlw;->b:Lmlv;

    return-object v0
.end method

.method static synthetic b(Lmlw;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmlw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lmlt;
    .locals 4

    .prologue
    .line 356
    new-instance v1, Lmlt;

    invoke-direct {v1}, Lmlt;-><init>()V

    .line 357
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlt;->a(Ljava/lang/String;)V

    .line 358
    const/16 v0, 0xc

    invoke-static {p2, v0}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlt;->setConta(Ljava/lang/String;)V

    .line 359
    const-string v0, "6"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "P"

    :goto_0
    invoke-virtual {v1, v0}, Lmlt;->d(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlt;->setConnUuid(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlt;->setTokenSessao(Ljava/lang/String;)V

    .line 362
    const-string v0, "0033"

    invoke-virtual {v1, v0}, Lmlt;->c(Ljava/lang/String;)V

    .line 365
    return-object v1

    .line 359
    :cond_0
    const-string v0, "C"

    goto :goto_0
.end method

.method private c()Lmlj;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lmlj;

    invoke-direct {v0}, Lmlj;-><init>()V

    .line 182
    iget-object v1, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setConnUuid(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lmlw;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setTokenSessao(Ljava/lang/String;)V

    .line 185
    return-object v0
.end method

.method static synthetic c(Lmlw;)Lmqc;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmlw;->c:Lmqc;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
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

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmlx;

    invoke-direct {v1, p0}, Lmlx;-><init>(Lmlw;)V

    invoke-virtual {v0, v1}, Lmqc;->a(Lgkw;)V

    .line 124
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmly;

    invoke-direct {v1, p0}, Lmly;-><init>(Lmlw;)V

    invoke-virtual {v0, v1}, Lmqc;->b(Lgkw;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmkw;I)V
    .locals 3

    .prologue
    .line 279
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

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmme;

    invoke-direct {v1, p0}, Lmme;-><init>(Lmlw;)V

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lmlw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmlt;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, v2}, Lmqc;->b(Lgkw;Lmlt;)V

    .line 326
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmmf;

    invoke-direct {v1, p0}, Lmmf;-><init>(Lmlw;)V

    .line 324
    invoke-direct {p0, p4, p5}, Lmlw;->a(Lmkw;I)Liq;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v1, v2}, Lmqc;->c(Lgkw;Liq;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lmkw;I)V
    .locals 3

    .prologue
    .line 190
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

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmmb;

    invoke-direct {v1, p0}, Lmmb;-><init>(Lmlw;)V

    .line 205
    invoke-direct {p0, p1, p2}, Lmlw;->b(Ljava/lang/String;Ljava/lang/String;)Lmlt;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lmqc;->a(Lgkw;Lmlt;)V

    .line 259
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmmc;

    invoke-direct {v1, p0, p3, p4}, Lmmc;-><init>(Lmlw;Lmkw;I)V

    .line 257
    invoke-direct {p0, p1, p2}, Lmlw;->a(Ljava/lang/String;Ljava/lang/String;)Liq;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Lmqc;->b(Lgkw;Liq;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 128
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

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmlz;

    invoke-direct {v1, p0}, Lmlz;-><init>(Lmlw;)V

    .line 138
    invoke-direct {p0}, Lmlw;->c()Lmlj;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lmqc;->a(Lgkw;Lmlj;)V

    .line 178
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lmlw;->c:Lmqc;

    new-instance v1, Lmma;

    invoke-direct {v1, p0}, Lmma;-><init>(Lmlw;)V

    invoke-virtual {v0, v1}, Lmqc;->c(Lgkw;)V

    goto :goto_0
.end method
