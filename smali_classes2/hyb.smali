.class public Lhyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhya;


# static fields
.field private static final a:Ljava/lang/String; = "EmpElegibilidadeService"

.field private static b:Lhyb;


# instance fields
.field private c:Lmip;

.field private d:Lhxo;

.field private e:Lhqa;

.field private f:Lhgc;

.field private g:Lhwo;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhyb;->c:Lmip;

    .line 67
    new-instance v0, Lhqd;

    invoke-direct {v0}, Lhqd;-><init>()V

    iput-object v0, p0, Lhyb;->e:Lhqa;

    .line 68
    invoke-static {}, Lhgh;->f()Lhgh;

    move-result-object v0

    iput-object v0, p0, Lhyb;->f:Lhgc;

    .line 69
    new-instance v0, Lhwu;

    invoke-direct {v0}, Lhwu;-><init>()V

    iput-object v0, p0, Lhyb;->g:Lhwo;

    .line 70
    iget-object v0, p0, Lhyb;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v1

    iput-object v1, p0, Lhyb;->d:Lhxo;

    .line 72
    iget-object v1, p0, Lhyb;->d:Lhxo;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lhxo;

    invoke-direct {v1}, Lhxo;-><init>()V

    iput-object v1, p0, Lhyb;->d:Lhxo;

    invoke-interface {v0, v1}, Lhkr;->a(Lhxo;)V

    .line 75
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhyb;->h:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method private a(Lhxk;Lhyq;Z)Lhxk;
    .locals 1
    .param p1    # Lhxk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance p1, Lhxk;

    invoke-direct {p1}, Lhxk;-><init>()V

    .line 431
    :cond_0
    if-eqz p3, :cond_1

    .line 432
    const-string v0, "S"

    invoke-virtual {p1, v0}, Lhxk;->c(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Lhyq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhxk;->a(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Lhyq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhxk;->b(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Lhyq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhxk;->d(Ljava/lang/String;)V

    .line 439
    :goto_0
    return-object p1

    .line 437
    :cond_1
    const-string v0, "N"

    invoke-virtual {p1, v0}, Lhxk;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhyb;Lhxk;Lhyq;Z)Lhxk;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lhyb;->a(Lhxk;Lhyq;Z)Lhxk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhyb;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhyb;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lhxy;)V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x3

    .line 131
    invoke-virtual {p0, v0}, Lhyb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {p0}, Lhyb;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Lhxy;->a(I)V

    .line 230
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lhyb;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lhyb;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    :cond_1
    invoke-interface {p1, v0}, Lhxy;->a(I)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lhyb;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lhyb;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    :cond_3
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lhxy;->a(I)V

    goto :goto_0

    .line 140
    :cond_4
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 145
    :cond_5
    new-instance v0, Lhyd;

    invoke-direct {v0, p0, p1}, Lhyd;-><init>(Lhyb;Lhxy;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lhyb;->a(Lhxy;Z)V

    goto :goto_0
.end method

.method private a(Lhxy;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {p0}, Lhyb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 331
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lhyb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lhxy;->a(I)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lhyb;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lhxy;->a(I)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lhyb;->f:Lhgc;

    new-instance v1, Lhyk;

    invoke-direct {v1, p0, p1, p2}, Lhyk;-><init>(Lhyb;Lhxy;Z)V

    invoke-interface {v0, v1}, Lhgc;->a(Lhgf;)V

    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->j()V

    .line 325
    if-eqz p2, :cond_5

    .line 326
    invoke-direct {p0, p1}, Lhyb;->d(Lhxy;)V

    goto :goto_0

    .line 328
    :cond_5
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lhyb;->c(Lhxy;)V

    return-void
.end method

.method static synthetic b(Lhyb;)Lhxo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhyb;->d:Lhxo;

    return-object v0
.end method

.method private b(ILhxy;)Lhxy;
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 109
    new-instance v0, Lhyc;

    invoke-direct {v0, p0, p1, p2}, Lhyc;-><init>(Lhyb;ILhxy;)V

    return-object v0
.end method

.method private b(Lhxy;)V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lhyb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 261
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 242
    :cond_1
    new-instance v0, Lhxx;

    new-instance v1, Lhyi;

    invoke-direct {v1, p0, p1}, Lhyi;-><init>(Lhyb;Lhxy;)V

    invoke-direct {v0, v1}, Lhxx;-><init>(Lgkv;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 260
    invoke-virtual {v0, v1, v2}, Lhxx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lhyb;->d(Lhxy;)V

    return-void
.end method

.method private c(Lhxy;)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 264
    .line 265
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lhyb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lhyb;->e:Lhqa;

    new-instance v1, Lhyj;

    invoke-direct {v1, p0, p1}, Lhyj;-><init>(Lhyb;Lhxy;)V

    invoke-interface {v0, v1}, Lhqa;->a(Lhqb;)V

    goto :goto_0
.end method

.method static synthetic c(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lhyb;->b(Lhxy;)V

    return-void
.end method

.method private d(Lhxy;)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 334
    .line 335
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lhyb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 369
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lhyb;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lhxy;->a(I)V

    goto :goto_0

    .line 341
    :cond_1
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lhyb;->g:Lhwo;

    new-instance v1, Lhyl;

    invoke-direct {v1, p0, p1}, Lhyl;-><init>(Lhyb;Lhxy;)V

    invoke-interface {v0, v1}, Lhwo;->a(Lhwt;)V

    goto :goto_0
.end method

.method private e(Lhxy;)V
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 372
    .line 373
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lhyb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 397
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 381
    :cond_1
    new-instance v0, Lhxz;

    new-instance v1, Lhym;

    invoke-direct {v1, p0, p1}, Lhym;-><init>(Lhyb;Lhxy;)V

    invoke-direct {v0, v1}, Lhxz;-><init>(Lgkv;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 396
    invoke-virtual {v0, v1, v2}, Lhxz;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private f(Lhxy;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 400
    .line 401
    invoke-virtual {p0, v1}, Lhyb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lhyb;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {p1, v1}, Lhxy;->a(I)V

    .line 425
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-interface {p1}, Lhxy;->a()V

    goto :goto_0

    .line 409
    :cond_1
    new-instance v0, Lhyo;

    new-instance v1, Lhyn;

    invoke-direct {v1, p0, p1}, Lhyn;-><init>(Lhyb;Lhxy;)V

    invoke-direct {v0, v1}, Lhyo;-><init>(Lgkv;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 424
    invoke-virtual {v0, v1, v2}, Lhyo;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lhyb;->b:Lhyb;

    .line 56
    return-void
.end method

.method public static j()Lhya;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lhyb;->b:Lhyb;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lhyb;

    invoke-direct {v0}, Lhyb;-><init>()V

    sput-object v0, Lhyb;->b:Lhyb;

    .line 62
    :cond_0
    sget-object v0, Lhyb;->b:Lhyb;

    return-object v0
.end method


# virtual methods
.method public a(ILhxy;)V
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param
    .param p2    # Lhxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lhyb;->b(ILhxy;)Lhxy;

    move-result-object v0

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 103
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tipo de elegibilidade inv\u00e1lida"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_1
    invoke-direct {p0, v0}, Lhyb;->a(Lhxy;)V

    .line 105
    :goto_0
    return-void

    .line 86
    :pswitch_2
    invoke-direct {p0, v0}, Lhyb;->b(Lhxy;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-direct {p0, v0}, Lhyb;->c(Lhxy;)V

    goto :goto_0

    .line 94
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lhyb;->a(Lhxy;Z)V

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-direct {p0, v0}, Lhyb;->e(Lhxy;)V

    goto :goto_0

    .line 100
    :pswitch_6
    invoke-direct {p0, v0}, Lhyb;->f(Lhxy;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 492
    invoke-static {p1, p2}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a(Landroid/content/Context;I)V

    .line 493
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 482
    iget-object v0, p0, Lhyb;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyb;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 497
    invoke-static {p1, p2}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->a(Landroid/content/Context;I)V

    .line 498
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyb;->d:Lhxo;

    .line 450
    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->k()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->l()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->m()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyb;->d:Lhxo;

    .line 471
    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    .line 471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lhyb;->d:Lhxo;

    invoke-virtual {v0}, Lhxo;->f()Lhxk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyb;->d:Lhxo;

    .line 477
    invoke-virtual {v0}, Lhxo;->f()Lhxk;

    move-result-object v0

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lhyb;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 488
    return-void
.end method
