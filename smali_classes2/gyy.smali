.class public Lgyy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Lgyx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lgyy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Lgzs;Ljava/lang/String;)Lgzs;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;",
            "Lgzs;",
            "Ljava/lang/String;",
            ")",
            "Lgzs;"
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 466
    new-instance v2, Lbfx;

    invoke-direct {v2}, Lbfx;-><init>()V

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    .line 469
    sget-object v0, Lalb;->a:Lbfu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v3

    .line 470
    invoke-virtual {p1}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v4

    .line 469
    invoke-interface {v0, v3, v2, p2, v4}, Lbfu;->a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 472
    if-nez v0, :cond_1

    .line 475
    :cond_0
    return-object p1

    .line 465
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lgzs;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lgzs;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v1, Lgzs;

    invoke-direct {v1}, Lgzs;-><init>()V

    .line 442
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 443
    new-instance v2, Lbfx;

    invoke-direct {v2}, Lbfx;-><init>()V

    .line 444
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    .line 446
    new-instance v7, Lgzs;

    invoke-direct {v7}, Lgzs;-><init>()V

    .line 447
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 449
    new-instance v0, Lbgb;

    invoke-direct {v0}, Lbgb;-><init>()V

    .line 450
    sget-object v1, Lalb;->a:Lbfu;

    invoke-interface {v1, v2, v0}, Lbfu;->a(Lbfx;Lbgb;)I

    .line 451
    const-string v1, "SEED_SERIAL"

    invoke-virtual {v0}, Lbgb;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v0, Lalb;->a:Lbfu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    .line 455
    invoke-virtual {v7}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v5

    move-object v3, p1

    .line 453
    invoke-interface/range {v0 .. v5}, Lbfu;->a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 457
    if-nez v0, :cond_0

    .line 460
    :goto_1
    return-object v7

    .line 442
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v2, Lgyu;

    invoke-direct {v2, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {v2}, Lgyu;->a()V

    .line 497
    invoke-virtual {v2}, Lgyu;->c()Ljava/util/List;

    move-result-object v3

    .line 499
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 500
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 499
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v2}, Lgyu;->close()V

    .line 505
    return-object v3
.end method

.method static synthetic a()Lkku;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lgyy;->b()Lkku;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lgyv;)V
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lgyu;

    invoke-direct {v0, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v0}, Lgyu;->a()V

    .line 511
    invoke-virtual {v0, p1}, Lgyu;->a(Lgyv;)V

    .line 512
    invoke-virtual {v0}, Lgyu;->close()V

    .line 513
    return-void
.end method

.method public static a(Landroid/content/Context;Lgyx;Ljava/lang/String;Lgzr;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 64
    sget-boolean v0, Lgyy;->a:Z

    if-nez v0, :cond_0

    .line 66
    sput-boolean v1, Lgyy;->a:Z

    .line 70
    :try_start_0
    sput-object p1, Lgyy;->b:Lgyx;

    .line 72
    new-instance v6, Lbfx;

    invoke-direct {v6}, Lbfx;-><init>()V

    .line 73
    new-instance v0, Lgzs;

    invoke-direct {v0}, Lgzs;-><init>()V

    .line 75
    sget-object v1, Lalb;->a:Lbfu;

    invoke-interface {v1, v6}, Lbfu;->a(Lbfx;)I

    .line 77
    invoke-virtual {v0}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->k()Lfwv;

    move-result-object v2

    invoke-virtual {v2}, Lfwv;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lalb;->a:Lbfu;

    .line 80
    invoke-virtual {v0}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 79
    invoke-interface {v1, v6, v2, v3}, Lbfu;->a(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 84
    sget-object v7, Lgyy;->b:Lgyx;

    .line 86
    sget-object v1, Lgzc;->a:[I

    invoke-virtual {p3}, Lgzr;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 116
    new-instance v1, Lgzy;

    new-instance v2, Lgze;

    invoke-direct {v2, v6, p0, p3, v7}, Lgze;-><init>(Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V

    invoke-direct {v1, v2}, Lgzy;-><init>(Lgkw;)V

    .line 122
    invoke-virtual {v0}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzy;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    new-instance v1, Lgzy;

    new-instance v2, Lgyz;

    invoke-direct {v2, v6, p0, p3, v7}, Lgyz;-><init>(Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V

    invoke-direct {v1, v2}, Lgzy;-><init>(Lgkw;)V

    .line 94
    invoke-virtual {v0}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzy;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    sput-boolean v9, Lgyy;->a:Z

    .line 132
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_1
    :try_start_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 99
    sget-object v1, Lalb;->a:Lbfu;

    invoke-interface {v1, p2, v5}, Lbfu;->d(Ljava/lang/String;Ljava/util/Vector;)I

    .line 101
    invoke-virtual {v0}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v8, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 103
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v8, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 104
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v8, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 105
    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v8, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 107
    :goto_4
    new-instance v0, Lgzy;

    new-instance v8, Lgzd;

    invoke-direct {v8, v6, p0, p3, v7}, Lgzd;-><init>(Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V

    invoke-direct {v0, v8}, Lgzy;-><init>(Lgkw;)V

    .line 113
    invoke-virtual/range {v0 .. v5}, Lgzy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 103
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 104
    :cond_3
    const-string v4, ""

    goto :goto_3

    .line 105
    :cond_4
    const-string v5, ""

    goto :goto_4

    .line 127
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lgyy;->a:Z

    .line 128
    sget-object v0, Lgyy;->b:Lgyx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgyx;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Ljava/lang/String;Lgzr;)V
    .locals 0

    .prologue
    .line 55
    invoke-static/range {p0 .. p5}, Lgyy;->b(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Ljava/lang/String;Lgzr;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lgyx;)V
    .locals 7

    .prologue
    .line 376
    new-instance v5, Lgzs;

    invoke-direct {v5}, Lgzs;-><init>()V

    .line 378
    new-instance v0, Lgyu;

    invoke-direct {v0, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v0}, Lgyu;->a()V

    .line 381
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyu;->a(Ljava/lang/Long;)Lgyv;

    move-result-object v3

    .line 382
    invoke-virtual {v0}, Lgyu;->close()V

    .line 384
    new-instance v1, Lbfx;

    invoke-virtual {v3}, Lgyv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbfx;-><init>(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lalb;->a:Lbfu;

    invoke-virtual {v5}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v5}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lbfu;->b(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 388
    if-nez v0, :cond_0

    .line 393
    new-instance v6, Lgzy;

    new-instance v0, Lgza;

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lgza;-><init>(Lbfx;Landroid/content/Context;Lgyv;Lgyx;Lgzs;)V

    invoke-direct {v6, v0}, Lgzy;-><init>(Lgkw;)V

    .line 408
    invoke-virtual {v6}, Lgzy;->a()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lgyx;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Lgyu;

    invoke-direct {v0, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v0}, Lgyu;->a()V

    .line 481
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyu;->a(Ljava/lang/Long;)Lgyv;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lgyv;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lgyv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {v0}, Lgyu;->close()V

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-static {p2}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Lgyu;->close()V

    goto :goto_0
.end method

.method static synthetic a(Lbfx;Lgzw;Landroid/content/Context;Lgyv;Lgyx;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lgyy;->b(Lbfx;Lgzw;Landroid/content/Context;Lgyv;Lgyx;)V

    return-void
.end method

.method private static a(Lbfx;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lgzr;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 223
    sget-boolean v0, Lgyy;->a:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lgyy;->a:Z

    .line 228
    :try_start_0
    sget-object v0, Lalb;->a:Lbfu;

    invoke-interface {v0, p0, p1}, Lbfu;->a(Lbfx;Ljava/lang/String;)I

    move-result v0

    .line 230
    if-nez v0, :cond_1

    .line 232
    sget-object v3, Lgyy;->b:Lgyx;

    .line 234
    sget-object v0, Lgzc;->a:[I

    invoke-virtual {p4}, Lgzr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    new-instance v0, Lgzy;

    new-instance v4, Lgzj;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, v3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lgzj;-><init>(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Lgzr;)V

    invoke-direct {v0, v4}, Lgzy;-><init>(Lgkw;)V

    .line 277
    invoke-virtual {v0, p3}, Lgzy;->c(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lgyy;->a:Z

    .line 237
    const-string v4, "0"

    move-object v0, p2

    move-object v1, p3

    move-object v2, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgyy;->b(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Ljava/lang/String;Lgzr;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    sput-boolean v10, Lgyy;->a:Z

    .line 286
    const-string v1, "Error"

    invoke-virtual {v0}, Lbfy;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_1
    :try_start_1
    new-instance v0, Lgzy;

    new-instance v4, Lgzi;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, v3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lgzi;-><init>(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Lgzr;)V

    invoke-direct {v0, v4}, Lgzy;-><init>(Lgkw;)V

    .line 257
    invoke-virtual {v0, p3}, Lgzy;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lgyy;->a:Z

    .line 282
    sget-object v1, Lgyy;->b:Lgyx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lgyx;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lbfy; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lbfx;Ljava/lang/String;Landroid/content/Context;Ljava/util/Vector;Lgzr;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lgzr;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 153
    sget-boolean v0, Lgyy;->a:Z

    if-nez v0, :cond_0

    .line 155
    sput-boolean v1, Lgyy;->a:Z

    .line 157
    new-instance v6, Lgzs;

    invoke-direct {v6}, Lgzs;-><init>()V

    .line 158
    invoke-virtual {v6}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    :try_start_0
    sget-object v0, Lalb;->a:Lbfu;

    .line 164
    invoke-virtual {v6}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v6}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 163
    invoke-interface {v0, p0, p1, v1, v2}, Lbfu;->a(Lbfx;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 166
    if-nez v0, :cond_1

    .line 168
    sget-object v5, Lgyy;->b:Lgyx;

    .line 170
    sget-object v0, Lgzc;->a:[I

    invoke-virtual {p4}, Lgzr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v7, Lgzy;

    new-instance v0, Lgzh;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lgzh;-><init>(Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V

    invoke-direct {v7, v0}, Lgzy;-><init>(Lgkw;)V

    .line 196
    invoke-virtual {v6}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgzy;->b(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    new-instance v7, Lgzy;

    new-instance v0, Lgzf;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lgzf;-><init>(Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V

    invoke-direct {v7, v0}, Lgzy;-><init>(Lgkw;)V

    .line 178
    invoke-virtual {v6}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgzy;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    sput-boolean v8, Lgyy;->a:Z

    .line 205
    const-string v1, "Error"

    invoke-virtual {v0}, Lbfy;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :pswitch_1
    :try_start_1
    new-instance v7, Lgzy;

    new-instance v0, Lgzg;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lgzg;-><init>(Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V

    invoke-direct {v7, v0}, Lgzy;-><init>(Lgkw;)V

    .line 187
    invoke-virtual {v6}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgzy;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lgyy;->a:Z

    .line 201
    sget-object v1, Lgyy;->b:Lgyx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lgyx;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lbfy; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/Object;Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lgyy;->b(Ljava/lang/Object;Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V
    .locals 0

    .prologue
    .line 55
    invoke-static/range {p0 .. p5}, Lgyy;->b(Ljava/lang/Object;Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V

    return-void
.end method

.method private static b()Lkku;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lkku;

    invoke-direct {v0}, Lkku;-><init>()V

    .line 368
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setConnUuid(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setTokenSessao(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->a(Ljava/lang/String;)V

    .line 372
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Ljava/lang/String;Lgzr;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    new-instance v0, Lgyu;

    invoke-direct {v0, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {v0}, Lgyu;->a()V

    .line 299
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgyu;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lgyv;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lgyu;->close()V

    .line 302
    if-eqz v1, :cond_0

    .line 304
    const-string v0, "qrPreferences"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0, p1}, Live;->a(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->j(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lgzc;->a:[I

    invoke-virtual {p5}, Lgzr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 325
    :pswitch_0
    new-instance v0, Lnea;

    new-instance v1, Lgzk;

    invoke-direct {v1, p3, p4}, Lgzk;-><init>(Lgyx;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnea;-><init>(Lgkw;)V

    .line 361
    invoke-virtual {v0}, Lnea;->a()V

    .line 363
    :cond_0
    return-void

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lbfx;Lgzw;Landroid/content/Context;Lgyv;Lgyx;)V
    .locals 4

    .prologue
    .line 416
    :try_start_0
    sget-object v0, Lalb;->a:Lbfu;

    invoke-virtual {p1}, Lgzw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lbfu;->b(Lbfx;Ljava/lang/String;)I

    move-result v0

    .line 417
    if-nez v0, :cond_1

    .line 418
    new-instance v0, Lgyu;

    invoke-direct {v0, p2}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 419
    invoke-virtual {v0}, Lgyu;->a()V

    .line 420
    invoke-virtual {v0, p3}, Lgyu;->a(Lgyv;)V

    .line 421
    invoke-virtual {p3}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgyu;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lgyv;

    move-result-object v1

    .line 422
    invoke-virtual {v0}, Lgyu;->close()V

    .line 424
    if-eqz v1, :cond_0

    .line 425
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lgzw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lgyx;->a(Ljava/lang/Object;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p1}, Lgzw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lgyx;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    const-string v1, "Error"

    invoke-virtual {v0}, Lbfy;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V
    .locals 3

    .prologue
    .line 138
    if-eqz p0, :cond_0

    .line 139
    check-cast p0, Lgzu;

    .line 140
    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 142
    sget-object v1, Lalb;->a:Lbfu;

    invoke-virtual {p0}, Lgzu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lbfu;->d(Ljava/lang/String;Ljava/util/Vector;)I

    .line 144
    invoke-virtual {p0}, Lgzu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, v0, p3}, Lgyy;->a(Lbfx;Ljava/lang/String;Landroid/content/Context;Ljava/util/Vector;Lgzr;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p4, v0}, Lgyx;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static b(Ljava/lang/Object;Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V
    .locals 2

    .prologue
    .line 211
    if-eqz p0, :cond_0

    .line 212
    check-cast p0, Lgzu;

    .line 213
    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lgzu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lgyy;->a(Lbfx;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lgzr;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgzu;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p5, v0}, Lgyx;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
