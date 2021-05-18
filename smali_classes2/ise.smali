.class public Lise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lisd;


# static fields
.field private static final a:Ljava/lang/String; = "LoginInteractorImpl"

.field private static final b:Ljava/lang/String; = "CheckVersionPrefs"

.field private static final c:Ljava/lang/String; = "count"


# instance fields
.field private d:Litf;

.field private e:Lism;

.field private f:Lmip;

.field private g:Litn;

.field private h:Lils;

.field private i:Lgwa;


# direct methods
.method public constructor <init>(Litf;Lism;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lise;->d:Litf;

    .line 87
    iput-object p2, p0, Lise;->e:Lism;

    .line 88
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lise;->f:Lmip;

    .line 89
    new-instance v0, Litp;

    invoke-virtual {p2}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Litp;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lise;->g:Litn;

    .line 90
    new-instance v0, Lils;

    invoke-virtual {p2}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lise;->h:Lils;

    .line 91
    new-instance v0, Lgwe;

    invoke-direct {v0}, Lgwe;-><init>()V

    iput-object v0, p0, Lise;->i:Lgwa;

    .line 92
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;
    .locals 5

    .prologue
    .line 473
    new-instance v2, Lnaf;

    invoke-direct {v2}, Lnaf;-><init>()V

    .line 474
    const/4 v1, 0x0

    .line 477
    :try_start_0
    new-instance v0, Lilo;

    invoke-direct {v0}, Lilo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :try_start_1
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->setConnUuid(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->setTokenSessao(Ljava/lang/String;)V

    .line 482
    if-eqz p6, :cond_3

    .line 484
    invoke-virtual {p6}, Lmzl;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {p6}, Lmzl;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->a(Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-virtual {p6}, Lmzl;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    invoke-virtual {p6}, Lmzl;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->b(Ljava/lang/String;)V

    .line 490
    :cond_1
    invoke-virtual {p6}, Lmzl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    invoke-virtual {p6}, Lmzl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->e(Ljava/lang/String;)V

    .line 493
    :cond_2
    invoke-virtual {p6}, Lmzl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    invoke-virtual {p6}, Lmzl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->f(Ljava/lang/String;)V

    .line 497
    :cond_3
    invoke-virtual {v0, p1}, Lilo;->c(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p2}, Lilo;->d(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p3}, Lilo;->i(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p4}, Lilo;->h(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p5}, Lilo;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    :goto_0
    return-object v0

    .line 503
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 504
    :goto_1
    const-string v2, "ERRO_CRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v2, "Outros_Geolocalizacao_TentouEnviarGeo_Erro"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 695
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-static {p1, p2, p3}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lise;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->g()V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 702
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    return-void

    .line 705
    :cond_1
    invoke-static {p1, p3}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 707
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    .line 708
    invoke-virtual {v0}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 709
    invoke-static {p1, v0}, Lgyy;->a(Landroid/content/Context;Lgyv;)V

    goto :goto_0
.end method

.method static synthetic b(Lise;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->h()V

    return-void
.end method

.method static synthetic c(Lise;)Litf;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lise;->d:Litf;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 212
    :try_start_0
    invoke-static {p1}, Lnai;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lise;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lise;)Lmip;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lise;->f:Lmip;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lise;->b()V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic f(Lise;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->j()V

    return-void
.end method

.method static synthetic g(Lise;)Lgwa;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lise;->i:Lgwa;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lise;->g:Litn;

    new-instance v1, Lisg;

    invoke-direct {v1, p0}, Lisg;-><init>(Lise;)V

    invoke-interface {v0, v1}, Litn;->a(Lito;)V

    .line 181
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->y()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CheckVersionPrefs"

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    return-void
.end method

.method static synthetic h(Lise;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->k()V

    return-void
.end method

.method static synthetic i(Lise;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->l()V

    return-void
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lise;->d:Litf;

    invoke-interface {v2}, Litf;->y()Landroid/content/Context;

    move-result-object v2

    const-string v3, "CheckVersionPrefs"

    .line 191
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 193
    const-string v3, "count"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 196
    if-ne v3, v0, :cond_0

    .line 203
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "count"

    .line 204
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return v0

    .line 200
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method static synthetic j(Lise;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lise;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 310
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v2, "VGUN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string v0, "UN"

    .line 323
    :cond_0
    iget-object v2, p0, Lise;->f:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    const-string v0, "NC0"

    .line 327
    :cond_1
    const-string v2, "segmento"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 331
    if-eqz v0, :cond_2

    .line 332
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhau;->d(Ljava/lang/Boolean;)V

    .line 335
    :cond_2
    invoke-direct {p0}, Lise;->m()V

    .line 339
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    .line 340
    new-instance v1, Lisi;

    invoke-direct {v1, p0}, Lisi;-><init>(Lise;)V

    invoke-virtual {v0, v1}, Lgnz;->a(Lih;)V

    .line 364
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lise;->i:Lgwa;

    new-instance v1, Lisj;

    invoke-direct {v1, p0}, Lisj;-><init>(Lise;)V

    invoke-interface {v0, v1}, Lgwa;->a(Lgwd;)V

    .line 393
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 397
    const-string v0, "Login"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->g()V

    .line 401
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->t()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->j()V

    .line 414
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_0
    invoke-direct {p0}, Lise;->p()V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 417
    const-string v0, ""

    .line 418
    new-instance v1, Ljqc;

    invoke-direct {v1}, Ljqc;-><init>()V

    .line 419
    iget-object v2, p0, Lise;->f:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->l()Lmwx;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_5

    .line 421
    invoke-virtual {v1, v2}, Ljqc;->a(Lmwx;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 422
    invoke-virtual {v1, v2}, Ljqc;->b(Lmwx;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    const-string v0, "sta01"

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x3

    aget-char v1, v1, v2

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x4

    aget-char v0, v0, v1

    .line 439
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 440
    :cond_1
    const-string v0, "CSO/ID Ativado"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_1
    const-string v1, "Modo de Login"

    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Consultivo"

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "Correntista"

    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Nao"

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 424
    :cond_2
    invoke-virtual {v1, v2}, Ljqc;->c(Lmwx;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    const-string v0, "sta10"

    goto :goto_0

    .line 426
    :cond_3
    invoke-virtual {v1, v2}, Ljqc;->d(Lmwx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v0, "sta10"

    goto :goto_0

    .line 430
    :cond_4
    const-string v0, "sta11"

    goto :goto_0

    .line 433
    :cond_5
    const-string v0, "sta00"

    goto :goto_0

    .line 442
    :cond_6
    const-string v0, "CSO/ID Ativado"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_7
    const-string v0, "Transacional"

    goto :goto_2

    .line 446
    :cond_8
    const-string v0, "Sim"

    goto :goto_3
.end method

.method private n()Ljava/lang/String;
    .locals 5

    .prologue
    .line 525
    iget-object v0, p0, Lise;->g:Litn;

    invoke-interface {v0}, Litn;->b()Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :try_start_0
    invoke-static {v1}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-object v0

    .line 537
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 538
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->t()V

    .line 548
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lise;->q()V

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->v()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 567
    sget-object v0, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->x()V

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0}, Lise;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->w()V

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p0}, Lise;->e()V

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    .line 580
    new-instance v0, Lieu;

    iget-object v1, p0, Lise;->d:Litf;

    invoke-interface {v1}, Litf;->y()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v0}, Lieu;->a()Z

    move-result v0

    return v0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 688
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 689
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/Boolean;)V

    .line 690
    iget-object v0, p0, Lise;->f:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->k(Z)V

    .line 691
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lise;->g:Litn;

    invoke-interface {v0}, Litn;->c()V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lise;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->b()V

    .line 157
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Lfnx;

    invoke-direct {v1}, Lfnx;-><init>()V

    .line 124
    invoke-virtual {v1, p1}, Lfnx;->a(Ljava/lang/String;)V

    .line 127
    :try_start_0
    const-string v0, "ID MBB NA"

    new-instance v2, Lnaf;

    invoke-direct {v2}, Lnaf;-><init>()V

    invoke-virtual {v2, p1}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_1
    :try_start_1
    new-instance v0, Lfnu;

    const-class v2, Lfnp;

    invoke-direct {v0, v2}, Lfnu;-><init>(Ljava/lang/Class;)V

    .line 137
    iget-object v2, p0, Lise;->e:Lism;

    invoke-virtual {v2}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lise;->e:Lism;

    invoke-virtual {v3}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lisf;

    invoke-direct {v4, p0}, Lisf;-><init>(Lise;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lfnv;->a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    :goto_2
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->p()V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    const-string v2, "ID_MBB_NA_ERROR"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :catch_2
    move-exception v0

    .line 152
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 458
    new-instance v0, Lmzk;

    iget-object v1, p0, Lise;->e:Lism;

    invoke-virtual {v1}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmzk;->a()Lmzl;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 459
    invoke-direct/range {v0 .. v6}, Lise;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lilo;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lise;->h:Lils;

    new-instance v2, Lisk;

    invoke-direct {v2, p0}, Lisk;-><init>(Lise;)V

    invoke-virtual {v1, v2, v0}, Lils;->a(Lgkw;Lilo;)V

    .line 469
    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lise;->g:Litn;

    invoke-interface {v0, p2}, Litn;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 453
    iget-object v1, p0, Lise;->d:Litf;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Litf;->b(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lise;->g:Litn;

    new-instance v1, Lish;

    invoke-direct {v1, p0}, Lish;-><init>(Lise;)V

    invoke-interface {v0, v1, p1}, Litn;->a(Lgkw;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->i()V

    .line 514
    iget-object v0, p0, Lise;->g:Litn;

    new-instance v1, Lisl;

    invoke-direct {v1, p0}, Lisl;-><init>(Lise;)V

    invoke-interface {v0, v1}, Litn;->a(Lgkw;)V

    .line 522
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->e()V

    .line 553
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    new-instance v0, Lnba;

    iget-object v1, p0, Lise;->f:Lmip;

    .line 588
    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    iget-object v2, p0, Lise;->d:Litf;

    invoke-interface {v2}, Litf;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnba;-><init>(Lmwy;Landroid/content/Context;)V

    .line 590
    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1, v3}, Lmip;->k(Z)V

    .line 592
    invoke-virtual {v0}, Lnba;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 593
    invoke-virtual {v0}, Lnba;->h()Z

    move-result v1

    if-nez v1, :cond_e

    .line 594
    invoke-virtual {v0}, Lnba;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    .line 596
    invoke-virtual {v0}, Lnba;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->d(Ljava/lang/Boolean;)V

    .line 599
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->z()V

    .line 683
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {v0}, Lnba;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->x()V

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v0}, Lnba;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 608
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->A()V

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v0}, Lnba;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Live;->a(Ljava/lang/Boolean;)V

    .line 613
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->B()V

    goto :goto_0

    .line 615
    :cond_3
    invoke-virtual {v0}, Lnba;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->C()V

    goto/16 :goto_0

    .line 619
    :cond_4
    invoke-virtual {v0}, Lnba;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 620
    const-string v0, "Outros_ExecOtimizacao"

    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->D()V

    goto/16 :goto_0

    .line 624
    :cond_5
    invoke-virtual {v0}, Lnba;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 625
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->E()V

    goto/16 :goto_0

    .line 628
    :cond_6
    invoke-virtual {v0}, Lnba;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 629
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->F()V

    goto/16 :goto_0

    .line 632
    :cond_7
    invoke-virtual {v0}, Lnba;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 633
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->G()V

    goto/16 :goto_0

    .line 636
    :cond_8
    invoke-virtual {v0}, Lnba;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 637
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lise;->d:Litf;

    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Lmwx;)V

    goto/16 :goto_0

    .line 640
    :cond_9
    invoke-virtual {v0}, Lnba;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 641
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->H()V

    goto/16 :goto_0

    .line 644
    :cond_a
    invoke-virtual {v0}, Lnba;->o()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 645
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->e(Ljava/lang/Boolean;)V

    .line 647
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->I()V

    goto/16 :goto_0

    .line 649
    :cond_b
    invoke-virtual {v0}, Lnba;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 650
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 652
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->J()V

    goto/16 :goto_0

    .line 654
    :cond_c
    invoke-virtual {v0}, Lnba;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 655
    invoke-direct {p0}, Lise;->s()V

    .line 656
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->k()V

    goto/16 :goto_0

    .line 658
    :cond_d
    invoke-direct {p0}, Lise;->s()V

    .line 659
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->k()V

    goto/16 :goto_0

    .line 662
    :cond_e
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0, v4}, Lmip;->k(Z)V

    .line 663
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lise;->f:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lise;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lise;->f:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lise;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->k()V

    goto/16 :goto_0

    .line 671
    :cond_f
    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lmir;->e(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lise;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmwy;->d(Ljava/lang/Boolean;)V

    .line 674
    invoke-virtual {v0}, Lnba;->t()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 675
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->z()V

    .line 680
    :goto_1
    iget-object v0, p0, Lise;->d:Litf;

    invoke-interface {v0}, Litf;->k()V

    goto/16 :goto_0

    .line 677
    :cond_10
    iget-object v0, p0, Lise;->f:Lmip;

    invoke-interface {v0, v4}, Lmip;->k(Z)V

    goto :goto_1
.end method
