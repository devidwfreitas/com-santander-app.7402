.class public Lae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;
.implements Lx;
.implements Ly;
.implements Lz;


# static fields
.field private static final bo:Ljava/lang/String; = "70"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A(Laj;Lo;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/16 v1, 0x51e

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4344
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4345
    invoke-virtual {p0, p2, p3, v0}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v4

    .line 4347
    if-eqz v4, :cond_1

    .line 4348
    const/16 v0, 0x58f

    .line 4398
    :cond_0
    :goto_0
    return v0

    .line 4351
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v5, :cond_2

    .line 4352
    const/16 v0, 0x583

    goto :goto_0

    .line 4355
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4361
    invoke-virtual {p0, p1, p2, v0}, Lae;->p(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 4362
    if-nez v0, :cond_0

    .line 4369
    new-instance v4, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lbp;-><init>([B[B)V

    .line 4370
    new-instance v5, Lal;

    invoke-direct {v5}, Lal;-><init>()V

    .line 4371
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 4373
    if-eqz v0, :cond_3

    move v0, v1

    .line 4374
    goto :goto_0

    .line 4377
    :cond_3
    invoke-virtual {v5}, Lal;->w()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {v5}, Lal;->L()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    .line 4378
    :goto_1
    if-nez v0, :cond_5

    .line 4379
    const/16 v0, 0x589

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4377
    goto :goto_1

    .line 4382
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lal;->c(I)V

    .line 4383
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lal;->i(I)V

    .line 4385
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4386
    invoke-static {v5, v4, v0}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 4387
    if-eqz v3, :cond_6

    move v0, v1

    .line 4388
    goto :goto_0

    .line 4390
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 4391
    goto :goto_0

    .line 4393
    :catch_0
    move-exception v0

    .line 4394
    throw v0

    .line 4395
    :catch_1
    move-exception v0

    .line 4398
    const/16 v0, 0x58b

    goto :goto_0
.end method

.method private B(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 5081
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 5126
    :cond_1
    :goto_0
    return v0

    .line 5085
    :cond_2
    if-eqz p2, :cond_1

    .line 5089
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5093
    if-nez p3, :cond_3

    .line 5094
    const/16 v0, 0x5a0

    goto :goto_0

    .line 5098
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 5100
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 5101
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 5102
    if-eqz v3, :cond_4

    move v0, v1

    .line 5103
    goto :goto_0

    .line 5106
    :cond_4
    invoke-virtual {v2, p3}, Lal;->l(Ljava/lang/String;)V

    .line 5108
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5109
    invoke-static {v2, v0, v3}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5110
    if-eqz v0, :cond_5

    move v0, v1

    .line 5111
    goto :goto_0

    .line 5113
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5115
    const/4 v0, 0x0

    goto :goto_0

    .line 5117
    :catch_0
    move-exception v0

    .line 5119
    const/16 v0, 0x524

    goto :goto_0

    .line 5120
    :catch_1
    move-exception v0

    .line 5126
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private C(Laj;Lo;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    .line 5457
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 5514
    :cond_1
    :goto_0
    return v0

    .line 5461
    :cond_2
    if-eqz p2, :cond_1

    .line 5465
    invoke-virtual {p2}, Lo;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5469
    if-nez p3, :cond_3

    .line 5470
    const/16 v0, 0x59a

    goto :goto_0

    .line 5473
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v3

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lbp;-><init>([B[B)V

    .line 5475
    new-instance v3, Lak;

    invoke-direct {v3}, Lak;-><init>()V

    .line 5476
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lak;->a(Ljava/lang/String;Lbl;Lak;)I

    move-result v4

    .line 5477
    if-eqz v4, :cond_4

    move v0, v1

    .line 5478
    goto :goto_0

    .line 5481
    :cond_4
    invoke-virtual {v3}, Lak;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5482
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lak;->c(I)V

    .line 5499
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5500
    invoke-static {v3, v0, v1}, Lak;->a(Lak;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5501
    if-nez v0, :cond_1

    .line 5504
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    move v0, v2

    .line 5505
    goto :goto_0

    .line 5485
    :cond_5
    invoke-virtual {v3}, Lak;->o()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lak;->c(I)V

    .line 5487
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5488
    invoke-static {v3, v0, v1}, Lak;->a(Lak;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5489
    if-nez v0, :cond_1

    .line 5494
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5495
    const/16 v0, 0x59c

    goto :goto_0

    .line 5506
    :catch_0
    move-exception v0

    .line 5508
    const/16 v0, 0x524

    goto :goto_0

    .line 5509
    :catch_1
    move-exception v0

    .line 5514
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private D(Laj;Lo;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v1, 0x59a

    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/4 v3, 0x0

    .line 5527
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 5586
    :cond_1
    :goto_0
    return v0

    .line 5531
    :cond_2
    if-eqz p2, :cond_1

    .line 5535
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5540
    if-nez p3, :cond_3

    move v0, v1

    .line 5541
    goto :goto_0

    .line 5545
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 5546
    goto :goto_0

    .line 5549
    :cond_4
    new-instance v1, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbp;-><init>([B[B)V

    .line 5551
    new-instance v4, Lak;

    invoke-direct {v4}, Lak;-><init>()V

    .line 5552
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lak;->a(Ljava/lang/String;Lbl;Lak;)I

    move-result v0

    .line 5553
    if-eqz v0, :cond_5

    move v0, v2

    .line 5554
    goto :goto_0

    .line 5556
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 5557
    sget-object v0, Lae;->j:[B

    .line 5558
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 5559
    :goto_1
    array-length v6, v2

    if-lt v0, v6, :cond_6

    .line 5564
    invoke-virtual {v4, p3}, Lak;->f(Ljava/lang/String;)V

    .line 5565
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lak;->c(I)V

    .line 5566
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lak;->h(I)V

    .line 5568
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5569
    invoke-static {v4, v1, v2}, Lak;->a(Lak;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5570
    if-nez v0, :cond_1

    .line 5573
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    move v0, v3

    .line 5575
    goto :goto_0

    .line 5560
    :cond_6
    aget-char v6, v2, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_7

    .line 5561
    const/16 v0, 0x5a2

    goto :goto_0

    .line 5559
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5577
    :catch_0
    move-exception v0

    .line 5579
    const/16 v0, 0x524

    goto :goto_0

    .line 5580
    :catch_1
    move-exception v0

    .line 5586
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private a(Laj;Lal;Lbl;)I
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 634
    check-cast p3, Lbp;

    invoke-static {p2, p3, v0}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 636
    if-eqz v1, :cond_0

    .line 637
    const/16 v0, 0x51e

    .line 641
    :goto_0
    return v0

    .line 640
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Laj;Lal;Lbl;Lap;Lbl;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/16 v3, 0x529

    .line 1713
    .line 1716
    const-string v2, "#"

    .line 1720
    :try_start_0
    invoke-virtual {p4}, Lap;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 1722
    invoke-virtual {p4}, Lap;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Lbl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1726
    if-eqz v4, :cond_d

    .line 1728
    invoke-static {v4, v2}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 1730
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1731
    rem-int/lit8 v2, v6, 0x2

    if-ne v2, v8, :cond_0

    move v0, v3

    .line 1855
    :goto_0
    return v0

    :cond_0
    move v4, v0

    move-object v2, v1

    .line 1735
    :goto_1
    if-lt v4, v6, :cond_1

    .line 1767
    :goto_2
    invoke-virtual {p4}, Lap;->g()I

    move-result v0

    if-nez v0, :cond_4

    .line 1769
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 1770
    invoke-virtual {p2}, Lal;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lal;->g(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p2}, Lal;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lal;->c(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p4}, Lap;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lal;->e(Ljava/lang/String;)V

    .line 1773
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lal;->x(I)V

    .line 1774
    invoke-virtual {p4}, Lap;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lal;->j(I)V

    .line 1775
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lal;Lbl;)I

    move-result v0

    goto :goto_0

    .line 1736
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1738
    const-string v7, "CMD_AT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1740
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1742
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v3

    .line 1745
    goto :goto_0

    .line 1747
    :cond_2
    const-string v7, "CMD_UP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1749
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1751
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    .line 1753
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 1735
    :goto_3
    add-int/lit8 v2, v4, 0x2

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 1777
    :cond_4
    invoke-virtual {p4}, Lap;->g()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 1779
    invoke-virtual {p2}, Lal;->L()I

    move-result v0

    if-nez v0, :cond_6

    .line 1783
    invoke-virtual {p4}, Lap;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->g(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p4}, Lap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->c(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p4}, Lap;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->e(Ljava/lang/String;)V

    .line 1788
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lal;->x(I)V

    .line 1789
    invoke-virtual {p4}, Lap;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lal;->j(I)V

    .line 1791
    invoke-virtual {p4}, Lap;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->b(Ljava/lang/String;)V

    .line 1794
    if-eqz v2, :cond_5

    .line 1795
    invoke-interface {p5, v2}, Lbl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1796
    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1797
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    invoke-virtual {p2, v1}, Lal;->m(Ljava/lang/String;)V

    .line 1803
    invoke-interface {p5, v0}, Lbl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->n(Ljava/lang/String;)V

    .line 1846
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lal;Lbl;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 1808
    goto/16 :goto_0

    .line 1815
    :cond_6
    invoke-virtual {p2}, Lal;->L()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 1817
    invoke-virtual {p2}, Lal;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lap;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1820
    invoke-virtual {p4}, Lap;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->b(Ljava/lang/String;)V

    .line 1822
    if-eqz v1, :cond_8

    .line 1823
    invoke-interface {p5, v1}, Lbl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-interface {p5, v0}, Lbl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lal;->n(Ljava/lang/String;)V

    .line 1835
    :cond_7
    invoke-virtual {p4}, Lap;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lal;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1848
    :catch_0
    move-exception v0

    .line 1855
    const/16 v0, 0x514

    goto/16 :goto_0

    :cond_8
    move v0, v3

    .line 1829
    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 1839
    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 1843
    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_c
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3

    :cond_d
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private a(Laj;Lbo;)I
    .locals 7

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 78
    const/16 v0, 0x522

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p2}, Lbo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    new-instance v3, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lbp;-><init>([B[B)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v6

    invoke-static {v6}, Laz;->a([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lca;->a([B)[B

    move-result-object v0

    .line 100
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-direct {v4, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v3, v4}, Lbl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 103
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lal;->c(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    check-cast v0, [B

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    invoke-static {v4, v3, v0}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 113
    if-eqz v3, :cond_3

    move v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 129
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private a(Laj;Lbo;Lai;)I
    .locals 6

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 288
    if-nez p3, :cond_1

    .line 289
    const/16 v0, 0x522

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_3
    if-eqz p2, :cond_0

    .line 302
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    new-instance v2, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lbp;-><init>([B[B)V

    .line 309
    new-instance v3, Lal;

    invoke-direct {v3}, Lal;-><init>()V

    .line 310
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 313
    if-eqz v0, :cond_4

    move v0, v1

    .line 314
    goto :goto_0

    .line 317
    :cond_4
    invoke-static {}, Lbr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lal;->d(Ljava/lang/String;)V

    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK - GERAR PASSO1"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Numero_de_serie "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Id_mobile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Id_server "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Token_versao_configuracao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->L()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK -\tStaStatusBO "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lal;->w()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK -\t-------------------------------------"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Lbm;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lbm;-><init>([B)V

    .line 331
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    invoke-static {v3, v0, v4}, Lao;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 334
    if-eqz v0, :cond_5

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lai;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Lbv;->printStackTrace()V

    .line 354
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 339
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    invoke-static {v3, v2, v0}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v2

    .line 342
    if-eqz v2, :cond_6

    move v0, v1

    .line 343
    goto/16 :goto_0

    .line 345
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lai;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lbv; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private a(Laj;Lbo;Lam;)I
    .locals 5

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 223
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 266
    :cond_1
    :goto_0
    return v0

    .line 227
    :cond_2
    if-eqz p2, :cond_1

    .line 230
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    if-nez p3, :cond_3

    .line 235
    const/16 v0, 0x522

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    .line 241
    new-instance v2, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v3

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbp;-><init>([B[B)V

    .line 242
    new-instance v3, Lal;

    invoke-direct {v3}, Lal;-><init>()V

    .line 243
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v2

    .line 245
    if-eqz v2, :cond_4

    move v0, v1

    .line 246
    goto :goto_0

    .line 253
    :cond_4
    invoke-virtual {p3, v3, v0}, Lam;->a(Lal;[B)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    move v0, v1

    .line 259
    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 266
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private a(Laj;Lbo;Lan;)I
    .locals 5

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 5604
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 5643
    :cond_1
    :goto_0
    return v0

    .line 5608
    :cond_2
    if-eqz p2, :cond_1

    .line 5611
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5615
    if-nez p3, :cond_3

    .line 5616
    const/16 v0, 0x522

    goto :goto_0

    .line 5619
    :cond_3
    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    .line 5622
    new-instance v2, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v3

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbp;-><init>([B[B)V

    .line 5623
    new-instance v3, Lak;

    invoke-direct {v3}, Lak;-><init>()V

    .line 5624
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lak;->a(Ljava/lang/String;Lbl;Lak;)I

    move-result v2

    .line 5626
    if-eqz v2, :cond_4

    move v0, v1

    .line 5627
    goto :goto_0

    .line 5630
    :cond_4
    invoke-virtual {p3, v3, v0}, Lan;->a(Lak;[B)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5632
    const/4 v0, 0x0

    goto :goto_0

    .line 5634
    :catch_0
    move-exception v0

    move v0, v1

    .line 5636
    goto :goto_0

    .line 5637
    :catch_1
    move-exception v0

    .line 5643
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private a(Laj;Lbo;Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 392
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 393
    :cond_0
    const/16 v0, 0x51e

    .line 626
    :cond_1
    :goto_0
    return v0

    .line 396
    :cond_2
    if-nez p2, :cond_3

    .line 397
    const/16 v0, 0x523

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {p2}, Lbo;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 400
    const/16 v0, 0x523

    goto :goto_0

    .line 403
    :cond_4
    if-nez p3, :cond_5

    .line 404
    const/16 v0, 0x529

    goto :goto_0

    .line 410
    :cond_5
    new-instance v3, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lbp;-><init>([B[B)V

    .line 411
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 412
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 415
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK - GERAR PASSO2"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Numero_de_serie "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Id_mobile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Id_server "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Token_versao_configuracao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->L()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATABLINK -\tStaStatusBO "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->w()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK -\t-------------------------------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    if-eqz v0, :cond_6

    .line 427
    const/16 v0, 0x51e

    goto/16 :goto_0

    .line 435
    :cond_6
    new-instance v5, Lbm;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lbm;-><init>([B)V

    .line 436
    new-instance v4, Lap;

    invoke-direct {v4}, Lap;-><init>()V

    .line 438
    invoke-static {p3, v5, v4}, Lap;->a(Ljava/lang/String;Lbl;Lap;)I

    move-result v0

    .line 443
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "DATABLINK - GERAR PASSO2"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getNumero_de_serie: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - infoGerenciamento.getNumero_de_serie: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getId_mobile: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - infoGerenciamento.getFicha_mobile: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getId_server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tinfoGerenciamento.getFicha_server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getFicha_comunicacao: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - infoGerenciamento.getFicha_comunicacao: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getToken_versao_configuracao: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - infoGerenciamento.getVersao_configuracao: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - tokenInfo.getStatus: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->L()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK - infoGerenciamento.getStatus_server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->g()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK -\ttokenInfo.StaStatusBO: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lal;->w()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK -\tinfoGerenciamento.getStatusBO_server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lap;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "DATABLINK -\t-------------------------------------"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    if-eqz v0, :cond_7

    .line 468
    const/16 v0, 0x529

    goto/16 :goto_0

    .line 476
    :cond_7
    invoke-virtual {v4}, Lap;->j()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lal;->a(I)V

    .line 485
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    if-eqz v0, :cond_8

    .line 486
    invoke-virtual {v2}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 487
    const/16 v0, 0x52a

    goto/16 :goto_0

    .line 494
    :cond_8
    invoke-virtual {v2}, Lal;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 495
    const/16 v0, 0x52b

    goto/16 :goto_0

    .line 502
    :cond_9
    invoke-virtual {v2}, Lal;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 503
    const/16 v0, 0x52c

    goto/16 :goto_0

    .line 509
    :cond_a
    const-string v0, ""

    invoke-virtual {v2, v0}, Lal;->d(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v4}, Lap;->g()I

    move-result v0

    if-nez v0, :cond_c

    .line 520
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    if-nez v0, :cond_b

    .line 525
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 527
    :cond_b
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    if-eqz v0, :cond_14

    .line 533
    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    .line 534
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0, v1, p2}, Lae;->b(Laj;Lbo;)I

    move-result v0

    .line 536
    if-nez v0, :cond_1

    .line 539
    invoke-virtual {v1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 543
    :cond_c
    invoke-virtual {v4}, Lap;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 545
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    move-object v0, p0

    move-object v1, p1

    .line 551
    invoke-direct/range {v0 .. v5}, Lae;->a(Laj;Lal;Lbl;Lap;Lbl;)I

    move-result v0

    goto/16 :goto_0

    .line 554
    :cond_d
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    if-nez v0, :cond_e

    move-object v0, p0

    move-object v1, p1

    .line 559
    invoke-direct/range {v0 .. v5}, Lae;->a(Laj;Lal;Lbl;Lap;Lbl;)I

    move-result v0

    goto/16 :goto_0

    .line 562
    :cond_e
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 567
    invoke-virtual {v4}, Lap;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Lal;->x(I)V

    .line 568
    invoke-virtual {v4}, Lap;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lal;->j(I)V

    .line 569
    invoke-direct {p0, p1, v2, v3}, Lae;->a(Laj;Lal;Lbl;)I

    move-result v0

    goto/16 :goto_0

    .line 575
    :cond_f
    const/16 v0, 0x52d

    goto/16 :goto_0

    .line 578
    :cond_10
    invoke-virtual {v4}, Lap;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 580
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 584
    invoke-virtual {v4}, Lap;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lal;->j(I)V

    .line 586
    invoke-direct {p0, p1, v2, v3}, Lae;->a(Laj;Lal;Lbl;)I

    move-result v0

    goto/16 :goto_0

    .line 589
    :cond_11
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 595
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lal;->x(I)V

    .line 596
    invoke-virtual {v4}, Lap;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lal;->j(I)V

    .line 597
    invoke-direct {p0, p1, v2, v3}, Lae;->a(Laj;Lal;Lbl;)I
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 603
    :cond_12
    const/16 v0, 0x52d

    goto/16 :goto_0

    .line 611
    :cond_13
    const/16 v0, 0x52d

    goto/16 :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 618
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 619
    :catch_1
    move-exception v0

    .line 626
    :cond_14
    const/16 v0, 0x52e

    goto/16 :goto_0
.end method

.method private a(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 13

    .prologue
    .line 847
    if-nez p5, :cond_0

    .line 848
    const/16 v2, 0x522

    .line 1013
    :goto_0
    return v2

    .line 852
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 853
    :cond_1
    const/16 v2, 0x51e

    goto :goto_0

    .line 856
    :cond_2
    if-nez p2, :cond_3

    .line 857
    const/16 v2, 0x523

    goto :goto_0

    .line 859
    :cond_3
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 860
    const/16 v2, 0x523

    goto :goto_0

    .line 866
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 867
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 873
    :cond_5
    new-instance v2, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v3

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbp;-><init>([B[B)V

    .line 879
    new-instance v3, Lal;

    invoke-direct {v3}, Lal;-><init>()V

    .line 880
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v2

    .line 881
    if-eqz v2, :cond_6

    .line 882
    const/16 v2, 0x51e

    goto :goto_0

    .line 885
    :cond_6
    invoke-virtual {v3}, Lal;->L()I

    move-result v2

    .line 886
    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    .line 887
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 888
    const/16 v2, 0x520

    goto :goto_0

    .line 889
    :cond_7
    if-nez v2, :cond_8

    .line 890
    const/16 v2, 0x51f

    goto :goto_0

    .line 893
    :cond_8
    const/16 v2, 0x521

    goto :goto_0

    .line 899
    :cond_9
    invoke-virtual {v3}, Lal;->b()Z

    move-result v2

    if-nez v2, :cond_a

    .line 900
    const/16 v2, 0x528

    goto :goto_0

    .line 904
    :cond_a
    invoke-virtual {v3}, Lal;->i()I

    move-result v2

    .line 905
    invoke-virtual {v3}, Lal;->A()I

    move-result v6

    .line 906
    invoke-virtual {v3}, Lal;->z()I

    move-result v7

    .line 907
    invoke-virtual {v3}, Lal;->M()Ljava/lang/String;

    move-result-object v3

    .line 923
    new-instance v4, Law;

    invoke-static {v3}, Lae;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Law;-><init>([B)V

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v2, v2

    add-long/2addr v2, v8

    long-to-int v8, v2

    .line 925
    new-instance v9, Lav;

    new-instance v2, Lcq;

    invoke-direct {v2}, Lcq;-><init>()V

    invoke-direct {v9, v2}, Lav;-><init>(Lck;)V

    .line 926
    invoke-interface {v9, v4}, Lcm;->a(Lci;)V

    .line 930
    const-string v2, "ASCII"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 931
    const/4 v2, 0x0

    check-cast v2, [B

    .line 936
    if-eqz p3, :cond_d

    .line 937
    invoke-static/range {p3 .. p3}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 938
    array-length v2, v4

    array-length v5, v3

    add-int/2addr v2, v5

    new-array v5, v2, [B

    .line 940
    const/4 v2, 0x0

    :goto_1
    array-length v10, v3

    if-lt v2, v10, :cond_b

    .line 944
    const/4 v2, 0x0

    :goto_2
    array-length v10, v4

    if-lt v2, v10, :cond_c

    .line 949
    invoke-direct {p0, v5}, Lae;->a([B)[B

    move-result-object v2

    move-object v5, v2

    .line 958
    :goto_3
    const/4 v3, 0x0

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lae;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-static {v4}, Lae;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lae;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 963
    array-length v2, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x8

    new-array v11, v2, [B

    .line 967
    const/4 v2, 0x0

    :goto_4
    array-length v4, v10

    if-lt v2, v4, :cond_e

    .line 971
    array-length v2, v10

    add-int/lit8 v3, v2, 0x1

    .line 973
    const/4 v2, 0x0

    :goto_5
    array-length v4, v5

    if-lt v2, v4, :cond_f

    .line 978
    array-length v2, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v3, v2, 0x80

    .line 979
    div-int v2, v8, v7

    int-to-long v4, v2

    invoke-static {v4, v5}, Lae;->a(J)[B

    move-result-object v5

    .line 980
    const/4 v2, 0x0

    :goto_6
    array-length v4, v5

    if-lt v2, v4, :cond_10

    .line 988
    const/4 v2, 0x0

    array-length v3, v11

    invoke-interface {v9, v11, v2, v3}, Lcm;->a([BII)V

    .line 993
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 994
    const/4 v3, 0x0

    invoke-interface {v9, v2, v3}, Lcm;->a([BI)I

    .line 997
    const/16 v3, 0x13

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0xf

    .line 998
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 1000
    new-array v4, v6, [C

    .line 1001
    const/4 v3, 0x0

    :goto_7
    if-lt v3, v6, :cond_11

    .line 1005
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1009
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 941
    :cond_b
    aget-byte v10, v3, v2

    aput-byte v10, v5, v2

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 945
    :cond_c
    array-length v10, v3

    add-int/2addr v10, v2

    aget-byte v11, v4, v2

    aput-byte v11, v5, v10

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 952
    :cond_d
    invoke-direct {p0, v3}, Lae;->a([B)[B

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_3

    .line 968
    :cond_e
    add-int/lit8 v4, v3, 0x1

    aget-byte v12, v10, v2

    aput-byte v12, v11, v3

    .line 967
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    .line 974
    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v12, v5, v2

    aput-byte v12, v11, v3

    .line 973
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_5

    .line 981
    :cond_10
    add-int/lit8 v4, v3, 0x1

    aget-byte v7, v5, v2

    aput-byte v7, v11, v3

    .line 980
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_6

    .line 1002
    :cond_11
    sub-int v5, v6, v3

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v7, v2, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 1003
    div-int/lit8 v2, v2, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1011
    :catch_0
    move-exception v2

    .line 1013
    const/16 v2, 0x514

    goto/16 :goto_0
.end method

.method private a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 11

    .prologue
    .line 668
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    const/16 v0, 0x51e

    .line 806
    :goto_0
    return v0

    .line 672
    :cond_1
    if-nez p2, :cond_2

    .line 673
    const/16 v0, 0x523

    goto :goto_0

    .line 675
    :cond_2
    invoke-interface {p2}, Lbo;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 676
    const/16 v0, 0x523

    goto :goto_0

    .line 682
    :cond_3
    if-nez p4, :cond_4

    .line 683
    const/16 v0, 0x522

    goto :goto_0

    .line 686
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 697
    :cond_5
    new-instance v0, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v1

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbp;-><init>([B[B)V

    .line 704
    new-instance v1, Lal;

    invoke-direct {v1}, Lal;-><init>()V

    .line 705
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 706
    if-eqz v0, :cond_6

    .line 707
    const/16 v0, 0x51e

    goto :goto_0

    .line 710
    :cond_6
    invoke-virtual {v1}, Lal;->L()I

    move-result v0

    .line 711
    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 712
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 713
    const/16 v0, 0x520

    goto :goto_0

    .line 714
    :cond_7
    if-nez v0, :cond_8

    .line 715
    const/16 v0, 0x51f

    goto :goto_0

    .line 718
    :cond_8
    const/16 v0, 0x521

    goto :goto_0

    .line 721
    :cond_9
    invoke-virtual {v1}, Lal;->i()I

    move-result v0

    .line 722
    invoke-virtual {v1}, Lal;->x()I

    move-result v3

    .line 723
    invoke-virtual {v1}, Lal;->y()I

    move-result v4

    .line 724
    invoke-virtual {v1}, Lal;->M()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 736
    :try_start_1
    new-instance v2, Law;

    invoke-static {v1}, Lae;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Law;-><init>([B)V

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v0, v0

    add-long/2addr v0, v6

    long-to-int v5, v0

    .line 738
    new-instance v6, Lav;

    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    invoke-direct {v6, v0}, Lav;-><init>(Lck;)V

    .line 739
    invoke-interface {v6, v2}, Lcm;->a(Lci;)V

    .line 743
    if-nez p3, :cond_a

    .line 744
    div-int v0, v5, v4

    int-to-long v0, v0

    invoke-static {v0, v1}, Lae;->a(J)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {v6, v0, v1, v2}, Lcm;->a([BII)V

    .line 778
    :goto_1
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 779
    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Lcm;->a([BI)I

    .line 782
    const/16 v1, 0x13

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    .line 783
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 785
    new-array v2, v3, [C

    .line 786
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_e

    .line 790
    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 794
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 746
    :cond_a
    const/4 v1, 0x0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lae;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x15

    invoke-static {v2}, Lae;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 752
    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    .line 754
    const/4 v0, 0x0

    :goto_3
    array-length v2, v7

    if-lt v0, v2, :cond_b

    .line 758
    array-length v0, v7

    add-int/lit8 v1, v0, 0x1

    .line 759
    invoke-static {p3}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v9

    .line 760
    const/4 v0, 0x0

    :goto_4
    array-length v2, v9

    if-lt v0, v2, :cond_c

    .line 765
    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v1, v0, 0x80

    .line 766
    div-int v0, v5, v4

    int-to-long v4, v0

    invoke-static {v4, v5}, Lae;->a(J)[B

    move-result-object v4

    .line 767
    const/4 v0, 0x0

    :goto_5
    array-length v2, v4

    if-lt v0, v2, :cond_d

    .line 772
    const/4 v0, 0x0

    array-length v1, v8

    invoke-interface {v6, v8, v0, v1}, Lcm;->a([BII)V

    goto/16 :goto_1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const/16 v0, 0x514

    goto/16 :goto_0

    .line 755
    :cond_b
    add-int/lit8 v2, v1, 0x1

    aget-byte v9, v7, v0

    aput-byte v9, v8, v1

    .line 754
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    .line 761
    :cond_c
    add-int/lit8 v2, v1, 0x1

    aget-byte v10, v9, v0

    aput-byte v10, v8, v1

    .line 760
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_4

    .line 768
    :cond_d
    add-int/lit8 v2, v1, 0x1

    aget-byte v5, v4, v0

    aput-byte v5, v8, v1

    .line 767
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_5

    .line 787
    :cond_e
    sub-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v5, v0, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 788
    div-int/lit8 v0, v0, 0xa
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 800
    :catch_1
    move-exception v0

    .line 806
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private a(Laj;Lo;Ljava/lang/StringBuffer;I)I
    .locals 8

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x1

    .line 3008
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v1

    .line 3083
    :cond_1
    :goto_0
    return v0

    .line 3012
    :cond_2
    if-eqz p2, :cond_1

    .line 3015
    invoke-virtual {p2}, Lo;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3022
    if-nez p3, :cond_3

    .line 3023
    const/16 v0, 0x522

    goto :goto_0

    .line 3026
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 3027
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3034
    :cond_4
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v5

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lbp;-><init>([B[B)V

    .line 3036
    new-instance v5, Lal;

    invoke-direct {v5}, Lal;-><init>()V

    .line 3037
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v5}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 3038
    if-eqz v0, :cond_5

    move v0, v1

    .line 3039
    goto :goto_0

    .line 3045
    :cond_5
    invoke-virtual {v5}, Lal;->L()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 3047
    const/16 v0, 0x57c

    goto :goto_0

    .line 3051
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-virtual {v5}, Lal;->i()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    .line 3054
    if-ne p4, v4, :cond_7

    .line 3055
    invoke-virtual {v5}, Lal;->y()I

    move-result v0

    .line 3063
    :goto_1
    int-to-long v4, v0

    rem-long v4, v6, v4

    long-to-float v1, v4

    .line 3064
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_9

    move v0, v3

    .line 3070
    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move v0, v2

    .line 3072
    goto :goto_0

    .line 3056
    :cond_7
    const/4 v0, 0x2

    if-ne p4, v0, :cond_8

    .line 3057
    invoke-virtual {v5}, Lal;->z()I

    move-result v0

    goto :goto_1

    .line 3058
    :cond_8
    const/4 v0, 0x3

    if-ne p4, v0, :cond_a

    .line 3059
    invoke-virtual {v5}, Lal;->B()I
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 3067
    :cond_9
    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_2

    .line 3074
    :catch_0
    move-exception v0

    .line 3076
    const/16 v0, 0x524

    goto :goto_0

    .line 3077
    :catch_1
    move-exception v0

    .line 3083
    const/16 v0, 0x514

    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_1
.end method

.method private a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 3547
    :try_start_0
    new-instance v0, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Laf;-><init>([B)V

    .line 3548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "50&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Laf;->a(Ljava/lang/String;Lbgb;)Ljava/lang/String;

    move-result-object v0

    .line 3549
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3550
    const/4 v0, 0x0

    .line 3553
    :goto_0
    return v0

    .line 3551
    :catch_0
    move-exception v0

    .line 3553
    const/16 v0, 0x5ab

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    const-string v0, "S"

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":QH"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)[B
    .locals 8

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 1869
    new-array v0, v6, [B

    .line 1870
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1871
    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1872
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1873
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1874
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1875
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1876
    const/4 v1, 0x6

    ushr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1877
    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1878
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1896
    :try_start_0
    invoke-static {p0}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 1897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1898
    new-array v3, v2, [B

    .line 1899
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 1902
    array-length v0, v1

    sub-int v0, v2, v0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 1906
    return-object v3

    .line 1900
    :cond_0
    const/4 v4, 0x0

    aput-byte v4, v3, v0

    .line 1899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1903
    :cond_1
    aget-byte v2, v1, v0

    aput-byte v2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chave invalida."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1205
    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    .line 1206
    array-length v1, p1

    invoke-interface {v0, p1, v2, v1}, Lck;->a([BII)V

    .line 1207
    invoke-interface {v0}, Lck;->b()I

    move-result v1

    new-array v1, v1, [B

    .line 1208
    invoke-interface {v0, v1, v2}, Lck;->b([BI)I

    .line 1209
    return-object v1
.end method

.method private b(Laj;Lbo;)I
    .locals 8

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 146
    const/16 v0, 0x522

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz p2, :cond_0

    .line 152
    :try_start_0
    invoke-interface {p2}, Lbo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    new-instance v3, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lbp;-><init>([B[B)V

    .line 157
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 158
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 160
    if-eqz v0, :cond_2

    move v0, v1

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v5

    invoke-static {v5}, Laz;->a([B)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lca;->a([B)[B

    move-result-object v0

    .line 172
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v3, v5}, Lbl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v5, Lal;

    invoke-direct {v5}, Lal;-><init>()V

    .line 175
    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lal;->c(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    check-cast v0, [B

    .line 182
    invoke-virtual {v4}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lal;->g(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Lal;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lal;->j(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4}, Lal;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lal;->a(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    invoke-static {v5, v3, v0}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 190
    if-eqz v3, :cond_3

    move v0, v1

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 195
    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 206
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private b(Laj;Lbo;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x514

    .line 1639
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1640
    :cond_0
    const/16 v0, 0x51e

    .line 1702
    :cond_1
    :goto_0
    return v0

    .line 1643
    :cond_2
    if-eqz p2, :cond_1

    .line 1646
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    new-instance v0, Lbm;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lbm;-><init>([B)V

    .line 1654
    invoke-interface {v0, p3}, Lbl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1658
    const-string v2, "#"

    invoke-static {v0, v2}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 1659
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1660
    const-string v3, "CMD_SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1661
    goto :goto_0

    .line 1664
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1669
    new-instance v4, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lbp;-><init>([B[B)V

    .line 1670
    new-instance v5, Lal;

    invoke-direct {v5}, Lal;-><init>()V

    .line 1671
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 1672
    if-nez v0, :cond_1

    .line 1676
    invoke-virtual {v5}, Lal;->L()I

    move-result v0

    if-nez v0, :cond_4

    .line 1677
    const/16 v0, 0x51f

    goto :goto_0

    .line 1683
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {v5, v0}, Lal;->a(I)V

    .line 1690
    invoke-direct {p0, p1, v5, v4}, Lae;->a(Laj;Lal;Lbl;)I
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v0

    .line 1695
    const/16 v0, 0x524

    goto :goto_0

    .line 1696
    :catch_1
    move-exception v0

    move v0, v1

    .line 1702
    goto :goto_0
.end method

.method private b(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 13

    .prologue
    .line 1038
    if-nez p5, :cond_0

    .line 1039
    const/16 v2, 0x522

    .line 1198
    :goto_0
    return v2

    .line 1043
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1044
    :cond_1
    const/16 v2, 0x51e

    goto :goto_0

    .line 1047
    :cond_2
    if-nez p2, :cond_3

    .line 1048
    const/16 v2, 0x523

    goto :goto_0

    .line 1050
    :cond_3
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1051
    const/16 v2, 0x523

    goto :goto_0

    .line 1057
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1058
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1064
    :cond_5
    new-instance v2, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v3

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbp;-><init>([B[B)V

    .line 1070
    new-instance v3, Lal;

    invoke-direct {v3}, Lal;-><init>()V

    .line 1071
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v2

    .line 1072
    if-eqz v2, :cond_6

    .line 1073
    const/16 v2, 0x51e

    goto :goto_0

    .line 1076
    :cond_6
    invoke-virtual {v3}, Lal;->L()I

    move-result v2

    .line 1077
    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    .line 1078
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1079
    const/16 v2, 0x520

    goto :goto_0

    .line 1080
    :cond_7
    if-nez v2, :cond_8

    .line 1081
    const/16 v2, 0x51f

    goto :goto_0

    .line 1084
    :cond_8
    const/16 v2, 0x521

    goto :goto_0

    .line 1090
    :cond_9
    invoke-virtual {v3}, Lal;->c()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1091
    const/16 v2, 0x528

    goto :goto_0

    .line 1095
    :cond_a
    invoke-virtual {v3}, Lal;->i()I

    move-result v2

    .line 1096
    invoke-virtual {v3}, Lal;->C()I

    move-result v6

    .line 1097
    invoke-virtual {v3}, Lal;->B()I

    move-result v7

    .line 1098
    invoke-virtual {v3}, Lal;->M()Ljava/lang/String;

    move-result-object v3

    .line 1109
    new-instance v4, Law;

    invoke-static {v3}, Lae;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Law;-><init>([B)V

    .line 1110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v2, v2

    add-long/2addr v2, v8

    long-to-int v8, v2

    .line 1111
    new-instance v9, Lav;

    new-instance v2, Lcq;

    invoke-direct {v2}, Lcq;-><init>()V

    invoke-direct {v9, v2}, Lav;-><init>(Lck;)V

    .line 1112
    invoke-interface {v9, v4}, Lcm;->a(Lci;)V

    .line 1115
    const-string v2, "ASCII"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1116
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1121
    if-eqz p3, :cond_d

    .line 1122
    invoke-static/range {p3 .. p3}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 1123
    array-length v2, v4

    array-length v5, v3

    add-int/2addr v2, v5

    new-array v5, v2, [B

    .line 1125
    const/4 v2, 0x0

    :goto_1
    array-length v10, v3

    if-lt v2, v10, :cond_b

    .line 1129
    const/4 v2, 0x0

    :goto_2
    array-length v10, v4

    if-lt v2, v10, :cond_c

    .line 1134
    invoke-direct {p0, v5}, Lae;->a([B)[B

    move-result-object v2

    move-object v5, v2

    .line 1143
    :goto_3
    const/4 v3, 0x0

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lae;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-static {v4}, Lae;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lae;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 1148
    array-length v2, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x8

    new-array v11, v2, [B

    .line 1152
    const/4 v2, 0x0

    :goto_4
    array-length v4, v10

    if-lt v2, v4, :cond_e

    .line 1156
    array-length v2, v10

    add-int/lit8 v3, v2, 0x1

    .line 1158
    const/4 v2, 0x0

    :goto_5
    array-length v4, v5

    if-lt v2, v4, :cond_f

    .line 1163
    array-length v2, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v3, v2, 0x80

    .line 1164
    div-int v2, v8, v7

    int-to-long v4, v2

    invoke-static {v4, v5}, Lae;->a(J)[B

    move-result-object v5

    .line 1165
    const/4 v2, 0x0

    :goto_6
    array-length v4, v5

    if-lt v2, v4, :cond_10

    .line 1173
    const/4 v2, 0x0

    array-length v3, v11

    invoke-interface {v9, v11, v2, v3}, Lcm;->a([BII)V

    .line 1178
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 1179
    const/4 v3, 0x0

    invoke-interface {v9, v2, v3}, Lcm;->a([BI)I

    .line 1182
    const/16 v3, 0x13

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0xf

    .line 1183
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 1185
    new-array v4, v6, [C

    .line 1186
    const/4 v3, 0x0

    :goto_7
    if-lt v3, v6, :cond_11

    .line 1190
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1194
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1126
    :cond_b
    aget-byte v10, v3, v2

    aput-byte v10, v5, v2

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1130
    :cond_c
    array-length v10, v3

    add-int/2addr v10, v2

    aget-byte v11, v4, v2

    aput-byte v11, v5, v10

    .line 1129
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1137
    :cond_d
    invoke-direct {p0, v3}, Lae;->a([B)[B

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_3

    .line 1153
    :cond_e
    add-int/lit8 v4, v3, 0x1

    aget-byte v12, v10, v2

    aput-byte v12, v11, v3

    .line 1152
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    .line 1159
    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v12, v5, v2

    aput-byte v12, v11, v3

    .line 1158
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_5

    .line 1166
    :cond_10
    add-int/lit8 v4, v3, 0x1

    aget-byte v7, v5, v2

    aput-byte v7, v11, v3

    .line 1165
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_6

    .line 1187
    :cond_11
    sub-int v5, v6, v3

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v7, v2, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 1188
    div-int/lit8 v2, v2, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1196
    :catch_0
    move-exception v2

    .line 1198
    const/16 v2, 0x514

    goto/16 :goto_0
.end method

.method private b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 8

    .prologue
    const/16 v0, 0x523

    const/16 v6, 0x514

    const/4 v7, 0x0

    .line 1234
    if-nez p4, :cond_1

    .line 1235
    const/16 v0, 0x522

    .line 1294
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1240
    :cond_2
    const/16 v0, 0x51e

    goto :goto_0

    .line 1243
    :cond_3
    if-eqz p2, :cond_0

    .line 1246
    invoke-interface {p2}, Lbo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1254
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1257
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1258
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1259
    invoke-direct/range {v0 .. v5}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 1260
    if-nez v0, :cond_0

    .line 1266
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v6

    .line 1269
    goto :goto_0

    .line 1274
    :cond_5
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1275
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1279
    :cond_6
    const-string v4, ""

    .line 1280
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1284
    new-instance v3, Ljava/lang/String;

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v0

    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 1285
    invoke-direct/range {v0 .. v5}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1286
    if-nez v0, :cond_0

    move v0, v7

    .line 1290
    goto :goto_0

    .line 1280
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1292
    :catch_0
    move-exception v0

    move v0, v6

    .line 1294
    goto/16 :goto_0
.end method

.method private b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lbo;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 1425
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1492
    :cond_1
    :goto_0
    return v0

    .line 1429
    :cond_2
    if-eqz p2, :cond_1

    .line 1432
    invoke-interface {p2}, Lbo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1439
    if-nez p5, :cond_3

    .line 1440
    const/16 v0, 0x522

    goto :goto_0

    .line 1446
    :cond_3
    new-instance v0, Lbp;

    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v2

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 1452
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 1453
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 1454
    if-eqz v0, :cond_4

    move v0, v1

    .line 1455
    goto :goto_0

    .line 1458
    :cond_4
    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    .line 1459
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1460
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1461
    const/16 v0, 0x520

    goto :goto_0

    .line 1462
    :cond_5
    if-nez v0, :cond_6

    .line 1463
    const/16 v0, 0x51f

    goto :goto_0

    .line 1466
    :cond_6
    const/16 v0, 0x521

    goto :goto_0

    .line 1472
    :cond_7
    invoke-virtual {v2}, Lal;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1473
    const/16 v0, 0x528

    goto :goto_0

    .line 1477
    :cond_8
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1478
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_9

    .line 1480
    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-static {v2, v0, p3, p4, p5}, Lbu;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0

    .line 1484
    :cond_9
    invoke-interface {p2}, Lbo;->a()[B

    move-result-object v0

    invoke-static {v2, v0, p3, p4, p5}, Lbt;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v0

    .line 1492
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private b(Laj;Lo;I)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 3486
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3527
    :cond_1
    :goto_0
    return v0

    .line 3490
    :cond_2
    if-eqz p2, :cond_1

    .line 3494
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3499
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3501
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 3502
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 3503
    if-eqz v3, :cond_3

    move v0, v1

    .line 3504
    goto :goto_0

    .line 3507
    :cond_3
    invoke-virtual {v2, p3}, Lal;->i(I)V

    .line 3509
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3510
    invoke-static {v2, v0, v3}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3511
    if-eqz v0, :cond_4

    move v0, v1

    .line 3512
    goto :goto_0

    .line 3514
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3516
    const/4 v0, 0x0

    goto :goto_0

    .line 3518
    :catch_0
    move-exception v0

    .line 3520
    const/16 v0, 0x524

    goto :goto_0

    .line 3521
    :catch_1
    move-exception v0

    .line 3527
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private b(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 8

    .prologue
    const/16 v1, 0x5a6

    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/4 v3, 0x0

    .line 4814
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 4892
    :cond_1
    :goto_0
    return v0

    .line 4818
    :cond_2
    if-eqz p2, :cond_1

    .line 4821
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4825
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4827
    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4828
    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4829
    invoke-virtual {v0, p5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4831
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4852
    if-nez p6, :cond_7

    .line 4853
    const/16 v0, 0x522

    goto :goto_0

    .line 4831
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4833
    if-nez v0, :cond_5

    move v0, v1

    .line 4834
    goto :goto_0

    .line 4837
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 4838
    sget-object v0, Lae;->k:[B

    .line 4840
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 4841
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_3

    .line 4842
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v1

    .line 4843
    goto :goto_0

    .line 4841
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4856
    :cond_7
    invoke-virtual {p6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 4857
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4863
    :cond_8
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lbp;-><init>([B[B)V

    .line 4865
    new-instance v1, Lal;

    invoke-direct {v1}, Lal;-><init>()V

    .line 4866
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 4867
    if-eqz v0, :cond_9

    move v0, v2

    .line 4868
    goto :goto_0

    .line 4871
    :cond_9
    invoke-virtual {v1}, Lal;->v()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 4872
    const/16 v0, 0x521

    goto/16 :goto_0

    .line 4876
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lal;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4877
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4878
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4879
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4881
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4882
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 4883
    if-nez v0, :cond_1

    .line 4887
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 4888
    goto/16 :goto_0

    .line 4889
    :catch_0
    move-exception v0

    .line 4892
    const/16 v0, 0x6b9

    goto/16 :goto_0
.end method

.method private b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
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
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 4720
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 4784
    :cond_1
    :goto_0
    return v0

    .line 4724
    :cond_2
    if-eqz p2, :cond_1

    .line 4727
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4734
    if-nez p6, :cond_3

    .line 4735
    const/16 v0, 0x522

    goto :goto_0

    .line 4741
    :cond_3
    new-instance v2, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lbp;-><init>([B[B)V

    .line 4747
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4748
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v2

    .line 4749
    if-eqz v2, :cond_4

    move v0, v1

    .line 4750
    goto :goto_0

    .line 4753
    :cond_4
    invoke-virtual {v0}, Lal;->L()I

    move-result v1

    .line 4754
    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 4755
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 4756
    const/16 v0, 0x520

    goto :goto_0

    .line 4757
    :cond_5
    if-nez v1, :cond_6

    .line 4758
    const/16 v0, 0x51f

    goto :goto_0

    .line 4761
    :cond_6
    const/16 v0, 0x521

    goto :goto_0

    .line 4767
    :cond_7
    invoke-virtual {v0}, Lal;->e()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4768
    const/16 v0, 0x528

    goto :goto_0

    .line 4771
    :cond_8
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4772
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_9

    .line 4774
    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lbu;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0

    .line 4778
    :cond_9
    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lbs;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4782
    :catch_0
    move-exception v0

    .line 4784
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private b(Laj;Lo;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
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
    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/16 v1, 0x5a6

    const/4 v3, 0x0

    .line 2626
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 2776
    :cond_1
    :goto_0
    return v0

    .line 2630
    :cond_2
    if-eqz p2, :cond_1

    .line 2633
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2637
    if-nez p4, :cond_3

    move v0, v1

    .line 2638
    goto :goto_0

    :cond_3
    move v4, v3

    .line 2645
    :goto_1
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 2673
    if-nez p5, :cond_8

    .line 2674
    const/16 v0, 0x522

    goto :goto_0

    .line 2647
    :cond_4
    invoke-virtual {p4, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2649
    if-nez v0, :cond_5

    move v0, v1

    .line 2650
    goto :goto_0

    .line 2659
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2660
    sget-object v0, Lae;->k:[B

    .line 2662
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 2663
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 2645
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2664
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 2665
    goto :goto_0

    .line 2663
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2677
    :cond_8
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2678
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2685
    :cond_9
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2686
    invoke-virtual {p0, p2, p3, v4}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v5

    move v1, v3

    .line 2688
    :goto_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 2693
    if-eqz v5, :cond_b

    .line 2695
    const/16 v0, 0x58f

    goto :goto_0

    .line 2689
    :cond_a
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "oVetorDadosRespostaAtivacaoPasso2["

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "]: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2688
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2698
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2702
    invoke-virtual {p0, p1, p2, v0}, Lae;->p(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 2705
    if-eqz v0, :cond_c

    .line 2707
    const/16 v0, 0x597

    goto/16 :goto_0

    .line 2713
    :cond_c
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lbp;-><init>([B[B)V

    .line 2714
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 2715
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 2717
    if-eqz v0, :cond_d

    move v0, v2

    .line 2718
    goto/16 :goto_0

    .line 2721
    :cond_d
    invoke-virtual {v4}, Lal;->w()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {v4}, Lal;->w()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    :cond_e
    invoke-virtual {v4}, Lal;->L()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 2724
    :cond_f
    const/16 v0, 0x589

    goto/16 :goto_0

    .line 2727
    :cond_10
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    .line 2728
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laj;->a(Ljava/lang/String;)V

    .line 2730
    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v1

    .line 2731
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Laz;->a([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 2733
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2734
    invoke-virtual {p0, v0, p2, v2, v1}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2735
    if-nez v0, :cond_1

    .line 2739
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2740
    invoke-virtual {v4}, Lal;->u()Ljava/lang/String;

    move-result-object v1

    .line 2742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 2744
    :goto_4
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 2750
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2751
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2753
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DATABLINK - GERAR PASSO2"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2754
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Numero_de_serie "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2755
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Id_mobile "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2756
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2757
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Id_server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2758
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Token_versao_configuracao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2759
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->L()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2760
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2761
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK -\tStaStatusBO "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->w()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2762
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK -\t-------------------------------------"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2764
    if-nez v0, :cond_1

    .line 2767
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 2768
    goto/16 :goto_0

    .line 2745
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2744
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 2769
    :catch_0
    move-exception v0

    .line 2771
    throw v0

    .line 2772
    :catch_1
    move-exception v0

    .line 2776
    const/16 v0, 0x6a7

    goto/16 :goto_0
.end method

.method private b(Laj;Lo;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 18

    .prologue
    .line 4919
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4920
    :cond_0
    const/16 v3, 0x51e

    .line 5039
    :cond_1
    :goto_0
    return v3

    .line 4923
    :cond_2
    if-nez p2, :cond_3

    .line 4924
    const/16 v3, 0x523

    goto :goto_0

    .line 4926
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lo;->c()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4927
    const/16 v3, 0x523

    goto :goto_0

    .line 4930
    :cond_4
    if-nez p4, :cond_5

    .line 4931
    const/16 v3, 0x5a6

    goto :goto_0

    .line 4937
    :cond_5
    if-nez p6, :cond_6

    .line 4938
    const/16 v3, 0x522

    goto :goto_0

    .line 4941
    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 4942
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4948
    :cond_7
    new-instance v3, Lbp;

    invoke-virtual/range {p2 .. p2}, Lo;->a()[B

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lbp;-><init>([B[B)V

    .line 4950
    new-instance v16, Lal;

    invoke-direct/range {v16 .. v16}, Lal;-><init>()V

    .line 4951
    invoke-virtual/range {p1 .. p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v3, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 4952
    if-eqz v3, :cond_8

    .line 4953
    const/16 v3, 0x51e

    goto :goto_0

    .line 4956
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lal;->v()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 4957
    const/16 v3, 0x521

    goto :goto_0

    .line 4961
    :cond_9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 4962
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 4963
    invoke-direct/range {v3 .. v9}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v3

    .line 4964
    if-nez v3, :cond_1

    .line 4968
    const-string v14, ""

    .line 4969
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4972
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4973
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 4974
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 4975
    const-string v3, "2"

    move-object v4, v3

    .line 4978
    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    .line 4982
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lo;->b()[B

    move-result-object v3

    invoke-static {v3}, Laz;->a([B)[B

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    .line 4984
    const-string v3, ""

    .line 4985
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 4987
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v4}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 4989
    if-nez v3, :cond_1

    .line 4992
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5012
    :cond_a
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lal;->u()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5013
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5012
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5015
    if-eqz p3, :cond_f

    .line 5016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5027
    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 5028
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v3, v4}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 5029
    if-nez v3, :cond_1

    .line 5033
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5034
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4978
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4979
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 4993
    :cond_d
    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 4995
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 4996
    invoke-direct/range {v10 .. v15}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 4997
    if-nez v3, :cond_1

    .line 5000
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 5002
    :cond_e
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5004
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 5005
    invoke-direct/range {v10 .. v15}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 5006
    if-nez v3, :cond_1

    .line 5009
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 5018
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5022
    const/4 v3, 0x0

    move/from16 v17, v3

    move-object v3, v4

    move/from16 v4, v17

    :goto_4
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 5023
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5022
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v5

    goto :goto_4

    .line 5035
    :catch_0
    move-exception v3

    .line 5039
    const/16 v3, 0x6b9

    goto/16 :goto_0

    :cond_10
    move-object v4, v3

    goto/16 :goto_1
.end method

.method private b(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 3

    .prologue
    .line 5857
    :try_start_0
    new-instance v0, Lab;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lab;-><init>([B)V

    .line 5858
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "70&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lab;->a(Ljava/lang/String;Lbgb;)Ljava/lang/String;

    move-result-object v0

    .line 5859
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5860
    const/4 v0, 0x0

    .line 5862
    :goto_0
    return v0

    .line 5861
    :catch_0
    move-exception v0

    .line 5862
    const/16 v0, 0x5ab

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OCRA-1:HOTP-SHA1-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 8

    .prologue
    const/16 v0, 0x523

    const/16 v6, 0x514

    const/4 v7, 0x0

    .line 1327
    if-nez p4, :cond_1

    .line 1328
    const/16 v0, 0x522

    .line 1380
    :cond_0
    :goto_0
    return v0

    .line 1332
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1333
    :cond_2
    const/16 v0, 0x51e

    goto :goto_0

    .line 1336
    :cond_3
    if-eqz p2, :cond_0

    .line 1339
    invoke-interface {p2}, Lbo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1346
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1351
    :cond_4
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1352
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1353
    invoke-direct/range {v0 .. v5}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    .line 1354
    if-nez v0, :cond_0

    .line 1358
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    .line 1359
    goto :goto_0

    .line 1362
    :cond_5
    const-string v4, ""

    .line 1363
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1368
    new-instance v3, Ljava/lang/String;

    invoke-interface {p2}, Lbo;->b()[B

    move-result-object v0

    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 1369
    invoke-direct/range {v0 .. v5}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1370
    if-nez v0, :cond_0

    move v0, v7

    .line 1376
    goto :goto_0

    .line 1363
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1378
    :catch_0
    move-exception v0

    move v0, v6

    .line 1380
    goto :goto_0
.end method

.method private d(Laj;Lo;)I
    .locals 7

    .prologue
    const/16 v2, 0x59f

    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 3194
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    .line 3248
    :cond_1
    :goto_0
    return v0

    .line 3198
    :cond_2
    if-eqz p2, :cond_1

    .line 3202
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3206
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v4

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lbp;-><init>([B[B)V

    .line 3208
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 3209
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v5

    .line 3210
    if-eqz v5, :cond_3

    move v0, v1

    .line 3211
    goto :goto_0

    .line 3214
    :cond_3
    invoke-virtual {v4}, Lal;->L()I

    move-result v1

    if-nez v1, :cond_4

    .line 3215
    const/16 v0, 0x57c

    goto :goto_0

    .line 3218
    :cond_4
    invoke-virtual {v4}, Lal;->n()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 3219
    goto :goto_0

    .line 3222
    :cond_5
    invoke-virtual {v4}, Lal;->q()I

    move-result v1

    if-ne v1, v6, :cond_6

    move v0, v2

    .line 3223
    goto :goto_0

    .line 3226
    :cond_6
    const-string v1, ""

    invoke-virtual {v4, v1}, Lal;->f(Ljava/lang/String;)V

    .line 3227
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lal;->c(I)V

    .line 3228
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lal;->h(I)V

    .line 3230
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3231
    invoke-static {v4, v0, v1}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3232
    if-nez v0, :cond_1

    .line 3235
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v3

    .line 3237
    goto :goto_0

    .line 3239
    :catch_0
    move-exception v0

    .line 3241
    const/16 v0, 0x524

    goto :goto_0

    .line 3242
    :catch_1
    move-exception v0

    .line 3248
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private d(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v1, 0x5ab

    const/4 v2, 0x0

    .line 5320
    if-nez p3, :cond_0

    .line 5321
    const/16 v0, 0x522

    .line 5337
    :goto_0
    return v0

    .line 5324
    :cond_0
    :try_start_0
    new-instance v5, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v0

    invoke-direct {v5, v0}, Laf;-><init>([B)V

    .line 5325
    const-string v0, "99"

    move v3, v2

    .line 5326
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 5329
    new-instance v3, Lbgb;

    invoke-direct {v3}, Lbgb;-><init>()V

    invoke-virtual {v5, v0, v3}, Laf;->a(Ljava/lang/String;Lbgb;)Ljava/lang/String;

    move-result-object v0

    .line 5330
    if-nez v0, :cond_2

    move v0, v1

    .line 5331
    goto :goto_0

    .line 5327
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5326
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_1

    .line 5333
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 5334
    goto :goto_0

    .line 5335
    :catch_0
    move-exception v0

    move v0, v1

    .line 5337
    goto :goto_0
.end method

.method private e(Laj;Lo;)I
    .locals 7

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    .line 5405
    if-nez p1, :cond_1

    .line 5406
    const/16 v0, 0x522

    .line 5446
    :cond_0
    :goto_0
    return v0

    .line 5408
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 5409
    goto :goto_0

    .line 5412
    :cond_2
    if-eqz p2, :cond_0

    .line 5415
    invoke-virtual {p2}, Lo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5419
    new-instance v3, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lbp;-><init>([B[B)V

    .line 5420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5421
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v6

    invoke-static {v6}, Laz;->a([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 5422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5423
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lca;->a([B)[B

    move-result-object v0

    .line 5424
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-direct {v4, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v3, v4}, Lbl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5426
    new-instance v4, Lak;

    invoke-direct {v4}, Lak;-><init>()V

    .line 5427
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lak;->c(Ljava/lang/String;)V

    .line 5430
    const/4 v0, 0x0

    check-cast v0, [B

    .line 5431
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5432
    invoke-static {v4, v3, v0}, Lak;->a(Lak;Lbl;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 5433
    if-eqz v3, :cond_3

    move v0, v1

    .line 5434
    goto :goto_0

    .line 5436
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 5437
    goto :goto_0

    .line 5438
    :catch_0
    move-exception v0

    .line 5440
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 5441
    :catch_1
    move-exception v0

    .line 5446
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private e(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x5a6

    const/4 v2, 0x0

    .line 5659
    if-nez p1, :cond_1

    .line 5727
    :cond_0
    :goto_0
    return v0

    .line 5662
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5666
    if-nez p2, :cond_2

    move v0, v1

    .line 5667
    goto :goto_0

    .line 5670
    :cond_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 5671
    goto :goto_0

    :cond_3
    move v3, v2

    .line 5675
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 5697
    if-nez p3, :cond_8

    .line 5698
    const/16 v0, 0x522

    goto :goto_0

    .line 5677
    :cond_4
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5679
    if-nez v0, :cond_5

    move v0, v1

    .line 5680
    goto :goto_0

    .line 5683
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5684
    sget-object v0, Lae;->k:[B

    .line 5686
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v2

    .line 5687
    :goto_2
    array-length v6, v4

    if-lt v0, v6, :cond_6

    .line 5675
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5688
    :cond_6
    aget-char v6, v4, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    .line 5689
    goto :goto_0

    .line 5687
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5701
    :cond_8
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 5702
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5708
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5709
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 5713
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5714
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5715
    if-nez v0, :cond_0

    .line 5719
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    .line 5720
    goto :goto_0

    .line 5710
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5709
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_3

    .line 5723
    :catch_0
    move-exception v0

    .line 5727
    const/16 v0, 0x6ba

    goto/16 :goto_0
.end method

.method private f(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x5a6

    const/4 v2, 0x0

    .line 5782
    if-nez p1, :cond_1

    .line 5850
    :cond_0
    :goto_0
    return v0

    .line 5785
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5789
    if-nez p2, :cond_2

    move v0, v1

    .line 5790
    goto :goto_0

    .line 5793
    :cond_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 5794
    goto :goto_0

    :cond_3
    move v3, v2

    .line 5798
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 5820
    if-nez p3, :cond_8

    .line 5821
    const/16 v0, 0x522

    goto :goto_0

    .line 5800
    :cond_4
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5802
    if-nez v0, :cond_5

    move v0, v1

    .line 5803
    goto :goto_0

    .line 5806
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5807
    sget-object v0, Lae;->k:[B

    .line 5809
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v2

    .line 5810
    :goto_2
    array-length v6, v4

    if-lt v0, v6, :cond_6

    .line 5798
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5811
    :cond_6
    aget-char v6, v4, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    .line 5812
    goto :goto_0

    .line 5810
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5824
    :cond_8
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 5825
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5831
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5832
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 5836
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5837
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0, v1}, Lae;->b(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 5838
    if-nez v0, :cond_0

    .line 5842
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    .line 5843
    goto :goto_0

    .line 5833
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5832
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_3

    .line 5846
    :catch_0
    move-exception v0

    .line 5850
    const/16 v0, 0x6ba

    goto/16 :goto_0
.end method

.method private g(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/16 v1, 0x5a6

    const/4 v3, 0x0

    .line 2319
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 2421
    :cond_1
    :goto_0
    return v0

    .line 2323
    :cond_2
    if-eqz p2, :cond_1

    .line 2326
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2330
    if-nez p3, :cond_3

    move v0, v1

    .line 2331
    goto :goto_0

    :cond_3
    move v4, v3

    .line 2339
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 2366
    if-nez p4, :cond_8

    .line 2367
    const/16 v0, 0x522

    goto :goto_0

    .line 2341
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2343
    if-nez v0, :cond_5

    move v0, v1

    .line 2344
    goto :goto_0

    .line 2352
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2353
    sget-object v0, Lae;->k:[B

    .line 2355
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 2356
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 2339
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2357
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 2358
    goto :goto_0

    .line 2356
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2370
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2371
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2381
    :cond_9
    new-instance v1, Lai;

    invoke-direct {v1}, Lai;-><init>()V

    .line 2383
    invoke-virtual {p0, p1, p2, v1}, Lae;->a(Laj;Lo;Lai;)I

    move-result v0

    .line 2385
    if-nez v0, :cond_1

    .line 2392
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v4

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lbp;-><init>([B[B)V

    .line 2393
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 2394
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 2396
    if-eqz v0, :cond_a

    move v0, v2

    .line 2397
    goto :goto_0

    .line 2401
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lal;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 2403
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 2409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2410
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2411
    if-nez v0, :cond_1

    .line 2415
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 2416
    goto/16 :goto_0

    .line 2404
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 2417
    :catch_0
    move-exception v0

    .line 2421
    const/16 v0, 0x6a8

    goto/16 :goto_0
.end method

.method private h(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/16 v1, 0x5a6

    const/4 v3, 0x0

    .line 2434
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 2525
    :cond_1
    :goto_0
    return v0

    .line 2438
    :cond_2
    if-eqz p2, :cond_1

    .line 2441
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2445
    if-nez p3, :cond_3

    move v0, v1

    .line 2446
    goto :goto_0

    :cond_3
    move v4, v3

    .line 2454
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 2481
    if-nez p4, :cond_8

    .line 2482
    const/16 v0, 0x522

    goto :goto_0

    .line 2456
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2458
    if-nez v0, :cond_5

    move v0, v1

    .line 2459
    goto :goto_0

    .line 2467
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2468
    sget-object v0, Lae;->k:[B

    .line 2470
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 2471
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 2454
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2472
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 2473
    goto :goto_0

    .line 2471
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2485
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2486
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2496
    :cond_9
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lbp;-><init>([B[B)V

    .line 2497
    new-instance v1, Lal;

    invoke-direct {v1}, Lal;-><init>()V

    .line 2498
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 2500
    if-eqz v0, :cond_a

    move v0, v2

    .line 2501
    goto :goto_0

    .line 2505
    :cond_a
    invoke-virtual {v1}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 2507
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 2513
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2514
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2515
    if-nez v0, :cond_1

    .line 2519
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 2520
    goto/16 :goto_0

    .line 2508
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2507
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 2521
    :catch_0
    move-exception v0

    .line 2525
    const/16 v0, 0x6a8

    goto/16 :goto_0
.end method

.method private i(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/16 v1, 0x5a6

    const/4 v3, 0x0

    .line 2787
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 2898
    :cond_1
    :goto_0
    return v0

    .line 2792
    :cond_2
    if-eqz p2, :cond_1

    .line 2796
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2801
    if-nez p3, :cond_3

    move v0, v1

    .line 2802
    goto :goto_0

    :cond_3
    move v4, v3

    .line 2809
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 2837
    if-nez p4, :cond_8

    .line 2838
    const/16 v0, 0x522

    goto :goto_0

    .line 2811
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2813
    if-nez v0, :cond_5

    move v0, v1

    .line 2814
    goto :goto_0

    .line 2822
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2823
    sget-object v0, Lae;->k:[B

    .line 2825
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 2826
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 2809
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2827
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 2828
    goto :goto_0

    .line 2826
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2841
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2842
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2848
    :cond_9
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lbp;-><init>([B[B)V

    .line 2850
    new-instance v1, Lal;

    invoke-direct {v1}, Lal;-><init>()V

    .line 2851
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 2853
    if-eqz v0, :cond_a

    move v0, v2

    .line 2854
    goto :goto_0

    .line 2857
    :cond_a
    invoke-virtual {v1}, Lal;->v()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lal;->v()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    .line 2858
    const/16 v0, 0x521

    goto :goto_0

    .line 2861
    :cond_b
    new-instance v1, Lai;

    invoke-direct {v1}, Lai;-><init>()V

    .line 2862
    invoke-virtual {p0, p1, p2, v1}, Lae;->a(Laj;Lo;Lai;)I

    move-result v0

    .line 2864
    if-nez v0, :cond_1

    .line 2868
    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v0

    .line 2870
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 2872
    invoke-virtual {v1}, Lai;->a()Ljava/lang/String;

    move-result-object v0

    .line 2874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 2876
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_c

    .line 2883
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2884
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2886
    if-nez v0, :cond_1

    .line 2890
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 2892
    goto/16 :goto_0

    .line 2877
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2878
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2877
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2876
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 2893
    :catch_0
    move-exception v0

    .line 2895
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2898
    const/16 v0, 0x6a6

    goto/16 :goto_0
.end method

.method private i(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5144
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lae;->h(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 5146
    if-eqz v0, :cond_0

    .line 5162
    :goto_0
    return v0

    .line 5154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5156
    :catch_0
    move-exception v0

    .line 5157
    throw v0

    .line 5158
    :catch_1
    move-exception v0

    .line 5162
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private j(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x5a6

    const/16 v2, 0x51e

    const/4 v3, 0x0

    .line 3757
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 3875
    :cond_1
    :goto_0
    return v0

    .line 3761
    :cond_2
    if-eqz p2, :cond_1

    .line 3764
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3768
    if-nez p3, :cond_3

    move v0, v1

    .line 3769
    goto :goto_0

    :cond_3
    move v4, v3

    .line 3776
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 3803
    if-nez p4, :cond_8

    .line 3804
    const/16 v0, 0x522

    goto :goto_0

    .line 3778
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3780
    if-nez v0, :cond_5

    move v0, v1

    .line 3781
    goto :goto_0

    .line 3789
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3790
    sget-object v0, Lae;->k:[B

    .line 3792
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 3793
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 3776
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 3794
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 3795
    goto :goto_0

    .line 3793
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3807
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 3808
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3815
    :cond_9
    new-instance v1, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbp;-><init>([B[B)V

    .line 3817
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 3818
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v4

    .line 3819
    if-eqz v4, :cond_a

    move v0, v2

    .line 3820
    goto :goto_0

    .line 3823
    :cond_a
    invoke-virtual {v0}, Lal;->v()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    .line 3824
    const/16 v0, 0x521

    goto :goto_0

    .line 3827
    :cond_b
    new-instance v4, Lai;

    invoke-direct {v4}, Lai;-><init>()V

    .line 3828
    invoke-virtual {p0, p1, p2, v4}, Lae;->a(Laj;Lo;Lai;)I

    move-result v0

    .line 3829
    if-nez v0, :cond_1

    .line 3833
    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v0

    .line 3834
    new-instance v5, Ljava/lang/String;

    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 3836
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3837
    invoke-virtual {p0, p1, p2, v5, v6}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3838
    if-nez v0, :cond_1

    .line 3845
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 3846
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v1

    .line 3848
    if-eqz v1, :cond_c

    move v0, v2

    .line 3849
    goto/16 :goto_0

    .line 3852
    :cond_c
    invoke-virtual {v4}, Lai;->a()Ljava/lang/String;

    move-result-object v1

    .line 3853
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3854
    invoke-virtual {v0}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    .line 3856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 3858
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 3862
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3863
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3864
    if-nez v0, :cond_1

    .line 3868
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 3869
    goto/16 :goto_0

    .line 3859
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3858
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 3871
    :catch_0
    move-exception v0

    .line 3875
    const/16 v0, 0x6a9

    goto/16 :goto_0
.end method

.method private j(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5180
    if-nez p2, :cond_0

    .line 5181
    const/16 v0, 0x5a6

    .line 5201
    :goto_0
    return v0

    .line 5184
    :cond_0
    if-nez p3, :cond_1

    .line 5185
    const/16 v0, 0x522

    goto :goto_0

    .line 5189
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lae;->h(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5191
    if-eqz v0, :cond_2

    .line 5192
    const/16 v0, 0x58f

    goto :goto_0

    .line 5195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5197
    :catch_0
    move-exception v0

    .line 5201
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private k(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x5a6

    const/16 v2, 0x51e

    const/4 v3, 0x0

    .line 3964
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 4076
    :cond_1
    :goto_0
    return v0

    .line 3968
    :cond_2
    if-eqz p2, :cond_1

    .line 3971
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3975
    if-nez p3, :cond_3

    move v0, v1

    .line 3976
    goto :goto_0

    :cond_3
    move v4, v3

    .line 3983
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 4011
    if-nez p4, :cond_8

    .line 4012
    const/16 v0, 0x522

    goto :goto_0

    .line 3985
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3987
    if-nez v0, :cond_5

    move v0, v1

    .line 3988
    goto :goto_0

    .line 3997
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3998
    sget-object v0, Lae;->k:[B

    .line 4000
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 4001
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 3983
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 4002
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 4003
    goto :goto_0

    .line 4001
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4015
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 4016
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4023
    :cond_9
    new-instance v1, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbp;-><init>([B[B)V

    .line 4025
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4026
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v4

    .line 4027
    if-eqz v4, :cond_a

    move v0, v2

    .line 4028
    goto :goto_0

    .line 4031
    :cond_a
    invoke-virtual {v0}, Lal;->v()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_b

    invoke-virtual {v0}, Lal;->v()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    .line 4032
    const/16 v0, 0x521

    goto :goto_0

    .line 4038
    :cond_b
    new-instance v4, Lai;

    invoke-direct {v4}, Lai;-><init>()V

    .line 4040
    invoke-virtual {p0, p1, p2, v4}, Lae;->a(Laj;Lo;Lai;)I

    move-result v0

    .line 4042
    if-nez v0, :cond_1

    .line 4049
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4050
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v1

    .line 4052
    if-eqz v1, :cond_c

    move v0, v2

    .line 4053
    goto/16 :goto_0

    .line 4057
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 4060
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 4064
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4065
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 4066
    if-nez v0, :cond_1

    .line 4070
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 4071
    goto/16 :goto_0

    .line 4061
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4060
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 4072
    :catch_0
    move-exception v0

    .line 4076
    const/16 v0, 0x6ab

    goto/16 :goto_0
.end method

.method private k(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v2, 0x595

    const/4 v1, 0x0

    .line 5260
    if-nez p3, :cond_1

    .line 5261
    const/16 v0, 0x522

    .line 5308
    :cond_0
    :goto_0
    return v0

    .line 5264
    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 5267
    :try_start_0
    new-instance v0, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v3

    invoke-direct {v0, v3}, Laf;-><init>([B)V

    .line 5268
    invoke-virtual {v0, p2, v4}, Laf;->a(Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5269
    if-nez v0, :cond_0

    .line 5278
    if-nez v0, :cond_0

    .line 5280
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 5282
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "99"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5283
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move v3, v1

    .line 5285
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v0, v1

    .line 5289
    goto :goto_0

    .line 5272
    :catch_0
    move-exception v0

    .line 5274
    const/16 v0, 0x58d

    goto :goto_0

    .line 5286
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5285
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5293
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5294
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move v0, v2

    .line 5296
    goto :goto_0

    .line 5300
    :catch_1
    move-exception v0

    .line 5304
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 5305
    invoke-virtual {p3}, Ljava/util/Vector;->clear()V

    :cond_5
    move v0, v2

    .line 5308
    goto :goto_0
.end method

.method private l(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x5a6

    const/16 v2, 0x51e

    const/4 v3, 0x0

    .line 4193
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 4320
    :cond_1
    :goto_0
    return v0

    .line 4197
    :cond_2
    if-eqz p2, :cond_1

    .line 4200
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4204
    if-nez p3, :cond_3

    move v0, v1

    .line 4205
    goto :goto_0

    :cond_3
    move v4, v3

    .line 4214
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 4242
    if-nez p4, :cond_8

    .line 4243
    const/16 v0, 0x522

    goto :goto_0

    .line 4216
    :cond_4
    invoke-virtual {p3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4218
    if-nez v0, :cond_5

    move v0, v1

    .line 4219
    goto :goto_0

    .line 4228
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 4229
    sget-object v0, Lae;->k:[B

    .line 4231
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 4232
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_6

    .line 4214
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 4233
    :cond_6
    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 4234
    goto :goto_0

    .line 4232
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4246
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 4247
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4253
    :cond_9
    new-instance v1, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbp;-><init>([B[B)V

    .line 4255
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4256
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v4

    .line 4257
    if-eqz v4, :cond_a

    move v0, v2

    .line 4258
    goto :goto_0

    .line 4261
    :cond_a
    invoke-virtual {v0}, Lal;->v()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    invoke-virtual {v0}, Lal;->v()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    .line 4262
    const/16 v0, 0x521

    goto :goto_0

    .line 4269
    :cond_b
    new-instance v4, Lai;

    invoke-direct {v4}, Lai;-><init>()V

    .line 4271
    invoke-virtual {p0, p1, p2, v4}, Lae;->a(Laj;Lo;Lai;)I

    move-result v0

    .line 4273
    if-nez v0, :cond_1

    .line 4280
    new-instance v5, Lal;

    invoke-direct {v5}, Lal;-><init>()V

    .line 4281
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v5}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 4283
    if-eqz v0, :cond_c

    move v0, v2

    .line 4284
    goto/16 :goto_0

    .line 4287
    :cond_c
    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v0

    .line 4288
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 4290
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4291
    invoke-virtual {p0, p1, p2, v1, v2}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 4292
    if-nez v0, :cond_1

    .line 4296
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lal;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4302
    if-eqz p3, :cond_d

    move v1, v3

    .line 4303
    :goto_3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 4308
    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4309
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lae;->a(Lo;Lbgb;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 4310
    if-nez v0, :cond_1

    .line 4314
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    .line 4315
    goto/16 :goto_0

    .line 4304
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 4316
    :catch_0
    move-exception v0

    .line 4320
    const/16 v0, 0x6ac

    goto/16 :goto_0
.end method

.method private l(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5746
    if-nez p3, :cond_0

    .line 5747
    const/16 v0, 0x522

    .line 5762
    :goto_0
    return v0

    .line 5749
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 5751
    if-eqz v0, :cond_1

    .line 5752
    const/16 v0, 0x58f

    goto :goto_0

    .line 5755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5757
    :catch_0
    move-exception v0

    .line 5758
    throw v0

    .line 5759
    :catch_1
    move-exception v0

    .line 5762
    const/16 v0, 0x6bb

    goto :goto_0
.end method

.method private q(Laj;Lo;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v2, 0x587

    const/16 v1, 0x51e

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2229
    :try_start_0
    new-instance v4, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lbp;-><init>([B[B)V

    .line 2230
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 2231
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v5

    .line 2233
    if-eqz v5, :cond_1

    move v0, v1

    .line 2306
    :cond_0
    :goto_0
    return v0

    .line 2237
    :cond_1
    invoke-virtual {v0}, Lal;->v()I

    move-result v0

    if-nez v0, :cond_2

    .line 2238
    const/16 v0, 0x57c

    goto :goto_0

    .line 2241
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2242
    invoke-virtual {p0, p2, p3, v0}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v5

    .line 2244
    if-eqz v5, :cond_4

    .line 2246
    const/16 v0, 0x3ef

    if-ne v5, v0, :cond_3

    .line 2247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae;->b(Laj;Lo;I)I

    move-result v0

    .line 2248
    if-nez v0, :cond_0

    .line 2251
    const/16 v0, 0x5a5

    goto :goto_0

    .line 2253
    :cond_3
    const/16 v0, 0x58f

    goto :goto_0

    .line 2256
    :cond_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v5, v6, :cond_5

    .line 2257
    const/16 v0, 0x583

    goto :goto_0

    .line 2260
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2262
    invoke-virtual {p0, p1, p2, v0}, Lae;->p(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 2263
    if-eqz v0, :cond_6

    move v0, v2

    .line 2264
    goto :goto_0

    .line 2270
    :cond_6
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 2271
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v4

    .line 2272
    if-eqz v4, :cond_7

    move v0, v1

    .line 2273
    goto :goto_0

    .line 2286
    :cond_7
    invoke-virtual {v0}, Lal;->L()I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 2287
    invoke-virtual {v0}, Lal;->w()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2288
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lae;->b(Laj;Lo;I)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2289
    if-nez v0, :cond_0

    .line 2292
    const/16 v0, 0x5a4

    goto :goto_0

    :cond_8
    move v0, v3

    .line 2296
    goto :goto_0

    .line 2298
    :catch_0
    move-exception v0

    .line 2299
    throw v0

    .line 2300
    :catch_1
    move-exception v0

    move v0, v2

    .line 2306
    goto :goto_0
.end method

.method private r(Laj;Lo;Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 2537
    .line 2539
    :try_start_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 2540
    invoke-virtual {p0, p2, p3, v5}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    .line 2542
    if-eqz v0, :cond_1

    .line 2543
    const/16 v0, 0x58f

    .line 2614
    :cond_0
    :goto_0
    return v0

    .line 2546
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, v9, :cond_2

    .line 2547
    const/16 v0, 0x583

    goto :goto_0

    .line 2550
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2551
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2552
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DATABLINK - ATIVAR"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    .line 2553
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v4, v2, :cond_3

    .line 2563
    new-instance v2, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v4

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lbp;-><init>([B[B)V

    .line 2564
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 2565
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v2

    .line 2567
    if-eqz v2, :cond_4

    .line 2568
    const/16 v0, 0x51e

    goto :goto_0

    .line 2554
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "DATABLINK -oVetorDadosRespostaAtivacaoPasso2["

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2553
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 2572
    :cond_4
    invoke-virtual {v4}, Lal;->v()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lal;->v()I

    move-result v2

    if-eq v2, v10, :cond_5

    .line 2573
    const/16 v0, 0x521

    goto :goto_0

    .line 2576
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DATABLINK - ATIVAR"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2577
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Numero_de_serie "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2578
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Id_mobile "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2579
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2580
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Id_server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2581
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Token_versao_configuracao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2582
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->L()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2583
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK - Ficha_comunicacao "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2584
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATABLINK -\tStaStatusBO "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lal;->w()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2585
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DATABLINK -\t-------------------------------------"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v4}, Lal;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2588
    const/16 v0, 0x584

    goto/16 :goto_0

    .line 2591
    :cond_6
    invoke-virtual {v4}, Lal;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2592
    const/16 v0, 0x585

    goto/16 :goto_0

    .line 2595
    :cond_7
    invoke-virtual {v4}, Lal;->w()I

    move-result v0

    if-eq v0, v9, :cond_8

    invoke-virtual {v4}, Lal;->w()I

    move-result v0

    if-ne v0, v10, :cond_9

    :cond_8
    invoke-virtual {v4}, Lal;->L()I

    move-result v0

    if-eq v0, v8, :cond_a

    .line 2597
    :cond_9
    const/16 v0, 0x589

    goto/16 :goto_0

    .line 2600
    :cond_a
    const/4 v0, 0x2

    invoke-interface {p0, p1, p2, v0}, Lac;->a(Laj;Lo;I)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2601
    if-nez v0, :cond_0

    move v0, v3

    .line 2606
    goto/16 :goto_0

    .line 2608
    :catch_0
    move-exception v0

    .line 2609
    throw v0

    .line 2610
    :catch_1
    move-exception v0

    .line 2614
    const/16 v0, 0x590

    goto/16 :goto_0
.end method

.method private s(Laj;Lo;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/16 v3, 0x59c

    const/16 v0, 0x523

    const/16 v1, 0x51e

    const/4 v2, 0x0

    .line 2906
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    .line 2995
    :cond_1
    :goto_0
    return v0

    .line 2910
    :cond_2
    if-eqz p2, :cond_1

    .line 2914
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2918
    if-nez p3, :cond_3

    .line 2919
    const/16 v0, 0x59a

    goto :goto_0

    .line 2922
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v4

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lbp;-><init>([B[B)V

    .line 2924
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 2925
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v5

    .line 2926
    if-eqz v5, :cond_4

    move v0, v1

    .line 2927
    goto :goto_0

    .line 2933
    :cond_4
    invoke-virtual {v4}, Lal;->L()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    .line 2934
    const/16 v0, 0x57c

    goto :goto_0

    .line 2937
    :cond_5
    invoke-virtual {v4}, Lal;->n()I

    move-result v1

    if-nez v1, :cond_6

    .line 2938
    const/16 v0, 0x59f

    goto :goto_0

    .line 2941
    :cond_6
    invoke-virtual {v4}, Lal;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 2942
    const/16 v0, 0x5a3

    goto :goto_0

    .line 2945
    :cond_7
    invoke-virtual {v4}, Lal;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2946
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lal;->c(I)V

    .line 2980
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2981
    invoke-static {v4, v0, v1}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2982
    if-nez v0, :cond_1

    .line 2985
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    move v0, v2

    .line 2986
    goto :goto_0

    .line 2949
    :cond_8
    invoke-virtual {v4}, Lal;->p()I

    move-result v1

    if-lez v1, :cond_c

    .line 2953
    invoke-virtual {v4}, Lal;->o()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lal;->c(I)V

    .line 2955
    invoke-virtual {v4}, Lal;->o()I

    move-result v1

    invoke-virtual {v4}, Lal;->p()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 2956
    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Lal;->i(I)V

    .line 2959
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2960
    invoke-static {v4, v0, v1}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 2961
    if-nez v0, :cond_1

    .line 2966
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v4}, Lal;->o()I

    move-result v0

    invoke-virtual {v4}, Lal;->p()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 2969
    const/16 v0, 0x59d

    goto/16 :goto_0

    .line 2970
    :cond_a
    invoke-virtual {v4}, Lal;->o()I

    move-result v0

    invoke-virtual {v4}, Lal;->p()I
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2971
    const/16 v0, 0x59e

    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 2973
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 2976
    goto/16 :goto_0

    .line 2987
    :catch_0
    move-exception v0

    .line 2989
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 2990
    :catch_1
    move-exception v0

    .line 2995
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private t(Laj;Lo;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v1, 0x59a

    const/16 v0, 0x523

    const/16 v2, 0x51e

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3093
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 3186
    :cond_1
    :goto_0
    return v0

    .line 3097
    :cond_2
    if-eqz p2, :cond_1

    .line 3101
    invoke-virtual {p2}, Lo;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3106
    if-nez p3, :cond_3

    move v0, v1

    .line 3107
    goto :goto_0

    .line 3111
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 3112
    goto :goto_0

    .line 3115
    :cond_4
    new-instance v1, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbp;-><init>([B[B)V

    .line 3117
    new-instance v4, Lal;

    invoke-direct {v4}, Lal;-><init>()V

    .line 3118
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 3119
    if-eqz v0, :cond_5

    move v0, v2

    .line 3120
    goto :goto_0

    .line 3123
    :cond_5
    invoke-virtual {v4}, Lal;->L()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 3124
    const/16 v0, 0x57c

    goto :goto_0

    .line 3127
    :cond_6
    invoke-virtual {v4}, Lal;->n()I

    move-result v0

    if-nez v0, :cond_7

    .line 3128
    const/16 v0, 0x59f

    goto :goto_0

    .line 3132
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Lal;->n()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 3133
    const/16 v0, 0x59b

    goto :goto_0

    .line 3136
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_9

    .line 3137
    const/16 v0, 0x59b

    goto :goto_0

    .line 3140
    :cond_9
    invoke-virtual {v4}, Lal;->s()I

    move-result v0

    if-eqz v0, :cond_b

    .line 3142
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3143
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3144
    invoke-virtual {v4}, Lal;->s()I

    move-result v5

    if-ne v5, v6, :cond_c

    .line 3145
    sget-object v0, Lae;->i:[B

    .line 3150
    :cond_a
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    move v0, v3

    .line 3151
    :goto_2
    array-length v6, v2

    if-lt v0, v6, :cond_d

    .line 3163
    :cond_b
    invoke-virtual {v4, p3}, Lal;->f(Ljava/lang/String;)V

    .line 3164
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lal;->c(I)V

    .line 3165
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lal;->h(I)V

    .line 3168
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3169
    invoke-static {v4, v1, v2}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3170
    if-nez v0, :cond_1

    .line 3173
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V

    move v0, v3

    .line 3175
    goto/16 :goto_0

    .line 3146
    :cond_c
    invoke-virtual {v4}, Lal;->s()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 3147
    sget-object v0, Lae;->j:[B

    goto :goto_1

    .line 3152
    :cond_d
    aget-char v6, v2, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_e

    .line 3153
    const/16 v0, 0x5a2

    goto/16 :goto_0

    .line 3151
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3177
    :catch_0
    move-exception v0

    .line 3179
    const/16 v0, 0x524

    goto/16 :goto_0

    .line 3180
    :catch_1
    move-exception v0

    .line 3186
    const/16 v0, 0x514

    goto/16 :goto_0
.end method

.method private u(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 3259
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3304
    :cond_1
    :goto_0
    return v0

    .line 3263
    :cond_2
    if-eqz p2, :cond_1

    .line 3267
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3271
    if-nez p3, :cond_3

    .line 3272
    const/16 v0, 0x5a0

    goto :goto_0

    .line 3276
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3278
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 3279
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 3280
    if-eqz v3, :cond_4

    move v0, v1

    .line 3281
    goto :goto_0

    .line 3284
    :cond_4
    invoke-virtual {v2, p3}, Lal;->a(Ljava/lang/String;)V

    .line 3286
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3287
    invoke-static {v2, v0, v3}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3288
    if-eqz v0, :cond_5

    move v0, v1

    .line 3289
    goto :goto_0

    .line 3291
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3293
    const/4 v0, 0x0

    goto :goto_0

    .line 3295
    :catch_0
    move-exception v0

    .line 3297
    const/16 v0, 0x524

    goto :goto_0

    .line 3298
    :catch_1
    move-exception v0

    .line 3304
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private v(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 3316
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3361
    :cond_1
    :goto_0
    return v0

    .line 3320
    :cond_2
    if-eqz p2, :cond_1

    .line 3324
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3328
    if-nez p3, :cond_3

    .line 3329
    const/16 v0, 0x5ac

    goto :goto_0

    .line 3333
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3335
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 3336
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 3337
    if-eqz v3, :cond_4

    move v0, v1

    .line 3338
    goto :goto_0

    .line 3341
    :cond_4
    invoke-virtual {v2, p3}, Lal;->j(Ljava/lang/String;)V

    .line 3343
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3344
    invoke-static {v2, v0, v3}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3345
    if-eqz v0, :cond_5

    move v0, v1

    .line 3346
    goto :goto_0

    .line 3348
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3350
    const/4 v0, 0x0

    goto :goto_0

    .line 3352
    :catch_0
    move-exception v0

    .line 3354
    const/16 v0, 0x524

    goto :goto_0

    .line 3355
    :catch_1
    move-exception v0

    .line 3361
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private w(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 3373
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3418
    :cond_1
    :goto_0
    return v0

    .line 3377
    :cond_2
    if-eqz p2, :cond_1

    .line 3381
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3385
    if-nez p3, :cond_3

    .line 3386
    const/16 v0, 0x6b8

    goto :goto_0

    .line 3390
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3392
    new-instance v2, Lak;

    invoke-direct {v2}, Lak;-><init>()V

    .line 3393
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lak;->a(Ljava/lang/String;Lbl;Lak;)I

    move-result v3

    .line 3394
    if-eqz v3, :cond_4

    move v0, v1

    .line 3395
    goto :goto_0

    .line 3398
    :cond_4
    invoke-virtual {v2, p3}, Lak;->k(Ljava/lang/String;)V

    .line 3400
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3401
    invoke-static {v2, v0, v3}, Lak;->a(Lak;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3402
    if-eqz v0, :cond_5

    move v0, v1

    .line 3403
    goto :goto_0

    .line 3405
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3407
    const/4 v0, 0x0

    goto :goto_0

    .line 3409
    :catch_0
    move-exception v0

    .line 3411
    const/16 v0, 0x524

    goto :goto_0

    .line 3412
    :catch_1
    move-exception v0

    .line 3418
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private x(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x523

    const/16 v1, 0x51e

    .line 3429
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3474
    :cond_1
    :goto_0
    return v0

    .line 3433
    :cond_2
    if-eqz p2, :cond_1

    .line 3437
    invoke-virtual {p2}, Lo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3441
    if-nez p3, :cond_3

    .line 3442
    const/16 v0, 0x6b8

    goto :goto_0

    .line 3446
    :cond_3
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3448
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 3449
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v3

    .line 3450
    if-eqz v3, :cond_4

    move v0, v1

    .line 3451
    goto :goto_0

    .line 3454
    :cond_4
    invoke-virtual {v2, p3}, Lal;->k(Ljava/lang/String;)V

    .line 3456
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3457
    invoke-static {v2, v0, v3}, Lal;->a(Lal;Lbl;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 3458
    if-eqz v0, :cond_5

    move v0, v1

    .line 3459
    goto :goto_0

    .line 3461
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3463
    const/4 v0, 0x0

    goto :goto_0

    .line 3465
    :catch_0
    move-exception v0

    .line 3467
    const/16 v0, 0x524

    goto :goto_0

    .line 3468
    :catch_1
    move-exception v0

    .line 3474
    const/16 v0, 0x514

    goto :goto_0
.end method

.method private y(Laj;Lo;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3882
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3883
    invoke-virtual {p0, p2, p3, v0}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    .line 3885
    if-eqz v2, :cond_1

    .line 3886
    const/16 v0, 0x58f

    .line 3935
    :cond_0
    :goto_0
    return v0

    .line 3889
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 3890
    const/16 v0, 0x583

    goto :goto_0

    .line 3893
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3904
    invoke-virtual {p0, p1, p2, v0}, Lae;->p(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 3905
    if-nez v0, :cond_0

    .line 3912
    new-instance v0, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v2

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>([B[B)V

    .line 3913
    new-instance v2, Lal;

    invoke-direct {v2}, Lal;-><init>()V

    .line 3914
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v0

    .line 3916
    if-eqz v0, :cond_3

    .line 3917
    const/16 v0, 0x51e

    goto :goto_0

    .line 3920
    :cond_3
    invoke-virtual {v2}, Lal;->w()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lal;->L()I

    move-result v0

    if-eqz v0, :cond_5

    .line 3921
    :cond_4
    const/16 v0, 0x589

    goto :goto_0

    .line 3924
    :cond_5
    const/4 v0, 0x5

    invoke-interface {p0, p1, p2, v0}, Lac;->a(Laj;Lo;I)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3925
    if-nez v0, :cond_0

    move v0, v1

    .line 3928
    goto :goto_0

    .line 3930
    :catch_0
    move-exception v0

    .line 3931
    throw v0

    .line 3932
    :catch_1
    move-exception v0

    .line 3935
    const/16 v0, 0x58c

    goto :goto_0
.end method

.method private z(Laj;Lo;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/16 v2, 0x58a

    const/16 v1, 0x51e

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4104
    .line 4109
    :try_start_0
    new-instance v4, Lbp;

    invoke-virtual {p2}, Lo;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lo;->b()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lbp;-><init>([B[B)V

    .line 4110
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4111
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v5

    .line 4113
    if-eqz v5, :cond_1

    move v0, v1

    .line 4167
    :cond_0
    :goto_0
    return v0

    .line 4117
    :cond_1
    invoke-virtual {v0}, Lal;->w()I

    move-result v0

    if-nez v0, :cond_2

    .line 4118
    const/16 v0, 0x57c

    goto :goto_0

    .line 4121
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4122
    invoke-virtual {p0, p2, p3, v0}, Lae;->g(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v5

    .line 4124
    if-eqz v5, :cond_3

    .line 4126
    const/16 v0, 0x58f

    goto :goto_0

    .line 4129
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v5, v6, :cond_4

    .line 4130
    const/16 v0, 0x583

    goto :goto_0

    .line 4133
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4135
    invoke-virtual {p0, p1, p2, v0}, Lae;->p(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    .line 4136
    if-eqz v0, :cond_5

    move v0, v2

    .line 4137
    goto :goto_0

    .line 4143
    :cond_5
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 4144
    invoke-virtual {p1}, Laj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lal;->a(Ljava/lang/String;Lbl;Lal;)I

    move-result v4

    .line 4145
    if-eqz v4, :cond_6

    move v0, v1

    .line 4146
    goto :goto_0

    .line 4149
    :cond_6
    invoke-virtual {v0}, Lal;->w()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-virtual {v0}, Lal;->L()I

    move-result v0

    if-eq v0, v6, :cond_8

    .line 4150
    :cond_7
    const/16 v0, 0x589

    goto :goto_0

    .line 4153
    :cond_8
    const/4 v0, 0x4

    invoke-interface {p0, p1, p2, v0}, Lac;->a(Laj;Lo;I)I
    :try_end_0
    .catch Lbfy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 4154
    if-nez v0, :cond_0

    move v0, v3

    .line 4157
    goto :goto_0

    .line 4159
    :catch_0
    move-exception v0

    .line 4160
    throw v0

    .line 4161
    :catch_1
    move-exception v0

    move v0, v2

    .line 4167
    goto :goto_0
.end method


# virtual methods
.method public a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lbo;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1403
    invoke-direct/range {p0 .. p5}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;)I
    .locals 1

    .prologue
    .line 1913
    invoke-direct {p0, p1, p2}, Lae;->a(Laj;Lbo;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;I)I
    .locals 1

    .prologue
    .line 2065
    invoke-direct {p0, p1, p2, p3}, Lae;->b(Laj;Lo;I)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Lai;)I
    .locals 1

    .prologue
    .line 1921
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lbo;Lai;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Lam;)I
    .locals 1

    .prologue
    .line 1917
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lbo;Lam;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Lan;)I
    .locals 1

    .prologue
    .line 5647
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lbo;Lan;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1948
    invoke-direct {p0, p1, p2, p3}, Lae;->b(Laj;Lbo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 4805
    invoke-direct/range {p0 .. p6}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1937
    invoke-direct/range {p0 .. p5}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1943
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->b(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
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
    .line 4698
    invoke-direct/range {p0 .. p6}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
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
    .line 2105
    invoke-direct/range {p0 .. p5}, Lae;->b(Laj;Lo;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2084
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->i(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Laj;Lo;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 4910
    invoke-direct/range {p0 .. p6}, Lae;->b(Laj;Lo;ZLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public a(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5168
    invoke-direct {p0, p1, p2, p3}, Lae;->j(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public a(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 5315
    invoke-direct {p0, p1, p2, p3}, Lae;->d(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public b(Laj;Lo;)I
    .locals 1

    .prologue
    .line 5057
    invoke-direct {p0, p1, p2}, Lae;->d(Laj;Lo;)I

    move-result v0

    return v0
.end method

.method public b(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1965
    invoke-direct {p0, p1, p2, p3}, Lae;->u(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1933
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->a(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public b(Laj;Lo;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1996
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lae;->a(Laj;Lo;Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public b(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2139
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->g(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public b(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5132
    invoke-direct {p0, p1, p2, p3}, Lae;->i(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public b(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 5733
    invoke-direct {p0, p1, p2, p3}, Lae;->e(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public c(Laj;Lo;)I
    .locals 1

    .prologue
    .line 5398
    invoke-direct {p0, p1, p2}, Lae;->e(Laj;Lo;)I

    move-result v0

    return v0
.end method

.method public c(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1981
    invoke-direct {p0, p1, p2, p3}, Lae;->t(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Laj;Lo;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 1317
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->c(Laj;Lbo;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public c(Laj;Lo;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 2032
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lae;->a(Laj;Lo;Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public c(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2156
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->h(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public c(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5254
    invoke-direct {p0, p1, p2, p3}, Lae;->k(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public c(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 5770
    invoke-direct {p0, p1, p2, p3}, Lae;->f(Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public d(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2049
    invoke-direct {p0, p1, p2, p3}, Lae;->s(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Laj;Lo;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 2011
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lae;->a(Laj;Lo;Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public d(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3729
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->j(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public d(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v2, 0x595

    const/4 v1, 0x0

    .line 5345
    if-nez p3, :cond_1

    .line 5346
    const/16 v0, 0x522

    .line 5393
    :cond_0
    :goto_0
    return v0

    .line 5349
    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 5352
    :try_start_0
    new-instance v0, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v3

    invoke-direct {v0, v3}, Laf;-><init>([B)V

    .line 5353
    invoke-virtual {v0, p2, v4}, Laf;->a(Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5354
    if-nez v0, :cond_0

    .line 5363
    if-nez v0, :cond_0

    .line 5365
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 5367
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5368
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move v3, v1

    .line 5369
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v0, v1

    .line 5373
    goto :goto_0

    .line 5357
    :catch_0
    move-exception v0

    .line 5359
    const/16 v0, 0x58d

    goto :goto_0

    .line 5370
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5369
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5377
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5378
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move v0, v2

    .line 5380
    goto :goto_0

    .line 5384
    :catch_1
    move-exception v0

    .line 5386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5389
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 5390
    invoke-virtual {p3}, Ljava/util/Vector;->clear()V

    :cond_5
    move v0, v2

    .line 5393
    goto :goto_0
.end method

.method public e(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2122
    invoke-direct {p0, p1, p2, p3}, Lae;->r(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3953
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->k(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public e(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5738
    invoke-direct {p0, p1, p2, p3}, Lae;->l(Lo;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public f(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 3746
    invoke-direct {p0, p1, p2, p3}, Lae;->q(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Lo;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4184
    invoke-direct {p0, p1, p2, p3, p4}, Lae;->l(Laj;Lo;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public f(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v1, 0x58f

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 5875
    if-nez p3, :cond_1

    .line 5876
    const/16 v0, 0x522

    .line 5918
    :cond_0
    :goto_0
    return v0

    .line 5879
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 5881
    :try_start_1
    new-instance v0, Lab;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lab;-><init>([B)V

    .line 5882
    invoke-virtual {v0, p2, v3}, Lab;->a(Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 5884
    if-nez v0, :cond_0

    .line 5892
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v0, v5, :cond_2

    move v0, v1

    .line 5893
    goto :goto_0

    .line 5887
    :catch_0
    move-exception v0

    .line 5889
    const/16 v0, 0x58d

    goto :goto_0

    .line 5896
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->d([B)Ljava/lang/String;

    move-result-object v0

    .line 5897
    const-string v3, "&"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 5901
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5902
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {p3, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5903
    array-length v3, v0

    if-ne v3, v5, :cond_3

    .line 5904
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    move v0, v2

    .line 5906
    goto :goto_0

    .line 5908
    :catch_1
    move-exception v0

    move v0, v1

    .line 5909
    goto :goto_0

    .line 5914
    :catch_2
    move-exception v0

    .line 5915
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5918
    const/16 v0, 0x6bb

    goto :goto_0
.end method

.method public g(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 3711
    invoke-direct {p0, p1, p2, p3}, Lae;->y(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    const/16 v7, 0x1e

    const/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3562
    const/4 v2, -0x1

    .line 3563
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 3569
    :try_start_0
    new-instance v0, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v4

    invoke-direct {v0, v4}, Laf;-><init>([B)V

    .line 3570
    invoke-virtual {v0, p2, v3}, Laf;->a(Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3571
    if-eqz v0, :cond_0

    .line 3687
    :goto_0
    return v0

    .line 3574
    :catch_0
    move-exception v0

    .line 3576
    const/16 v0, 0x58d

    goto :goto_0

    .line 3580
    :cond_0
    if-nez v0, :cond_16

    .line 3581
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3582
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 3593
    :goto_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 3594
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    .line 3595
    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 3597
    invoke-virtual {p3, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move v0, v1

    .line 3600
    goto :goto_0

    .line 3585
    :catch_1
    move-exception v0

    .line 3586
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3587
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3590
    :cond_2
    const/16 v0, 0x595

    goto :goto_0

    .line 3608
    :cond_3
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_6

    .line 3611
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3612
    new-instance v1, Lbfy;

    const/16 v2, 0x3c

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0}, Lbfy;-><init>(IILjava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lbfy; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3613
    :catch_2
    move-exception v0

    .line 3615
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3690
    :catchall_0
    move-exception v0

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3694
    :cond_4
    throw v0

    .line 3616
    :catch_3
    move-exception v0

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3619
    :cond_5
    const/16 v0, 0x591

    goto :goto_0

    .line 3621
    :cond_6
    if-ne v0, v8, :cond_8

    .line 3624
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3625
    new-instance v1, Lbfy;

    const/16 v2, 0x28

    const-string v4, ""

    invoke-direct {v1, v2, v0, v4}, Lbfy;-><init>(IILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Lbfy; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3626
    :catch_4
    move-exception v0

    .line 3628
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3629
    :catch_5
    move-exception v0

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3632
    :cond_7
    const/16 v0, 0x592

    goto/16 :goto_0

    .line 3634
    :cond_8
    if-ne v0, v6, :cond_b

    .line 3637
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3639
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3640
    if-lez v1, :cond_9

    .line 3641
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3646
    :goto_2
    new-instance v1, Lbfy;

    const/16 v2, 0x14

    const-string v4, ""

    invoke-direct {v1, v2, v0, v4}, Lbfy;-><init>(IILjava/lang/String;)V

    throw v1
    :try_end_6
    .catch Lbfy; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3647
    :catch_6
    move-exception v0

    .line 3649
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3643
    :cond_9
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Lbfy; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    goto :goto_2

    .line 3650
    :catch_7
    move-exception v0

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3653
    :cond_a
    const/16 v0, 0x593    # 2.0E-42f

    goto/16 :goto_0

    .line 3655
    :cond_b
    if-ne v0, v7, :cond_14

    .line 3659
    :try_start_9
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 3660
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Lbfy; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    .line 3662
    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_d

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3663
    :cond_c
    const/16 v0, 0x3ef

    goto/16 :goto_0

    .line 3666
    :cond_d
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_f

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3667
    :cond_e
    const/16 v0, 0x3eb

    goto/16 :goto_0

    .line 3670
    :cond_f
    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_11

    .line 3691
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3671
    :cond_10
    const/16 v0, 0x3ec

    goto/16 :goto_0

    .line 3674
    :cond_11
    :try_start_a
    new-instance v1, Lbfy;

    const/16 v2, 0x1e

    const-string v4, ""

    invoke-direct {v1, v2, v0, v4}, Lbfy;-><init>(IILjava/lang/String;)V

    throw v1
    :try_end_a
    .catch Lbfy; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3677
    :catch_8
    move-exception v0

    .line 3679
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3680
    :catch_9
    move-exception v0

    .line 3691
    :cond_12
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3683
    :cond_13
    const/16 v0, 0x594

    goto/16 :goto_0

    .line 3691
    :cond_14
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 3692
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 3687
    :cond_15
    const/16 v0, 0x596

    goto/16 :goto_0

    :cond_16
    move v0, v2

    goto/16 :goto_1
.end method

.method public h(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 4094
    invoke-direct {p0, p1, p2, p3}, Lae;->z(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h(Lo;Ljava/lang/String;Ljava/util/Vector;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v2, 0x595

    const/4 v1, 0x0

    .line 5207
    .line 5209
    :try_start_0
    new-instance v0, Laf;

    invoke-virtual {p1}, Lo;->a()[B

    move-result-object v3

    invoke-direct {v0, v3}, Laf;-><init>([B)V

    .line 5210
    invoke-virtual {v0, p2, p3}, Laf;->a(Ljava/lang/String;Ljava/util/Vector;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5211
    if-eqz v0, :cond_1

    .line 5249
    :cond_0
    :goto_0
    return v0

    .line 5214
    :catch_0
    move-exception v0

    .line 5216
    const/16 v0, 0x58d

    goto :goto_0

    .line 5220
    :cond_1
    if-nez v0, :cond_0

    .line 5226
    :try_start_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 5228
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5229
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 5230
    goto :goto_0

    .line 5234
    :cond_2
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5235
    invoke-virtual {p3}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move v0, v2

    .line 5237
    goto :goto_0

    .line 5241
    :catch_1
    move-exception v0

    .line 5245
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5246
    invoke-virtual {p3}, Ljava/util/Vector;->clear()V

    :cond_4
    move v0, v2

    .line 5249
    goto :goto_0
.end method

.method public i(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 4337
    invoke-direct {p0, p1, p2, p3}, Lae;->A(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 5073
    invoke-direct {p0, p1, p2, p3}, Lae;->B(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 5451
    invoke-direct {p0, p1, p2, p3}, Lae;->C(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 5520
    invoke-direct {p0, p1, p2, p3}, Lae;->D(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public m(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2195
    invoke-direct {p0, p1, p2, p3}, Lae;->v(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2172
    invoke-direct {p0, p1, p2, p3}, Lae;->x(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2176
    invoke-direct {p0, p1, p2, p3}, Lae;->w(Laj;Lo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p(Laj;Lo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1925
    invoke-direct {p0, p1, p2, p3}, Lae;->a(Laj;Lbo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
