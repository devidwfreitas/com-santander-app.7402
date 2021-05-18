.class public Li;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgl;
.implements Ljava/io/Serializable;
.implements Ly;


# instance fields
.field private bo:Z

.field private bp:C

.field private bq:Lo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->bo:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Li;->bq:Lo;

    .line 57
    new-instance v0, Lk;

    invoke-direct {v0, p0}, Lk;-><init>(Li;)V

    .line 90
    invoke-virtual {v0}, Lk;->a()Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private a(Lam;Lbfm;)V
    .locals 2

    .prologue
    .line 2536
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2537
    invoke-virtual {p1}, Lam;->f()I

    move-result v1

    .line 2536
    invoke-virtual {v0, v1}, Lbgb;->i(I)V

    .line 2538
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    invoke-virtual {p1}, Lam;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lbgb;->a(I)V

    .line 2539
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2540
    invoke-virtual {p1}, Lam;->i()I

    move-result v1

    .line 2539
    invoke-virtual {v0, v1}, Lbgb;->d(I)V

    .line 2541
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2542
    invoke-virtual {p1}, Lam;->j()I

    move-result v1

    .line 2541
    invoke-virtual {v0, v1}, Lbgb;->f(I)V

    .line 2544
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2545
    invoke-virtual {p1}, Lam;->n()I

    move-result v1

    .line 2544
    invoke-virtual {v0, v1}, Lbgb;->k(I)V

    .line 2546
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2547
    invoke-virtual {p1}, Lam;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lbgb;->g(I)V

    .line 2549
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2550
    invoke-virtual {p1}, Lam;->a()I

    move-result v1

    .line 2549
    invoke-virtual {v0, v1}, Lbgb;->n(I)V

    .line 2552
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2553
    invoke-virtual {p1}, Lam;->m()I

    move-result v1

    .line 2552
    invoke-virtual {v0, v1}, Lbgb;->j(I)V

    .line 2554
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2555
    invoke-virtual {p1}, Lam;->l()I

    move-result v1

    .line 2554
    invoke-virtual {v0, v1}, Lbgb;->h(I)V

    .line 2557
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2558
    invoke-virtual {p1}, Lam;->b()I

    move-result v1

    .line 2557
    invoke-virtual {v0, v1}, Lbgb;->m(I)V

    .line 2560
    invoke-virtual {p1}, Lam;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfm;->a(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {p1}, Lam;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfm;->b(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    invoke-virtual {p1}, Lam;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lbgb;->l(I)V

    .line 2563
    invoke-virtual {p1}, Lam;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfm;->c(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p1}, Lam;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfm;->d(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    invoke-virtual {p1}, Lam;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lbgb;->b(I)V

    .line 2567
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2568
    invoke-virtual {p1}, Lam;->r()I

    move-result v1

    .line 2567
    invoke-virtual {v0, v1}, Lbgb;->c(I)V

    .line 2569
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2570
    invoke-virtual {p1}, Lam;->p()I

    move-result v1

    .line 2569
    invoke-virtual {v0, v1}, Lbgb;->e(I)V

    .line 2572
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2573
    invoke-virtual {p1}, Lam;->d()Ljava/lang/String;

    move-result-object v1

    .line 2572
    invoke-virtual {v0, v1}, Lbgb;->a(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2575
    invoke-virtual {p1}, Lam;->e()Ljava/lang/String;

    move-result-object v1

    .line 2574
    invoke-virtual {v0, v1}, Lbgb;->f(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {p2}, Lbfm;->d()Lbgb;

    move-result-object v0

    .line 2578
    invoke-virtual {p1}, Lam;->s()I

    move-result v1

    .line 2577
    invoke-virtual {v0, v1}, Lbgb;->o(I)V

    .line 2579
    return-void
.end method

.method private a(Lam;Lbfw;)V
    .locals 1

    .prologue
    .line 3692
    invoke-virtual {p1}, Lam;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lbfw;->a(I)V

    .line 3693
    invoke-virtual {p1}, Lam;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lbfw;->b(I)V

    .line 3694
    invoke-virtual {p1}, Lam;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfw;->a(Ljava/lang/String;)V

    .line 3695
    return-void
.end method

.method private a(Lam;Lbgb;)V
    .locals 1

    .prologue
    .line 2494
    .line 2495
    invoke-virtual {p1}, Lam;->f()I

    move-result v0

    .line 2494
    invoke-virtual {p2, v0}, Lbgb;->i(I)V

    .line 2496
    invoke-virtual {p1}, Lam;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->a(I)V

    .line 2497
    invoke-virtual {p1}, Lam;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->d(I)V

    .line 2499
    invoke-virtual {p1}, Lam;->j()I

    move-result v0

    .line 2498
    invoke-virtual {p2, v0}, Lbgb;->f(I)V

    .line 2502
    invoke-virtual {p1}, Lam;->n()I

    move-result v0

    .line 2501
    invoke-virtual {p2, v0}, Lbgb;->k(I)V

    .line 2503
    invoke-virtual {p1}, Lam;->k()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->g(I)V

    .line 2505
    invoke-virtual {p1}, Lam;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->n(I)V

    .line 2508
    invoke-virtual {p1}, Lam;->m()I

    move-result v0

    .line 2507
    invoke-virtual {p2, v0}, Lbgb;->j(I)V

    .line 2509
    invoke-virtual {p1}, Lam;->l()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->h(I)V

    .line 2512
    invoke-virtual {p1}, Lam;->b()I

    move-result v0

    .line 2511
    invoke-virtual {p2, v0}, Lbgb;->m(I)V

    .line 2514
    invoke-virtual {p1}, Lam;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbgb;->b(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {p1}, Lam;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbgb;->c(Ljava/lang/String;)V

    .line 2516
    invoke-virtual {p1}, Lam;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->l(I)V

    .line 2517
    invoke-virtual {p1}, Lam;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbgb;->d(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p1}, Lam;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbgb;->e(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p1}, Lam;->q()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->b(I)V

    .line 2522
    invoke-virtual {p1}, Lam;->r()I

    move-result v0

    .line 2521
    invoke-virtual {p2, v0}, Lbgb;->c(I)V

    .line 2523
    invoke-virtual {p1}, Lam;->p()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->e(I)V

    .line 2526
    invoke-virtual {p1}, Lam;->d()Ljava/lang/String;

    move-result-object v0

    .line 2525
    invoke-virtual {p2, v0}, Lbgb;->a(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p1}, Lam;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbgb;->f(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {p1}, Lam;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lbgb;->o(I)V

    .line 2530
    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;[B)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Li;->b(Ljava/lang/Integer;[B)V

    return-void
.end method

.method private static a([BC)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1779
    invoke-static {p0}, Lca;->a([B)[B

    move-result-object v1

    .line 1781
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 1783
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 1785
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 1788
    return-object v2

    .line 1786
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3

    .line 1785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Lbfm;Lbgb;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1199
    iget-boolean v1, p0, Li;->bo:Z

    if-nez v1, :cond_1

    .line 1200
    const/16 v0, 0x5aa

    .line 1232
    :cond_0
    :goto_0
    return v0

    .line 1207
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v3

    .line 1209
    if-eqz p1, :cond_4

    .line 1210
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1211
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    move-object v2, v1

    .line 1214
    :goto_1
    if-eqz p2, :cond_3

    .line 1215
    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    move-object v1, v0

    .line 1218
    :goto_2
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v3, v2, v0, v1}, Lac;->a(Laj;Lo;Lam;)I

    move-result v0

    .line 1219
    if-eqz p1, :cond_2

    .line 1220
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v3

    invoke-virtual {v2}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbfx;->a(Ljava/lang/String;)V

    .line 1222
    :cond_2
    if-nez v0, :cond_0

    .line 1225
    if-eqz p2, :cond_0

    .line 1226
    invoke-direct {p0, v1, p2}, Li;->a(Lam;Lbgb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1232
    const/16 v0, 0x514

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private b(Lbfm;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1263
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1264
    const/16 v0, 0x5aa

    .line 1278
    :goto_0
    return v0

    .line 1269
    :cond_0
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1270
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v0

    invoke-virtual {v0}, Lbfx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 1272
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1274
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1273
    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1277
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lbfm;Ljava/lang/StringBuffer;)I
    .locals 4

    .prologue
    .line 1794
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1795
    const/16 v0, 0x5aa

    .line 1813
    :goto_0
    return v0

    .line 1802
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1803
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Li;->bq:Lo;

    invoke-virtual {v2}, Lo;->b()[B

    move-result-object v2

    invoke-static {v2}, Laz;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1804
    new-instance v2, Laj;

    invoke-direct {v2}, Laj;-><init>()V

    .line 1805
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v3

    invoke-virtual {v3}, Lbfx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laj;->a(Ljava/lang/String;)V

    .line 1806
    iget-object v3, p0, Li;->bq:Lo;

    invoke-interface {v0, v2, v3, v1, p2}, Lac;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1808
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v2}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1810
    :catch_0
    move-exception v0

    .line 1813
    const/16 v0, 0x581

    goto :goto_0
.end method

.method private b(Lbfv;Lbfw;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3652
    iget-boolean v1, p0, Li;->bo:Z

    if-nez v1, :cond_1

    .line 3653
    const/16 v0, 0x5aa

    .line 3685
    :cond_0
    :goto_0
    return v0

    .line 3660
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v3

    .line 3662
    if-eqz p1, :cond_4

    .line 3663
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3664
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    move-object v2, v1

    .line 3667
    :goto_1
    if-eqz p2, :cond_3

    .line 3668
    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    move-object v1, v0

    .line 3671
    :goto_2
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v3, v2, v0, v1}, Lac;->a(Laj;Lo;Lam;)I

    move-result v0

    .line 3672
    if-eqz p1, :cond_2

    .line 3673
    invoke-virtual {v2}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbfv;->a(Ljava/lang/String;)V

    .line 3675
    :cond_2
    if-nez v0, :cond_0

    .line 3678
    if-eqz p2, :cond_0

    .line 3679
    invoke-direct {p0, v1, p2}, Li;->a(Lam;Lbfw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3682
    :catch_0
    move-exception v0

    .line 3685
    const/16 v0, 0x514

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private b(Lbfx;Lbgb;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1525
    iget-boolean v1, p0, Li;->bo:Z

    if-nez v1, :cond_1

    .line 1526
    const/16 v0, 0x5aa

    .line 1558
    :cond_0
    :goto_0
    return v0

    .line 1533
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v3

    .line 1535
    if-eqz p1, :cond_4

    .line 1536
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1537
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    move-object v2, v1

    .line 1540
    :goto_1
    if-eqz p2, :cond_3

    .line 1541
    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    move-object v1, v0

    .line 1544
    :goto_2
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v3, v2, v0, v1}, Lac;->a(Laj;Lo;Lam;)I

    move-result v0

    .line 1545
    if-eqz p1, :cond_2

    .line 1546
    invoke-virtual {v2}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbfx;->a(Ljava/lang/String;)V

    .line 1548
    :cond_2
    if-nez v0, :cond_0

    .line 1551
    if-eqz p2, :cond_0

    .line 1552
    invoke-direct {p0, v1, p2}, Li;->a(Lam;Lbgb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1558
    const/16 v0, 0x514

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private b(Lbfx;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1591
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1592
    const/16 v0, 0x5aa

    .line 1606
    :goto_0
    return v0

    .line 1597
    :cond_0
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1598
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 1600
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1602
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1601
    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1605
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lbfx;Ljava/lang/StringBuffer;)I
    .locals 4

    .prologue
    .line 1821
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1822
    const/16 v0, 0x5aa

    .line 1840
    :goto_0
    return v0

    .line 1829
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1830
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Li;->bq:Lo;

    invoke-virtual {v2}, Lo;->b()[B

    move-result-object v2

    invoke-static {v2}, Laz;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1831
    new-instance v2, Laj;

    invoke-direct {v2}, Laj;-><init>()V

    .line 1832
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laj;->a(Ljava/lang/String;)V

    .line 1833
    iget-object v3, p0, Li;->bq:Lo;

    invoke-interface {v0, v2, v3, v1, p2}, Lac;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1835
    invoke-virtual {v2}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v0

    .line 1840
    const/16 v0, 0x581

    goto :goto_0
.end method

.method private b([B[B[BC)I
    .locals 2

    .prologue
    .line 1749
    :try_start_0
    iput-char p4, p0, Li;->bp:C

    .line 1753
    iget-char v0, p0, Li;->bp:C

    invoke-static {p3, v0}, Li;->a([BC)[B

    move-result-object v0

    .line 1755
    new-instance v1, Lo;

    .line 1756
    invoke-direct {v1, p1, p2, v0}, Lo;-><init>([B[B[B)V

    .line 1755
    iput-object v1, p0, Li;->bq:Lo;

    .line 1759
    iget-object v0, p0, Li;->bq:Lo;

    invoke-virtual {v0}, Lo;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    const/16 v0, 0x57f

    .line 1772
    :goto_0
    return v0

    .line 1764
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li;->bo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    const/4 v0, 0x0

    goto :goto_0

    .line 1768
    :catch_0
    move-exception v0

    .line 1772
    const/16 v0, 0x578

    goto :goto_0
.end method

.method private static b(Ljava/lang/Integer;[B)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    .line 49
    invoke-virtual {v0}, Lj;->a()Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lbb;

    invoke-interface {v0, p0, p1}, Lbb;->a(Ljava/lang/Integer;[B)V

    .line 52
    return-void
.end method

.method private c(Lbfm;)I
    .locals 3

    .prologue
    .line 2950
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2951
    const/16 v0, 0x5aa

    .line 2973
    :cond_0
    :goto_0
    return v0

    .line 2958
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2960
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2961
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2963
    iget-object v2, p0, Li;->bq:Lo;

    .line 2962
    invoke-interface {v0, v1, v2}, Lac;->b(Laj;Lo;)I

    move-result v0

    .line 2964
    if-nez v0, :cond_0

    .line 2967
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v0

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2968
    const/4 v0, 0x0

    goto :goto_0

    .line 2970
    :catch_0
    move-exception v0

    .line 2973
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private c(Lbfx;)I
    .locals 3

    .prologue
    .line 3354
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3355
    const/16 v0, 0x5aa

    .line 3377
    :cond_0
    :goto_0
    return v0

    .line 3362
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3364
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3365
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3367
    iget-object v2, p0, Li;->bq:Lo;

    .line 3366
    invoke-interface {v0, v1, v2}, Lac;->b(Laj;Lo;)I

    move-result v0

    .line 3368
    if-nez v0, :cond_0

    .line 3371
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    const/4 v0, 0x0

    goto :goto_0

    .line 3374
    :catch_0
    move-exception v0

    .line 3377
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private d(Lbfl;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1970
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1971
    const/16 v0, 0x5aa

    .line 1987
    :goto_0
    return v0

    .line 1976
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 1977
    const/4 v0, 0x0

    .line 1978
    if-eqz p1, :cond_1

    .line 1979
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1980
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v2

    invoke-virtual {v2}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1982
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->n(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 1984
    if-eqz p1, :cond_2

    .line 1985
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfv;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1987
    goto :goto_0
.end method

.method private d(Lbfm;Lbgc;)I
    .locals 4

    .prologue
    .line 1095
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1096
    const/16 v0, 0x5aa

    .line 1124
    :goto_0
    return v0

    .line 1103
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1105
    const/4 v0, 0x0

    .line 1106
    if-eqz p1, :cond_2

    .line 1107
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1108
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1110
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1113
    iget-object v0, p0, Li;->bq:Lo;

    .line 1112
    invoke-interface {v2, v1, v0, v3}, Lac;->c(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1114
    if-eqz p1, :cond_1

    .line 1115
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1118
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1124
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private d(Lbfx;Lbgc;)I
    .locals 4

    .prologue
    .line 1419
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1420
    const/16 v0, 0x5aa

    .line 1448
    :goto_0
    return v0

    .line 1427
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1429
    const/4 v0, 0x0

    .line 1430
    if-eqz p1, :cond_2

    .line 1431
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1432
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1434
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1437
    iget-object v0, p0, Li;->bq:Lo;

    .line 1436
    invoke-interface {v2, v1, v0, v3}, Lac;->c(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1438
    if-eqz p1, :cond_1

    .line 1439
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1442
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1448
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private d(Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3742
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3743
    const/16 v0, 0x5aa

    .line 3751
    :goto_0
    return v0

    .line 3748
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3750
    iget-object v1, p0, Li;->bq:Lo;

    .line 3749
    invoke-interface {v0, v1, p1, p2}, Lac;->b(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method private e(Lbfm;Lbgc;)I
    .locals 4

    .prologue
    .line 1130
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1131
    const/16 v0, 0x5aa

    .line 1159
    :goto_0
    return v0

    .line 1138
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1140
    const/4 v0, 0x0

    .line 1141
    if-eqz p1, :cond_2

    .line 1142
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1143
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1145
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1148
    iget-object v0, p0, Li;->bq:Lo;

    .line 1147
    invoke-interface {v2, v1, v0, v3}, Lac;->d(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1149
    if-eqz p1, :cond_1

    .line 1150
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1153
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1159
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private e(Lbfx;Lbgc;)I
    .locals 4

    .prologue
    .line 1455
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1456
    const/16 v0, 0x5aa

    .line 1484
    :goto_0
    return v0

    .line 1463
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1465
    const/4 v0, 0x0

    .line 1466
    if-eqz p1, :cond_2

    .line 1467
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1468
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1470
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1473
    iget-object v0, p0, Li;->bq:Lo;

    .line 1472
    invoke-interface {v2, v1, v0, v3}, Lac;->d(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1474
    if-eqz p1, :cond_1

    .line 1475
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1478
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1477
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1481
    :catch_0
    move-exception v0

    .line 1484
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private f(Lbfm;Lbgc;)I
    .locals 4

    .prologue
    .line 1165
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1166
    const/16 v0, 0x5aa

    .line 1194
    :goto_0
    return v0

    .line 1173
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1175
    const/4 v0, 0x0

    .line 1176
    if-eqz p1, :cond_2

    .line 1177
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1178
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1180
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1183
    iget-object v0, p0, Li;->bq:Lo;

    .line 1182
    invoke-interface {v2, v1, v0, v3}, Lac;->b(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1184
    if-eqz p1, :cond_1

    .line 1185
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1188
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1194
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private f(Lbfx;Lbgc;)I
    .locals 4

    .prologue
    .line 1491
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1492
    const/16 v0, 0x5aa

    .line 1520
    :goto_0
    return v0

    .line 1499
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1501
    const/4 v0, 0x0

    .line 1502
    if-eqz p1, :cond_2

    .line 1503
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1504
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1506
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1509
    iget-object v0, p0, Li;->bq:Lo;

    .line 1508
    invoke-interface {v2, v1, v0, v3}, Lac;->b(Laj;Lo;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1510
    if-eqz p1, :cond_1

    .line 1511
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    .line 1514
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lbgc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1520
    const/16 v0, 0x514

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private g(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1238
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1239
    const/16 v0, 0x5aa

    .line 1255
    :goto_0
    return v0

    .line 1244
    :cond_0
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1245
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v0

    invoke-virtual {v0}, Lbfx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1250
    iget-object v2, p0, Li;->bq:Lo;

    .line 1249
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->a(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1253
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1565
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1566
    const/16 v0, 0x5aa

    .line 1582
    :goto_0
    return v0

    .line 1571
    :cond_0
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1572
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1577
    iget-object v2, p0, Li;->bq:Lo;

    .line 1576
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->a(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1580
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1335
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1336
    const/16 v0, 0x5aa

    .line 1347
    :goto_0
    return v0

    .line 1341
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1342
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1343
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1345
    iget-object v2, p0, Li;->bq:Lo;

    .line 1344
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->b(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1346
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1664
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1665
    const/16 v0, 0x5aa

    .line 1676
    :goto_0
    return v0

    .line 1670
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1671
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1672
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1674
    iget-object v2, p0, Li;->bq:Lo;

    .line 1673
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->b(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1675
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1353
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1354
    const/16 v0, 0x5aa

    .line 1366
    :goto_0
    return v0

    .line 1360
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1361
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1362
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1363
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2, p3}, Lac;->d(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1365
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1683
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1684
    const/16 v0, 0x5aa

    .line 1696
    :goto_0
    return v0

    .line 1690
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1691
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1692
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1693
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2, p3}, Lac;->d(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1695
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3438
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3439
    const/16 v0, 0x5aa

    .line 3450
    :goto_0
    return v0

    .line 3444
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3445
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3446
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3448
    iget-object v2, p0, Li;->bq:Lo;

    .line 3447
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->c(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3449
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1613
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1614
    const/16 v0, 0x5aa

    .line 1626
    :goto_0
    return v0

    .line 1620
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1621
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1622
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1623
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->g(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1625
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    throw v0
.end method

.method private j(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3462
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3463
    const/16 v0, 0x5aa

    .line 3474
    :goto_0
    return v0

    .line 3468
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3469
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3470
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3472
    iget-object v2, p0, Li;->bq:Lo;

    .line 3471
    invoke-interface {v0, v1, v2, p2, p3}, Lac;->c(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3473
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1637
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 1638
    const/16 v0, 0x5aa

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1644
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1645
    const/4 v0, 0x0

    .line 1646
    if-eqz p1, :cond_2

    .line 1647
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1648
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1650
    :goto_1
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v2, v1, v0, p2}, Lac;->e(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1652
    if-eqz p1, :cond_0

    .line 1653
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private l(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1285
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1286
    const/16 v0, 0x5aa

    .line 1298
    :goto_0
    return v0

    .line 1292
    :cond_0
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1293
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1294
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1295
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->g(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1297
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    throw v0
.end method

.method private l(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1705
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1706
    const/16 v0, 0x5aa

    .line 1718
    :goto_0
    return v0

    .line 1712
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1713
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1714
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1715
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->a(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1717
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1309
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 1310
    const/16 v0, 0x5aa

    .line 1327
    :cond_0
    :goto_0
    return v0

    .line 1316
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 1317
    const/4 v0, 0x0

    .line 1318
    if-eqz p1, :cond_2

    .line 1319
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1320
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 1322
    :goto_1
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v2, v1, v0, p2}, Lac;->e(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1324
    if-eqz p1, :cond_0

    .line 1325
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private m(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1725
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1726
    const/16 v0, 0x5aa

    .line 1738
    :goto_0
    return v0

    .line 1731
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1733
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1734
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1735
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->f(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1737
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1374
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1375
    const/16 v0, 0x5aa

    .line 1387
    :goto_0
    return v0

    .line 1381
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1382
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1383
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1384
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->a(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1386
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2220
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2221
    const/16 v0, 0x5aa

    .line 2243
    :cond_0
    :goto_0
    return v0

    .line 2228
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2230
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2231
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2233
    iget-object v2, p0, Li;->bq:Lo;

    .line 2232
    invoke-interface {v0, v1, v2, p2}, Lac;->c(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 2234
    if-nez v0, :cond_0

    .line 2237
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    const/4 v0, 0x0

    goto :goto_0

    .line 2240
    :catch_0
    move-exception v0

    .line 2243
    const/16 v0, 0x598

    goto :goto_0
.end method

.method private o(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1394
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1395
    const/16 v0, 0x5aa

    .line 1407
    :goto_0
    return v0

    .line 1400
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1402
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1403
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1404
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, v2, p2}, Lac;->f(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1406
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2248
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2249
    const/16 v0, 0x5aa

    .line 2265
    :goto_0
    return v0

    .line 2254
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2255
    const/4 v0, 0x0

    .line 2256
    if-eqz p1, :cond_1

    .line 2257
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2258
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2260
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->b(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2262
    if-eqz p1, :cond_2

    .line 2263
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2265
    goto :goto_0
.end method

.method private p(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1877
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 1878
    const/16 v0, 0x5aa

    .line 1900
    :cond_0
    :goto_0
    return v0

    .line 1885
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 1887
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 1888
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1890
    iget-object v2, p0, Li;->bq:Lo;

    .line 1889
    invoke-interface {v0, v1, v2, p2}, Lac;->c(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 1891
    if-nez v0, :cond_0

    .line 1894
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v0

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    const/4 v0, 0x0

    goto :goto_0

    .line 1897
    :catch_0
    move-exception v0

    .line 1900
    const/16 v0, 0x598

    goto :goto_0
.end method

.method private p(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2272
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2273
    const/16 v0, 0x5aa

    .line 2296
    :cond_0
    :goto_0
    return v0

    .line 2280
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 2281
    const/4 v0, 0x0

    .line 2282
    if-eqz p1, :cond_2

    .line 2283
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2284
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 2287
    :goto_1
    iget-object v0, p0, Li;->bq:Lo;

    .line 2286
    invoke-interface {v2, v1, v0, p2}, Lac;->d(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 2288
    if-eqz p1, :cond_0

    .line 2289
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2293
    :catch_0
    move-exception v0

    .line 2296
    const/16 v0, 0x599

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private q(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1904
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1905
    const/16 v0, 0x5aa

    .line 1921
    :goto_0
    return v0

    .line 1910
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 1911
    const/4 v0, 0x0

    .line 1912
    if-eqz p1, :cond_1

    .line 1913
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1914
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1916
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->b(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 1918
    if-eqz p1, :cond_2

    .line 1919
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1921
    goto :goto_0
.end method

.method private r(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1926
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1927
    const/16 v0, 0x5aa

    .line 1943
    :goto_0
    return v0

    .line 1932
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 1933
    const/4 v0, 0x0

    .line 1934
    if-eqz p1, :cond_1

    .line 1935
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1936
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1938
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->m(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 1940
    if-eqz p1, :cond_2

    .line 1941
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1943
    goto :goto_0
.end method

.method private s(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1948
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1949
    const/16 v0, 0x5aa

    .line 1965
    :goto_0
    return v0

    .line 1954
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 1955
    const/4 v0, 0x0

    .line 1956
    if-eqz p1, :cond_1

    .line 1957
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 1958
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 1960
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->n(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 1962
    if-eqz p1, :cond_2

    .line 1963
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1965
    goto :goto_0
.end method

.method private t(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2017
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2018
    const/16 v0, 0x5aa

    .line 2041
    :cond_0
    :goto_0
    return v0

    .line 2025
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 2026
    const/4 v0, 0x0

    .line 2027
    if-eqz p1, :cond_2

    .line 2028
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2029
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 2032
    :goto_1
    iget-object v0, p0, Li;->bq:Lo;

    .line 2031
    invoke-interface {v2, v1, v0, p2}, Lac;->d(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 2033
    if-eqz p1, :cond_0

    .line 2034
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2038
    :catch_0
    move-exception v0

    .line 2041
    const/16 v0, 0x599

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lbfl;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0, p1, p2}, Li;->d(Lbfl;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;)I
    .locals 3

    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 328
    const/4 v0, 0x0

    .line 329
    if-eqz p1, :cond_1

    .line 330
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 331
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 334
    :goto_0
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v2, v1, v0}, Lac;->a(Laj;Lo;)I

    move-result v0

    .line 336
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_1
    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 346
    const/16 v0, 0x514

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lbfm;Lbgb;)I
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Li;->b(Lbfm;Lbgb;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;Lbgc;)I
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Li;->d(Lbfm;Lbgc;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Li;->m(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 7

    .prologue
    .line 2849
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2850
    const/16 v0, 0x5aa

    .line 2870
    :cond_0
    :goto_0
    return v0

    .line 2856
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2857
    const/4 v1, 0x0

    .line 2858
    if-eqz p1, :cond_2

    .line 2859
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2860
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2864
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2863
    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2867
    if-eqz p1, :cond_0

    .line 2868
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfm;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2595
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2596
    const/16 v0, 0x5aa

    .line 2614
    :cond_0
    :goto_0
    return v0

    .line 2602
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2604
    if-eqz p1, :cond_2

    .line 2605
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2606
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2610
    :goto_1
    iget-object v2, p0, Li;->bq:Lo;

    move-object v4, p2

    move-object v5, p3

    .line 2609
    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2611
    if-eqz p1, :cond_0

    .line 2612
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1
.end method

.method public a(Lbfm;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2902
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2903
    const/16 v0, 0x5aa

    .line 2921
    :cond_0
    :goto_0
    return v0

    .line 2909
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2910
    const/4 v1, 0x0

    .line 2911
    if-eqz p1, :cond_2

    .line 2912
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2913
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2915
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 2918
    if-eqz p1, :cond_0

    .line 2919
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfm;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2637
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2638
    const/16 v0, 0x5aa

    .line 2655
    :cond_0
    :goto_0
    return v0

    .line 2644
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2645
    const/4 v1, 0x0

    .line 2646
    if-eqz p1, :cond_2

    .line 2647
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2648
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2650
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 2652
    if-eqz p1, :cond_0

    .line 2653
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfm;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0, p1, p2, p3, p4}, Li;->b(Lbfm;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0, p1, p2}, Li;->b(Lbfm;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0, p1, p2, p3}, Li;->g(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfm;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 7

    .prologue
    .line 2800
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2801
    const/16 v0, 0x5aa

    .line 2820
    :cond_0
    :goto_0
    return v0

    .line 2807
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 2808
    const/4 v1, 0x0

    .line 2809
    if-eqz p1, :cond_2

    .line 2810
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 2811
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2815
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2814
    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2817
    if-eqz p1, :cond_0

    .line 2818
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfv;)I
    .locals 3

    .prologue
    .line 3514
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 3516
    const/4 v0, 0x0

    .line 3517
    if-eqz p1, :cond_1

    .line 3518
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 3519
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 3521
    :goto_0
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v2, v1, v0}, Lac;->c(Laj;Lo;)I

    move-result v0

    .line 3522
    if-eqz p1, :cond_0

    .line 3523
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3530
    :cond_0
    :goto_1
    return v0

    .line 3527
    :catch_0
    move-exception v0

    .line 3530
    const/16 v0, 0x514

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lbfv;Lbfw;)I
    .locals 1

    .prologue
    .line 3716
    invoke-direct {p0, p1, p2}, Li;->b(Lbfv;Lbfw;)I

    move-result v0

    return v0
.end method

.method public a(Lbfv;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3594
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3595
    const/16 v0, 0x5aa

    .line 3618
    :cond_0
    :goto_0
    return v0

    .line 3602
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3604
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3605
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3607
    iget-object v2, p0, Li;->bq:Lo;

    .line 3606
    invoke-interface {v0, v1, v2, p2}, Lac;->k(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 3608
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    if-nez v0, :cond_0

    .line 3613
    const/4 v0, 0x0

    goto :goto_0

    .line 3615
    :catch_0
    move-exception v0

    .line 3618
    const/16 v0, 0x598

    goto :goto_0
.end method

.method public a(Lbfx;)I
    .locals 3

    .prologue
    .line 370
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v2

    .line 372
    const/4 v0, 0x0

    .line 373
    if-eqz p1, :cond_1

    .line 374
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 375
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 377
    :goto_0
    iget-object v0, p0, Li;->bq:Lo;

    invoke-interface {v2, v1, v0}, Lac;->a(Laj;Lo;)I

    move-result v0

    .line 378
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_1
    return v0

    .line 383
    :catch_0
    move-exception v0

    .line 386
    const/16 v0, 0x514

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lbfx;Lbgb;)I
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Li;->b(Lbfx;Lbgb;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;Lbgc;)I
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Li;->d(Lbfx;Lbgc;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 791
    invoke-direct {p0, p1, p2}, Li;->k(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 7

    .prologue
    .line 3250
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3251
    const/16 v0, 0x5aa

    .line 3271
    :cond_0
    :goto_0
    return v0

    .line 3257
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3258
    const/4 v1, 0x0

    .line 3259
    if-eqz p1, :cond_2

    .line 3260
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3261
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3265
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3264
    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3268
    if-eqz p1, :cond_0

    .line 3269
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2991
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 2992
    const/16 v0, 0x5aa

    .line 3010
    :cond_0
    :goto_0
    return v0

    .line 2998
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3000
    if-eqz p1, :cond_2

    .line 3001
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3002
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3006
    :goto_1
    iget-object v2, p0, Li;->bq:Lo;

    move-object v4, p2

    move-object v5, p3

    .line 3005
    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3007
    if-eqz p1, :cond_0

    .line 3008
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3304
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3305
    const/16 v0, 0x5aa

    .line 3323
    :cond_0
    :goto_0
    return v0

    .line 3311
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3312
    const/4 v1, 0x0

    .line 3313
    if-eqz p1, :cond_2

    .line 3314
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3315
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3317
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 3320
    if-eqz p1, :cond_0

    .line 3321
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3033
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3034
    const/16 v0, 0x5aa

    .line 3051
    :cond_0
    :goto_0
    return v0

    .line 3040
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3041
    const/4 v1, 0x0

    .line 3042
    if-eqz p1, :cond_2

    .line 3043
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3044
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3046
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lac;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 3048
    if-eqz p1, :cond_0

    .line 3049
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 765
    invoke-direct {p0, p1, p2, p3, p4}, Li;->b(Lbfx;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0, p1, p2}, Li;->b(Lbfx;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 735
    invoke-direct {p0, p1, p2, p3}, Li;->g(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lbfx;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 7

    .prologue
    .line 3200
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3201
    const/16 v0, 0x5aa

    .line 3220
    :cond_0
    :goto_0
    return v0

    .line 3207
    :cond_1
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3208
    const/4 v1, 0x0

    .line 3209
    if-eqz p1, :cond_2

    .line 3210
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3211
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3215
    :cond_2
    iget-object v2, p0, Li;->bq:Lo;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3214
    invoke-interface/range {v0 .. v6}, Lac;->a(Laj;Lo;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3217
    if-eqz p1, :cond_0

    .line 3218
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3382
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3383
    const/16 v0, 0x5aa

    .line 3403
    :cond_0
    :goto_0
    return v0

    .line 3390
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3393
    iget-object v1, p0, Li;->bq:Lo;

    .line 3392
    invoke-interface {v0, v1, p1, p2}, Lac;->a(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3394
    if-nez v0, :cond_0

    .line 3398
    const/4 v0, 0x0

    goto :goto_0

    .line 3400
    :catch_0
    move-exception v0

    .line 3403
    const/16 v0, 0x514

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0, p1, p2}, Li;->c(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3722
    invoke-direct {p0, p1, p2}, Li;->d(Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a([B[B[BC)I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Li;->b([B[B[BC)I

    move-result v0

    return v0
.end method

.method public b(Lbfl;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3535
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3536
    const/16 v0, 0x5aa

    .line 3560
    :cond_0
    :goto_0
    return v0

    .line 3543
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3545
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3546
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v2

    invoke-virtual {v2}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3548
    iget-object v2, p0, Li;->bq:Lo;

    .line 3547
    invoke-interface {v0, v1, v2, p2}, Lac;->k(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 3549
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v2

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3552
    if-nez v0, :cond_0

    .line 3555
    const/4 v0, 0x0

    goto :goto_0

    .line 3557
    :catch_0
    move-exception v0

    .line 3560
    const/16 v0, 0x598

    goto :goto_0
.end method

.method public b(Lbfm;)I
    .locals 1

    .prologue
    .line 2945
    invoke-direct {p0, p1}, Li;->c(Lbfm;)I

    move-result v0

    return v0
.end method

.method public b(Lbfm;Lbgc;)I
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Li;->f(Lbfm;Lbgc;)I

    move-result v0

    return v0
.end method

.method public b(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0, p1, p2}, Li;->o(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Lbfm;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 2677
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2678
    const/16 v0, 0x5aa

    .line 2696
    :goto_0
    return v0

    .line 2684
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2685
    const/4 v0, 0x0

    .line 2686
    if-eqz p1, :cond_1

    .line 2687
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2688
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2692
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2691
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2693
    if-eqz p1, :cond_2

    .line 2694
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2696
    goto :goto_0
.end method

.method public b(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0, p1, p2, p3}, Li;->h(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public b(Lbfv;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3624
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3625
    const/16 v0, 0x5aa

    .line 3647
    :cond_0
    :goto_0
    return v0

    .line 3632
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3634
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3635
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3637
    iget-object v2, p0, Li;->bq:Lo;

    .line 3636
    invoke-interface {v0, v1, v2, p2}, Lac;->l(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 3638
    if-nez v0, :cond_0

    .line 3641
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    const/4 v0, 0x0

    goto :goto_0

    .line 3644
    :catch_0
    move-exception v0

    .line 3647
    const/16 v0, 0x598

    goto :goto_0
.end method

.method public b(Lbfx;)I
    .locals 1

    .prologue
    .line 3348
    invoke-direct {p0, p1}, Li;->c(Lbfx;)I

    move-result v0

    return v0
.end method

.method public b(Lbfx;Lbgc;)I
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Li;->f(Lbfx;Lbgc;)I

    move-result v0

    return v0
.end method

.method public b(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0, p1, p2}, Li;->m(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 3074
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3075
    const/16 v0, 0x5aa

    .line 3093
    :goto_0
    return v0

    .line 3081
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 3082
    const/4 v0, 0x0

    .line 3083
    if-eqz p1, :cond_1

    .line 3084
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 3085
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3089
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 3088
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 3090
    if-eqz p1, :cond_2

    .line 3091
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 3093
    goto :goto_0
.end method

.method public b(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0, p1, p2, p3}, Li;->h(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3408
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3409
    const/16 v0, 0x5aa

    .line 3428
    :cond_0
    :goto_0
    return v0

    .line 3416
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3419
    iget-object v1, p0, Li;->bq:Lo;

    .line 3418
    invoke-interface {v0, v1, p1, p2}, Lac;->b(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3420
    if-nez v0, :cond_0

    .line 3423
    const/4 v0, 0x0

    goto :goto_0

    .line 3425
    :catch_0
    move-exception v0

    .line 3428
    const/16 v0, 0x514

    goto :goto_0
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0, p1, p2}, Li;->c(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3756
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3757
    const/16 v0, 0x5aa

    .line 3765
    :goto_0
    return v0

    .line 3762
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3764
    iget-object v1, p0, Li;->bq:Lo;

    .line 3763
    invoke-interface {v0, v1, p1, p2}, Lac;->a(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lbfl;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3565
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_1

    .line 3566
    const/16 v0, 0x5aa

    .line 3588
    :cond_0
    :goto_0
    return v0

    .line 3573
    :cond_1
    :try_start_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3575
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 3576
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v2

    invoke-virtual {v2}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3578
    iget-object v2, p0, Li;->bq:Lo;

    .line 3577
    invoke-interface {v0, v1, v2, p2}, Lac;->l(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 3579
    if-nez v0, :cond_0

    .line 3582
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v0

    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3583
    const/4 v0, 0x0

    goto :goto_0

    .line 3585
    :catch_0
    move-exception v0

    .line 3586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3588
    const/16 v0, 0x598

    goto :goto_0
.end method

.method public c(Lbfm;Lbgc;)I
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Li;->e(Lbfm;Lbgc;)I

    move-result v0

    return v0
.end method

.method public c(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Li;->n(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Lbfm;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 2718
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2719
    const/16 v0, 0x5aa

    .line 2737
    :goto_0
    return v0

    .line 2725
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2726
    const/4 v0, 0x0

    .line 2727
    if-eqz p1, :cond_1

    .line 2728
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2729
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2733
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2732
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->c(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2734
    if-eqz p1, :cond_2

    .line 2735
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2737
    goto :goto_0
.end method

.method public c(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0, p1, p2, p3}, Li;->i(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public c(Lbfx;Lbgc;)I
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0, p1, p2}, Li;->e(Lbfx;Lbgc;)I

    move-result v0

    return v0
.end method

.method public c(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Li;->l(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 3116
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3117
    const/16 v0, 0x5aa

    .line 3135
    :goto_0
    return v0

    .line 3123
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 3124
    const/4 v0, 0x0

    .line 3125
    if-eqz p1, :cond_1

    .line 3126
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 3127
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 3131
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 3130
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->c(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 3132
    if-eqz p1, :cond_2

    .line 3133
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 3135
    goto :goto_0
.end method

.method public c(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 916
    invoke-direct {p0, p1, p2, p3}, Li;->i(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3479
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3480
    const/16 v0, 0x5aa

    .line 3489
    :goto_0
    return v0

    .line 3485
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3488
    iget-object v1, p0, Li;->bq:Lo;

    .line 3487
    invoke-interface {v0, v1, p1, p2}, Lac;->c(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0
.end method

.method protected c(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1992
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 1993
    const/16 v0, 0x5aa

    .line 2010
    :goto_0
    return v0

    .line 1998
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 1999
    const/4 v0, 0x0

    .line 2000
    if-eqz p1, :cond_1

    .line 2001
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2002
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2004
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->n(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2006
    if-eqz p1, :cond_2

    .line 2007
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2008
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move v0, v1

    .line 2010
    goto :goto_0
.end method

.method public c(Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3771
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3772
    const/16 v0, 0x5aa

    .line 3780
    :goto_0
    return v0

    .line 3777
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3778
    iget-object v1, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, p1, p2}, Lac;->c(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 616
    invoke-direct {p0, p1, p2}, Li;->l(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2066
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2067
    const/16 v0, 0x5aa

    .line 2086
    :goto_0
    return v0

    .line 2073
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2075
    const/4 v0, 0x0

    .line 2076
    if-eqz p1, :cond_1

    .line 2077
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2078
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2082
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2081
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->e(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2083
    if-eqz p1, :cond_2

    .line 2084
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2086
    goto :goto_0
.end method

.method public d(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 941
    invoke-direct {p0, p1, p2}, Li;->j(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2322
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2323
    const/16 v0, 0x5aa

    .line 2342
    :goto_0
    return v0

    .line 2329
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2331
    const/4 v0, 0x0

    .line 2332
    if-eqz p1, :cond_1

    .line 2333
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2334
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2338
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2337
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->e(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2339
    if-eqz p1, :cond_2

    .line 2340
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2342
    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3494
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3495
    const/16 v0, 0x5aa

    .line 3504
    :goto_0
    return v0

    .line 3500
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3502
    iget-object v1, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, p1, p2}, Lac;->d(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Li;->p(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2196
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2197
    const/16 v0, 0x5aa

    .line 2214
    :goto_0
    return v0

    .line 2203
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2204
    const/4 v0, 0x0

    .line 2205
    if-eqz p1, :cond_1

    .line 2206
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2207
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2210
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2209
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->f(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2211
    if-eqz p1, :cond_2

    .line 2212
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2214
    goto :goto_0
.end method

.method public e(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0, p1, p2}, Li;->n(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2455
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2456
    const/16 v0, 0x5aa

    .line 2473
    :goto_0
    return v0

    .line 2462
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2463
    const/4 v0, 0x0

    .line 2464
    if-eqz p1, :cond_1

    .line 2465
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2466
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2469
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2468
    invoke-interface {v1, v0, v2, p2, p3}, Lac;->f(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 2470
    if-eqz p1, :cond_2

    .line 2471
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2473
    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3728
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3729
    const/16 v0, 0x5aa

    .line 3737
    :goto_0
    return v0

    .line 3734
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3735
    iget-object v1, p0, Li;->bq:Lo;

    invoke-interface {v0, v1, p1, p2}, Lac;->e(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0
.end method

.method public f(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0, p1, p2}, Li;->t(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3433
    invoke-direct {p0, p1, p2, p3}, Li;->j(Lbfm;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public f(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1006
    invoke-direct {p0, p1, p2}, Li;->p(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3456
    invoke-direct {p0, p1, p2, p3}, Li;->j(Lbfx;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3787
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 3788
    const/16 v0, 0x5aa

    .line 3796
    :goto_0
    return v0

    .line 3793
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v0

    .line 3795
    iget-object v1, p0, Li;->bq:Lo;

    .line 3794
    invoke-interface {v0, v1, p1, p2}, Lac;->f(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0
.end method

.method public g(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0, p1, p2}, Li;->q(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g(Lbfx;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0, p1, p2}, Li;->o(Lbfx;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1052
    invoke-direct {p0, p1, p2}, Li;->r(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2369
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2370
    const/16 v0, 0x5aa

    .line 2386
    :goto_0
    return v0

    .line 2375
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2376
    const/4 v0, 0x0

    .line 2377
    if-eqz p1, :cond_1

    .line 2378
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2379
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2382
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2381
    invoke-interface {v1, v0, v2, p2}, Lac;->h(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2383
    if-eqz p1, :cond_2

    .line 2384
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2386
    goto :goto_0
.end method

.method public i(Lbfm;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1074
    invoke-direct {p0, p1, p2}, Li;->s(Lbfm;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Lbfx;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2411
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2412
    const/16 v0, 0x5aa

    .line 2429
    :goto_0
    return v0

    .line 2418
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2419
    const/4 v0, 0x0

    .line 2420
    if-eqz p1, :cond_1

    .line 2421
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2422
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2424
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->i(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2426
    if-eqz p1, :cond_2

    .line 2427
    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2429
    goto :goto_0
.end method

.method public j(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2112
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2113
    const/16 v0, 0x5aa

    .line 2129
    :goto_0
    return v0

    .line 2118
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2119
    const/4 v0, 0x0

    .line 2120
    if-eqz p1, :cond_1

    .line 2121
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2122
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2125
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    .line 2124
    invoke-interface {v1, v0, v2, p2}, Lac;->h(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2126
    if-eqz p1, :cond_2

    .line 2127
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2129
    goto :goto_0
.end method

.method public k(Lbfm;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2153
    iget-boolean v0, p0, Li;->bo:Z

    if-nez v0, :cond_0

    .line 2154
    const/16 v0, 0x5aa

    .line 2171
    :goto_0
    return v0

    .line 2160
    :cond_0
    invoke-static {}, Lad;->a()Lac;

    move-result-object v1

    .line 2161
    const/4 v0, 0x0

    .line 2162
    if-eqz p1, :cond_1

    .line 2163
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2164
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v2}, Lbfx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laj;->a(Ljava/lang/String;)V

    .line 2166
    :cond_1
    iget-object v2, p0, Li;->bq:Lo;

    invoke-interface {v1, v0, v2, p2}, Lac;->i(Laj;Lo;Ljava/lang/String;)I

    move-result v1

    .line 2168
    if-eqz p1, :cond_2

    .line 2169
    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {v0}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 2171
    goto :goto_0
.end method
