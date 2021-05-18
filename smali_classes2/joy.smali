.class public Ljoy;
.super Lhbm;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "MenuService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lhbm;-><init>()V

    return-void
.end method

.method public static a(Ljow;)V
    .locals 4

    .prologue
    .line 524
    invoke-virtual {p0}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 525
    sget-object v2, Ljoz;->a:[I

    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v3

    invoke-virtual {v3}, Ljox;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 533
    :sswitch_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_0

    .line 537
    :cond_0
    return-void

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljow;Ljox;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 389
    if-eqz p2, :cond_1

    .line 390
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 391
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljox;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 396
    :goto_1
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 397
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    sget-object v3, Ljoz;->a:[I

    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v0

    invoke-virtual {v0}, Ljox;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 400
    :pswitch_0
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 404
    :pswitch_1
    invoke-direct {p0}, Ljoy;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 407
    :cond_2
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto :goto_2

    .line 411
    :pswitch_2
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 414
    :pswitch_3
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 417
    :pswitch_4
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 420
    :pswitch_5
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 423
    :pswitch_6
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_2

    .line 426
    :pswitch_7
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 429
    :pswitch_8
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 432
    :pswitch_9
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 437
    :pswitch_a
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    .line 438
    invoke-virtual {p1, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 446
    :cond_3
    sget-object v3, Ljoz;->a:[I

    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v0

    invoke-virtual {v0}, Ljox;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_b
    goto/16 :goto_2

    .line 448
    :pswitch_c
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 452
    :pswitch_d
    invoke-direct {p0}, Ljoy;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 455
    :cond_4
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 459
    :pswitch_e
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 462
    :pswitch_f
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 465
    :pswitch_10
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 466
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 468
    :cond_5
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 472
    :pswitch_11
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 475
    :pswitch_12
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 478
    :pswitch_13
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 482
    :pswitch_14
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 486
    :pswitch_15
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 490
    :pswitch_16
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 493
    :pswitch_17
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 497
    :pswitch_18
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 502
    :pswitch_19
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0, v4}, Ljow;->b(I)V

    .line 503
    invoke-virtual {p1, v4}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 513
    :cond_6
    return-void

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private a(Ljow;Ljox;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 682
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 683
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljox;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {v0, p3}, Ljow;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    return-void
.end method

.method private varargs a([Ljow;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 544
    :cond_0
    aget-object v0, p1, v2

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 547
    aget-object v0, p1, v3

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 550
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 553
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 577
    :goto_0
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    aget-object v0, p1, v3

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 583
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 586
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 592
    aget-object v0, p1, v1

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 595
    const/16 v0, 0xa

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 598
    const/16 v0, 0xb

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 601
    const/16 v0, 0xd

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    .line 605
    :cond_1
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    aget-object v0, p1, v5

    invoke-static {v0}, Ljoy;->a(Ljow;)V

    .line 611
    :cond_2
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 613
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    .line 616
    aget-object v0, p1, v1

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 619
    :cond_3
    aget-object v0, p1, v1

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 621
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_NO_ATM:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->a(Ljow;Ljox;)V

    .line 626
    :goto_1
    invoke-direct {p0}, Ljoy;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 627
    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 632
    :goto_2
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_NO_ATM:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->a(Ljow;Ljox;)V

    .line 637
    :cond_4
    new-instance v0, Lnba;

    iget-object v1, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnba;-><init>(Lmwy;Landroid/content/Context;)V

    .line 639
    invoke-virtual {v0}, Lnba;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    aget-object v1, p1, v4

    sget-object v2, Ljox;->SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER:Ljox;

    invoke-direct {p0, v1, v2}, Ljoy;->a(Ljow;Ljox;)V

    .line 643
    :cond_5
    invoke-virtual {v0}, Lnba;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 644
    aget-object v1, p1, v4

    sget-object v2, Ljox;->SUBMENU_ITEM_ID_SANTANDER:Ljox;

    invoke-direct {p0, v1, v2}, Ljoy;->a(Ljow;Ljox;)V

    .line 647
    :cond_6
    invoke-virtual {v0}, Lnba;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 648
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_ATIVAR_CSO:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->a(Ljow;Ljox;)V

    .line 651
    :cond_7
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 652
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_SOLICITAR_CSO:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->b(Ljow;Ljox;)V

    .line 655
    :cond_8
    new-instance v0, Lieu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-virtual {v0}, Lieu;->b()Z

    move-result v1

    if-nez v1, :cond_e

    .line 658
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->b(Ljow;Ljox;)V

    .line 670
    :goto_3
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_9

    .line 671
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ESCOLHA_CONTA_PREFERENCIAL:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->a(Ljow;Ljox;)V

    .line 674
    :cond_9
    new-instance v0, Lndz;

    invoke-direct {v0}, Lndz;-><init>()V

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lndz;->a(Landroid/content/Context;Ljava/lang/String;)Lgyv;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_a

    .line 676
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ID_URA_QR_IB:Ljox;

    invoke-direct {p0, v0, v1}, Ljoy;->a(Ljow;Ljox;)V

    .line 679
    :cond_a
    return-void

    .line 561
    :cond_b
    aget-object v0, p1, v2

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 564
    aget-object v0, p1, v3

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 567
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 570
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    .line 573
    const/16 v0, 0xa

    aget-object v0, p1, v0

    invoke-virtual {v0, v5}, Ljow;->b(I)V

    goto/16 :goto_0

    .line 623
    :cond_c
    aget-object v0, p1, v1

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_1

    .line 629
    :cond_d
    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto/16 :goto_2

    .line 660
    :cond_e
    aget-object v1, p1, v4

    sget-object v2, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    invoke-direct {p0, v1, v2}, Ljoy;->a(Ljow;Ljox;)V

    .line 661
    const-string v1, ""

    invoke-virtual {v0, v1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 662
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    .line 663
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-direct {p0, v0, v1, v2}, Ljoy;->a(Ljow;Ljox;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 665
    :cond_f
    aget-object v0, p1, v4

    sget-object v1, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    .line 666
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-direct {p0, v0, v1, v2}, Ljoy;->a(Ljow;Ljox;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private b(Ljow;Ljox;)V
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p1}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 517
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljox;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljow;->b(I)V

    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0}, Ljky;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljoy;->a:Lmiq;

    .line 692
    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0}, Ljky;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 693
    :cond_0
    const/4 v0, 0x1

    .line 695
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 703
    .line 706
    :try_start_0
    iget-object v1, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 707
    iget-object v1, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .line 710
    :goto_0
    iget-object v1, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Ljoy;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 714
    :goto_1
    if-lez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 719
    :cond_0
    :goto_2
    return v0

    .line 716
    :catch_0
    move-exception v1

    .line 717
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 80
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-virtual {v4}, Lmiq;->j()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->C()Lipi;

    move-result-object v34

    .line 45
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v4, Ljow;

    const v5, 0x7f020420

    sget-object v6, Ljox;->MENU_ITEM_HOME:Ljox;

    invoke-virtual {v6}, Ljox;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljox;->MENU_ITEM_HOME:Ljox;

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 51
    new-instance v5, Ljow;

    const v6, 0x7f020427

    sget-object v7, Ljox;->MENU_ITEM_PROPOSTAS_ABERTO:Ljox;

    invoke-virtual {v7}, Ljox;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljox;->MENU_ITEM_PROPOSTAS_ABERTO:Ljox;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 53
    new-instance v6, Ljow;

    const v7, 0x7f02041c

    sget-object v8, Ljox;->MENU_ITEM_CONTA_CORRIENTE:Ljox;

    invoke-virtual {v8}, Ljox;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljox;->MENU_ITEM_CONTA_CORRIENTE:Ljox;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-direct/range {v6 .. v11}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 55
    new-instance v7, Ljow;

    const v8, 0x7f020419

    sget-object v9, Ljox;->MENU_ITEM_CARTAO_DE_CREDITO:Ljox;

    invoke-virtual {v9}, Ljox;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljox;->MENU_ITEM_CARTAO_DE_CREDITO:Ljox;

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-direct/range {v7 .. v12}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 56
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljow;->a(Z)V

    .line 58
    new-instance v8, Ljow;

    const v9, 0x7f020425

    sget-object v10, Ljox;->MENU_ITEM_PAGAMENTOS:Ljox;

    invoke-virtual {v10}, Ljox;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljox;->MENU_ITEM_PAGAMENTOS:Ljox;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-direct/range {v8 .. v13}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 59
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljow;->a(Z)V

    .line 61
    new-instance v9, Ljow;

    const v10, 0x7f02042d

    sget-object v11, Ljox;->MENU_ITEM_TRANSFERENCIA:Ljox;

    invoke-virtual {v11}, Ljox;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljox;->MENU_ITEM_TRANSFERENCIA:Ljox;

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-direct/range {v9 .. v14}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 63
    new-instance v10, Ljow;

    const v11, 0x7f02041f

    sget-object v12, Ljox;->MENU_ITEM_EMPRESTIMOS:Ljox;

    invoke-virtual {v12}, Ljox;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljox;->MENU_ITEM_EMPRESTIMOS:Ljox;

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-direct/range {v10 .. v15}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 65
    new-instance v11, Ljow;

    const v12, 0x7f02041d

    sget-object v13, Ljox;->MENU_ITEM_GESTAO_DE_CREDITO:Ljox;

    invoke-virtual {v13}, Ljox;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljox;->MENU_ITEM_GESTAO_DE_CREDITO:Ljox;

    const/4 v15, 0x1

    const/16 v16, 0x9

    invoke-direct/range {v11 .. v16}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 67
    new-instance v12, Ljow;

    const v13, 0x7f020429

    sget-object v14, Ljox;->MENU_ITEM_RENEGOCIACAO:Ljox;

    invoke-virtual {v14}, Ljox;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljox;->MENU_ITEM_RENEGOCIACAO:Ljox;

    const/16 v16, 0x1

    const/16 v17, 0x8

    invoke-direct/range {v12 .. v17}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 69
    new-instance v13, Ljow;

    const v14, 0x7f020426

    sget-object v15, Ljox;->MENU_ITEM_POUPANCA:Ljox;

    invoke-virtual {v15}, Ljox;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljox;->MENU_ITEM_POUPANCA:Ljox;

    const/16 v17, 0x1

    const/16 v18, 0x9

    invoke-direct/range {v13 .. v18}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 70
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljow;->a(Z)V

    .line 72
    new-instance v14, Ljow;

    const v15, 0x7f020421

    sget-object v16, Ljox;->MENU_ITEM_INVESTIMENTOS:Ljox;

    invoke-virtual/range {v16 .. v16}, Ljox;->getName()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljox;->MENU_ITEM_INVESTIMENTOS:Ljox;

    const/16 v18, 0x0

    const/16 v19, 0xa

    invoke-direct/range {v14 .. v19}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 74
    new-instance v15, Ljow;

    const v16, 0x7f02041a

    sget-object v17, Ljox;->MENU_ITEM_CARTEIRA_DIARIA:Ljox;

    invoke-virtual/range {v17 .. v17}, Ljox;->getName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljox;->MENU_ITEM_CARTEIRA_DIARIA:Ljox;

    const/16 v19, 0x1

    const/16 v20, 0xb

    invoke-direct/range {v15 .. v20}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 76
    new-instance v16, Ljow;

    const v17, 0x7f020417

    sget-object v18, Ljox;->MENU_ITEM_CAMBIO:Ljox;

    invoke-virtual/range {v18 .. v18}, Ljox;->getName()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljox;->MENU_ITEM_CAMBIO:Ljox;

    const/16 v20, 0x0

    const/16 v21, 0xc

    invoke-direct/range {v16 .. v21}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiq;->f()Lmir;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiq;->f()Lmir;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lmir;->p()Liow;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiq;->f()Lmir;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lmir;->p()Liow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Liow;->e()Liph;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 80
    new-instance v17, Ljow;

    const v18, 0x7f02042b

    sget-object v19, Ljox;->MENU_ITEM_SEGUROS:Ljox;

    invoke-virtual/range {v19 .. v19}, Ljox;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljox;->MENU_ITEM_SEGUROS:Ljox;

    const-string v21, "s"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiq;->f()Lmir;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lmir;->p()Liow;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Liow;->e()Liph;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Liph;->v()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    :goto_0
    const/16 v22, 0xd

    invoke-direct/range {v17 .. v22}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    move-object/from16 v31, v17

    .line 85
    :goto_1
    new-instance v17, Ljow;

    const v18, 0x7f02041e

    sget-object v19, Ljox;->MENU_ITEM_CREDITO_IMOBILIARIO:Ljox;

    invoke-virtual/range {v19 .. v19}, Ljox;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljox;->MENU_ITEM_CREDITO_IMOBILIARIO:Ljox;

    const/16 v21, 0x1

    const/16 v22, 0xe

    invoke-direct/range {v17 .. v22}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 87
    new-instance v18, Ljow;

    const v19, 0x7f020494

    sget-object v20, Ljox;->MENU_ITEM_VERMELHINHA:Ljox;

    invoke-virtual/range {v20 .. v20}, Ljox;->getName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljox;->MENU_ITEM_VERMELHINHA:Ljox;

    const/16 v22, 0x1

    const/16 v23, 0xf

    invoke-direct/range {v18 .. v23}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 89
    new-instance v19, Ljow;

    const v20, 0x7f020418

    sget-object v21, Ljox;->MENU_ITEM_CAPITALIZACAO:Ljox;

    invoke-virtual/range {v21 .. v21}, Ljox;->getName()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljox;->MENU_ITEM_CAPITALIZACAO:Ljox;

    const/16 v23, 0x1

    const/16 v24, 0x10

    invoke-direct/range {v19 .. v24}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 91
    new-instance v20, Ljow;

    const v21, 0x7f020414

    sget-object v22, Ljox;->MENU_ITEM_AGENDAMENTOS:Ljox;

    invoke-virtual/range {v22 .. v22}, Ljox;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljox;->MENU_ITEM_AGENDAMENTOS:Ljox;

    const/16 v24, 0x1

    const/16 v25, 0x11

    invoke-direct/range {v20 .. v25}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 93
    new-instance v21, Ljow;

    const v22, 0x7f020428

    sget-object v23, Ljox;->MENU_ITEM_RECARGAR:Ljox;

    invoke-virtual/range {v23 .. v23}, Ljox;->getName()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljox;->MENU_ITEM_RECARGAR:Ljox;

    const/16 v25, 0x0

    const/16 v26, 0x12

    invoke-direct/range {v21 .. v26}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 95
    new-instance v22, Ljow;

    const v23, 0x7f02041b

    sget-object v24, Ljox;->MENU_ITEM_SEGUNDA_VIA_COMPROVANTES:Ljox;

    invoke-virtual/range {v24 .. v24}, Ljox;->getName()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljox;->MENU_ITEM_SEGUNDA_VIA_COMPROVANTES:Ljox;

    const/16 v26, 0x1

    const/16 v27, 0x13

    invoke-direct/range {v22 .. v27}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 97
    new-instance v23, Ljow;

    const v24, 0x7f020423

    sget-object v25, Ljox;->MENU_ITEM_MEU_PERFIL:Ljox;

    invoke-virtual/range {v25 .. v25}, Ljox;->getName()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Ljox;->MENU_ITEM_MEU_PERFIL:Ljox;

    const/16 v27, 0x1

    const/16 v28, 0x14

    invoke-direct/range {v23 .. v28}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmiq;->f()Lmir;

    move-result-object v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmiq;->f()Lmir;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lmir;->p()Liow;

    move-result-object v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmiq;->f()Lmir;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lmir;->p()Liow;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Liow;->e()Liph;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 101
    new-instance v24, Ljow;

    const v25, 0x7f020413

    sget-object v26, Ljox;->MENU_ITEM_AGENCIAS:Ljox;

    invoke-virtual/range {v26 .. v26}, Ljox;->getName()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Ljox;->MENU_ITEM_AGENCIAS:Ljox;

    const-string v28, "s"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmiq;->f()Lmir;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lmir;->p()Liow;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Liow;->e()Liph;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Liph;->v()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v28, 0x1

    :goto_2
    const/16 v29, 0x15

    invoke-direct/range {v24 .. v29}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    move-object/from16 v32, v24

    .line 106
    :goto_3
    new-instance v24, Ljow;

    const v25, 0x7f020415

    sget-object v26, Ljox;->MENU_ITEM_AJUDA:Ljox;

    invoke-virtual/range {v26 .. v26}, Ljox;->getName()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Ljox;->MENU_ITEM_AJUDA:Ljox;

    const/16 v28, 0x1

    const/16 v29, 0x16

    invoke-direct/range {v24 .. v29}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 108
    new-instance v25, Ljow;

    const v26, 0x7f020593

    sget-object v27, Ljox;->MENU_ITEM_ABRA_SUA_CONTA:Ljox;

    invoke-virtual/range {v27 .. v27}, Ljox;->getName()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljox;->MENU_ITEM_ABRA_SUA_CONTA:Ljox;

    const/16 v29, 0x1

    const/16 v30, 0x17

    invoke-direct/range {v25 .. v30}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    .line 110
    new-instance v26, Ljow;

    const v27, 0x7f020424

    sget-object v28, Ljox;->MENU_ITEM_NOTIFICACOES:Ljox;

    invoke-virtual/range {v28 .. v28}, Ljox;->getName()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljox;->MENU_ITEM_NOTIFICACOES:Ljox;

    const/16 v30, 0x1

    invoke-direct/range {v26 .. v30}, Ljow;-><init>(ILjava/lang/String;Ljox;I)V

    .line 114
    new-instance v27, Ljow;

    sget-object v28, Ljox;->SUBMENU_ITEM_SALDO:Ljox;

    invoke-virtual/range {v28 .. v28}, Ljox;->getName()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljox;->SUBMENU_ITEM_SALDO:Ljox;

    const/16 v30, 0x1

    invoke-direct/range {v27 .. v30}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 115
    new-instance v28, Ljow;

    sget-object v29, Ljox;->SUBMENU_ITEM_EXTRATO:Ljox;

    invoke-virtual/range {v29 .. v29}, Ljox;->getName()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Ljox;->SUBMENU_ITEM_EXTRATO:Ljox;

    const/16 v35, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 116
    new-instance v29, Ljow;

    sget-object v30, Ljox;->SUBMENU_ITEM_LANCAMENTO_FUTURO:Ljox;

    invoke-virtual/range {v30 .. v30}, Ljox;->getName()Ljava/lang/String;

    move-result-object v30

    sget-object v35, Ljox;->SUBMENU_ITEM_LANCAMENTO_FUTURO:Ljox;

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 118
    new-instance v30, Ljow;

    sget-object v35, Ljox;->SUBMENU_ITEM_WAY:Ljox;

    invoke-virtual/range {v35 .. v35}, Ljox;->getName()Ljava/lang/String;

    move-result-object v35

    sget-object v36, Ljox;->SUBMENU_ITEM_WAY:Ljox;

    const/16 v37, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 119
    new-instance v35, Ljow;

    sget-object v36, Ljox;->SUBMENU_ITEM_ULTIMAS_COMPRAS:Ljox;

    invoke-virtual/range {v36 .. v36}, Ljox;->getName()Ljava/lang/String;

    move-result-object v36

    sget-object v37, Ljox;->SUBMENU_ITEM_ULTIMAS_COMPRAS:Ljox;

    const/16 v38, 0x1

    invoke-direct/range {v35 .. v38}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 120
    new-instance v36, Ljow;

    sget-object v37, Ljox;->SUBMENU_ITEM_GERAR_CARTAO_VIRTUAL:Ljox;

    invoke-virtual/range {v37 .. v37}, Ljox;->getName()Ljava/lang/String;

    move-result-object v37

    sget-object v38, Ljox;->SUBMENU_ITEM_GERAR_CARTAO_VIRTUAL:Ljox;

    const/16 v39, 0x1

    invoke-direct/range {v36 .. v39}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 121
    new-instance v37, Ljow;

    sget-object v38, Ljox;->SUBMENU_ITEM_PONTOS_ESFERA:Ljox;

    invoke-virtual/range {v38 .. v38}, Ljox;->getName()Ljava/lang/String;

    move-result-object v38

    sget-object v39, Ljox;->SUBMENU_ITEM_PONTOS_ESFERA:Ljox;

    const/16 v40, 0x1

    invoke-direct/range {v37 .. v40}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 123
    new-instance v38, Ljow;

    sget-object v39, Ljox;->SUBMENU_ITEM_FATURAS:Ljox;

    invoke-virtual/range {v39 .. v39}, Ljox;->getName()Ljava/lang/String;

    move-result-object v39

    sget-object v40, Ljox;->SUBMENU_ITEM_FATURAS:Ljox;

    const/16 v41, 0x1

    invoke-direct/range {v38 .. v41}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 124
    new-instance v39, Ljow;

    sget-object v40, Ljox;->SUBMENU_ITEM_PAGAMENTO_FATURA:Ljox;

    invoke-virtual/range {v40 .. v40}, Ljox;->getName()Ljava/lang/String;

    move-result-object v40

    sget-object v41, Ljox;->SUBMENU_ITEM_PAGAMENTO_FATURA:Ljox;

    const/16 v42, 0x1

    invoke-direct/range {v39 .. v42}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 125
    new-instance v40, Ljow;

    sget-object v41, Ljox;->SUBMENU_ITEM_PARCELAMENTO_FATURA:Ljox;

    invoke-virtual/range {v41 .. v41}, Ljox;->getName()Ljava/lang/String;

    move-result-object v41

    sget-object v42, Ljox;->SUBMENU_ITEM_PARCELAMENTO_FATURA:Ljox;

    const/16 v43, 0x1

    invoke-direct/range {v40 .. v43}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 126
    new-instance v41, Ljow;

    sget-object v42, Ljox;->SUBMENU_ITEM_EMAIL_FATURA:Ljox;

    invoke-virtual/range {v42 .. v42}, Ljox;->getName()Ljava/lang/String;

    move-result-object v42

    sget-object v43, Ljox;->SUBMENU_ITEM_EMAIL_FATURA:Ljox;

    const/16 v44, 0x1

    invoke-direct/range {v41 .. v44}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 127
    new-instance v42, Ljow;

    sget-object v43, Ljox;->SUBMENU_ITEM_HAB_CART_EXT:Ljox;

    invoke-virtual/range {v43 .. v43}, Ljox;->getName()Ljava/lang/String;

    move-result-object v43

    sget-object v44, Ljox;->SUBMENU_ITEM_HAB_CART_EXT:Ljox;

    const/16 v45, 0x1

    invoke-direct/range {v42 .. v45}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 128
    new-instance v43, Ljow;

    sget-object v44, Ljox;->SUBMENU_ITEM_DESBLOQUEIO:Ljox;

    invoke-virtual/range {v44 .. v44}, Ljox;->getName()Ljava/lang/String;

    move-result-object v44

    sget-object v45, Ljox;->SUBMENU_ITEM_DESBLOQUEIO:Ljox;

    const/16 v46, 0x1

    invoke-direct/range {v43 .. v46}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 129
    new-instance v44, Ljow;

    sget-object v45, Ljox;->SUBMENU_ITEM_SOLICITE_SEU_CARTAO:Ljox;

    invoke-virtual/range {v45 .. v45}, Ljox;->getName()Ljava/lang/String;

    move-result-object v45

    sget-object v46, Ljox;->SUBMENU_ITEM_SOLICITE_SEU_CARTAO:Ljox;

    const/16 v47, 0x1

    invoke-direct/range {v44 .. v47}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 130
    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljow;->a(Z)V

    .line 131
    new-instance v45, Ljow;

    sget-object v46, Ljox;->SUBMENU_ITEM_BLOQUEIO:Ljox;

    invoke-virtual/range {v46 .. v46}, Ljox;->getName()Ljava/lang/String;

    move-result-object v46

    sget-object v47, Ljox;->SUBMENU_ITEM_BLOQUEIO:Ljox;

    const/16 v48, 0x1

    invoke-direct/range {v45 .. v48}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 133
    new-instance v46, Ljow;

    sget-object v47, Ljox;->SUBMENU_PGTO_TITULOS_CONTAS:Ljox;

    invoke-virtual/range {v47 .. v47}, Ljox;->getName()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Ljox;->SUBMENU_PGTO_TITULOS_CONTAS:Ljox;

    const/16 v49, 0x1

    invoke-direct/range {v46 .. v49}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 134
    new-instance v47, Ljow;

    sget-object v48, Ljox;->SUBMENU_CAD_DEBITO_AUTOMATICO:Ljox;

    invoke-virtual/range {v48 .. v48}, Ljox;->getName()Ljava/lang/String;

    move-result-object v48

    sget-object v49, Ljox;->SUBMENU_CAD_DEBITO_AUTOMATICO:Ljox;

    const/16 v50, 0x1

    invoke-direct/range {v47 .. v50}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 135
    new-instance v48, Ljow;

    sget-object v49, Ljox;->SUBMENU_PGTO_TITULOS_CARTORIOS:Ljox;

    invoke-virtual/range {v49 .. v49}, Ljox;->getName()Ljava/lang/String;

    move-result-object v49

    sget-object v50, Ljox;->SUBMENU_PGTO_TITULOS_CARTORIOS:Ljox;

    const/16 v51, 0x1

    invoke-direct/range {v48 .. v51}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 136
    new-instance v49, Ljow;

    sget-object v50, Ljox;->SUBMENU_DDA:Ljox;

    invoke-virtual/range {v50 .. v50}, Ljox;->getName()Ljava/lang/String;

    move-result-object v50

    sget-object v51, Ljox;->SUBMENU_DDA:Ljox;

    const/16 v52, 0x1

    invoke-direct/range {v49 .. v52}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 138
    new-instance v50, Ljow;

    sget-object v51, Ljox;->SUBMENU_ITEM_SIMULAR_CONTRATAR:Ljox;

    invoke-virtual/range {v51 .. v51}, Ljox;->getName()Ljava/lang/String;

    move-result-object v51

    sget-object v52, Ljox;->SUBMENU_ITEM_SIMULAR_CONTRATAR:Ljox;

    const/16 v53, 0x1

    invoke-direct/range {v50 .. v53}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 139
    new-instance v51, Ljow;

    sget-object v52, Ljox;->SUBMENU_ITEM_ANTECIPACAO_DT:Ljox;

    invoke-virtual/range {v52 .. v52}, Ljox;->getName()Ljava/lang/String;

    move-result-object v52

    sget-object v53, Ljox;->SUBMENU_ITEM_ANTECIPACAO_DT:Ljox;

    const/16 v54, 0x1

    invoke-direct/range {v51 .. v54}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 140
    new-instance v52, Ljow;

    sget-object v53, Ljox;->SUBMENU_ITEM_ANTECIPACAO_IR:Ljox;

    invoke-virtual/range {v53 .. v53}, Ljox;->getName()Ljava/lang/String;

    move-result-object v53

    sget-object v54, Ljox;->SUBMENU_ITEM_ANTECIPACAO_IR:Ljox;

    const/16 v55, 0x1

    invoke-direct/range {v52 .. v55}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 141
    new-instance v53, Ljow;

    sget-object v54, Ljox;->SUBMENU_ITEM_MEUS_EMPRESTIMOS:Ljox;

    invoke-virtual/range {v54 .. v54}, Ljox;->getName()Ljava/lang/String;

    move-result-object v54

    sget-object v55, Ljox;->SUBMENU_ITEM_MEUS_EMPRESTIMOS:Ljox;

    const/16 v56, 0x1

    invoke-direct/range {v53 .. v56}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 143
    new-instance v54, Ljow;

    sget-object v55, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_SIMULAR:Ljox;

    invoke-virtual/range {v55 .. v55}, Ljox;->getName()Ljava/lang/String;

    move-result-object v55

    sget-object v56, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_SIMULAR:Ljox;

    const/16 v57, 0x1

    invoke-direct/range {v54 .. v57}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 144
    new-instance v55, Ljow;

    sget-object v56, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_CANCELAR:Ljox;

    invoke-virtual/range {v56 .. v56}, Ljox;->getName()Ljava/lang/String;

    move-result-object v56

    sget-object v57, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_CANCELAR:Ljox;

    const/16 v58, 0x1

    invoke-direct/range {v55 .. v58}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 146
    new-instance v56, Ljow;

    sget-object v57, Ljox;->SUBMENU_ITEM_TRANSF_EXTERIOR:Ljox;

    invoke-virtual/range {v57 .. v57}, Ljox;->getName()Ljava/lang/String;

    move-result-object v57

    sget-object v58, Ljox;->SUBMENU_ITEM_TRANSF_EXTERIOR:Ljox;

    const/16 v59, 0x1

    invoke-direct/range {v56 .. v59}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 148
    new-instance v57, Ljow;

    sget-object v58, Ljox;->SUBMENU_ITEM_TROCA_DE_SENHA:Ljox;

    invoke-virtual/range {v58 .. v58}, Ljox;->getName()Ljava/lang/String;

    move-result-object v58

    sget-object v59, Ljox;->SUBMENU_ITEM_TROCA_DE_SENHA:Ljox;

    const/16 v60, 0x1

    invoke-direct/range {v57 .. v60}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 150
    new-instance v58, Ljow;

    sget-object v59, Ljox;->SUBMENU_ITEM_SOLICITAR_CSO:Ljox;

    invoke-virtual/range {v59 .. v59}, Ljox;->getName()Ljava/lang/String;

    move-result-object v59

    sget-object v60, Ljox;->SUBMENU_ITEM_SOLICITAR_CSO:Ljox;

    const/16 v61, 0x1

    invoke-direct/range {v58 .. v61}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 151
    new-instance v59, Ljow;

    sget-object v60, Ljox;->SUBMENU_ITEM_ATIVAR_CSO:Ljox;

    invoke-virtual/range {v60 .. v60}, Ljox;->getName()Ljava/lang/String;

    move-result-object v60

    sget-object v61, Ljox;->SUBMENU_ITEM_ATIVAR_CSO:Ljox;

    const/16 v62, 0x0

    invoke-direct/range {v59 .. v62}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 153
    new-instance v60, Ljow;

    sget-object v61, Ljox;->SUBMENU_ITEM_INVESTIMENTO_NO_ATM:Ljox;

    invoke-virtual/range {v61 .. v61}, Ljox;->getName()Ljava/lang/String;

    move-result-object v61

    sget-object v62, Ljox;->SUBMENU_ITEM_INVESTIMENTO_NO_ATM:Ljox;

    const/16 v63, 0x0

    invoke-direct/range {v60 .. v63}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 154
    new-instance v61, Ljow;

    sget-object v62, Ljox;->SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER:Ljox;

    invoke-virtual/range {v62 .. v62}, Ljox;->getName()Ljava/lang/String;

    move-result-object v62

    sget-object v63, Ljox;->SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER:Ljox;

    const/16 v64, 0x0

    invoke-direct/range {v61 .. v64}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 155
    new-instance v62, Ljow;

    sget-object v63, Ljox;->SUBMENU_ITEM_HABILITAR_OUTRO_DEVICE:Ljox;

    invoke-virtual/range {v63 .. v63}, Ljox;->getName()Ljava/lang/String;

    move-result-object v63

    sget-object v64, Ljox;->SUBMENU_ITEM_HABILITAR_OUTRO_DEVICE:Ljox;

    const/16 v65, 0x1

    invoke-direct/range {v62 .. v65}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 156
    new-instance v63, Ljow;

    sget-object v64, Ljox;->SUBMENU_ITEM_ID_SANTANDER:Ljox;

    invoke-virtual/range {v64 .. v64}, Ljox;->getName()Ljava/lang/String;

    move-result-object v64

    sget-object v65, Ljox;->SUBMENU_ITEM_ID_SANTANDER:Ljox;

    const/16 v66, 0x0

    invoke-direct/range {v63 .. v66}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 157
    new-instance v64, Ljow;

    sget-object v65, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    invoke-virtual/range {v65 .. v65}, Ljox;->getName()Ljava/lang/String;

    move-result-object v65

    sget-object v66, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    const/16 v67, 0x0

    invoke-direct/range {v64 .. v67}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 158
    new-instance v65, Ljow;

    sget-object v66, Ljox;->SUBMENU_ITEM_HABILITAR_TRANSFERGOLDEN:Ljox;

    invoke-virtual/range {v66 .. v66}, Ljox;->getName()Ljava/lang/String;

    move-result-object v66

    sget-object v67, Ljox;->SUBMENU_ITEM_HABILITAR_TRANSFERGOLDEN:Ljox;

    const/16 v68, 0x1

    invoke-direct/range {v65 .. v68}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 159
    new-instance v65, Ljow;

    sget-object v66, Ljox;->SUBMENU_ITEM_DESABILITAR_TRANSFERGOLDEN:Ljox;

    invoke-virtual/range {v66 .. v66}, Ljox;->getName()Ljava/lang/String;

    move-result-object v66

    sget-object v67, Ljox;->SUBMENU_ITEM_DESABILITAR_TRANSFERGOLDEN:Ljox;

    const/16 v68, 0x1

    invoke-direct/range {v65 .. v68}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 160
    new-instance v65, Ljow;

    sget-object v66, Ljox;->SUBMENU_ITEM_POLITICIA_PRIVACIDADE_GOOGLE:Ljox;

    invoke-virtual/range {v66 .. v66}, Ljox;->getName()Ljava/lang/String;

    move-result-object v66

    sget-object v67, Ljox;->SUBMENU_ITEM_POLITICIA_PRIVACIDADE_GOOGLE:Ljox;

    const/16 v68, 0x1

    invoke-direct/range {v65 .. v68}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 161
    new-instance v66, Ljow;

    sget-object v67, Ljox;->SUBMENU_ITEM_CONFIGURACAO_NOTIFICACAO:Ljox;

    invoke-virtual/range {v67 .. v67}, Ljox;->getName()Ljava/lang/String;

    move-result-object v67

    sget-object v68, Ljox;->SUBMENU_ITEM_CONFIGURACAO_NOTIFICACAO:Ljox;

    const/16 v69, 0x1

    invoke-direct/range {v66 .. v69}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 162
    new-instance v67, Ljow;

    const v68, 0x7f02049a

    sget-object v69, Ljox;->SUBMENU_ITEM_CONTRATAR_SEGURO:Ljox;

    invoke-virtual/range {v69 .. v69}, Ljox;->getName()Ljava/lang/String;

    move-result-object v69

    sget-object v70, Ljox;->SUBMENU_ITEM_CONTRATAR_SEGURO:Ljox;

    const/16 v71, 0x1

    invoke-direct/range {v67 .. v71}, Ljow;-><init>(ILjava/lang/String;Ljox;I)V

    .line 163
    new-instance v68, Ljow;

    const v69, 0x7f02049a

    sget-object v70, Ljox;->SUBMENU_ITEM_MEUS_SEGUROS:Ljox;

    invoke-virtual/range {v70 .. v70}, Ljox;->getName()Ljava/lang/String;

    move-result-object v70

    sget-object v71, Ljox;->SUBMENU_ITEM_MEUS_SEGUROS:Ljox;

    const/16 v72, 0x1

    invoke-direct/range {v68 .. v72}, Ljow;-><init>(ILjava/lang/String;Ljox;I)V

    .line 164
    new-instance v69, Ljow;

    const v70, 0x7f020433

    sget-object v71, Ljox;->SUBMENU_ITEM_MEUS_SINISTROS:Ljox;

    invoke-virtual/range {v71 .. v71}, Ljox;->getName()Ljava/lang/String;

    move-result-object v71

    sget-object v72, Ljox;->SUBMENU_ITEM_MEUS_SINISTROS:Ljox;

    const/16 v73, 0x1

    invoke-direct/range {v69 .. v73}, Ljow;-><init>(ILjava/lang/String;Ljox;I)V

    .line 165
    new-instance v70, Ljow;

    const v71, 0x7f020433

    sget-object v72, Ljox;->SUBMENU_ITEM_MINHAS_ASSISTENCIAS:Ljox;

    invoke-virtual/range {v72 .. v72}, Ljox;->getName()Ljava/lang/String;

    move-result-object v72

    sget-object v73, Ljox;->SUBMENU_ITEM_MINHAS_ASSISTENCIAS:Ljox;

    const/16 v74, 0x1

    invoke-direct/range {v70 .. v74}, Ljow;-><init>(ILjava/lang/String;Ljox;I)V

    .line 167
    new-instance v71, Ljow;

    sget-object v72, Ljox;->SUBMENU_ITEM_MEUS_INVESTIMENTOS:Ljox;

    invoke-virtual/range {v72 .. v72}, Ljox;->getName()Ljava/lang/String;

    move-result-object v72

    sget-object v73, Ljox;->SUBMENU_ITEM_MEUS_INVESTIMENTOS:Ljox;

    const/16 v74, 0x1

    invoke-direct/range {v71 .. v74}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 168
    new-instance v72, Ljow;

    sget-object v73, Ljox;->SUBMENU_ITEM_CANCELAR_INVESTIMENTO:Ljox;

    invoke-virtual/range {v73 .. v73}, Ljox;->getName()Ljava/lang/String;

    move-result-object v73

    sget-object v74, Ljox;->SUBMENU_ITEM_CANCELAR_INVESTIMENTO:Ljox;

    const/16 v75, 0x1

    invoke-direct/range {v72 .. v75}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 170
    new-instance v73, Ljow;

    sget-object v74, Ljox;->SUBMENU_ESCOLHA_CONTA_PREFERENCIAL:Ljox;

    invoke-virtual/range {v74 .. v74}, Ljox;->getName()Ljava/lang/String;

    move-result-object v74

    sget-object v75, Ljox;->SUBMENU_ESCOLHA_CONTA_PREFERENCIAL:Ljox;

    const/16 v76, 0x0

    invoke-direct/range {v73 .. v76}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 172
    new-instance v74, Ljow;

    sget-object v75, Ljox;->SUBMENU_ID_URA_QR_IB:Ljox;

    invoke-virtual/range {v75 .. v75}, Ljox;->getName()Ljava/lang/String;

    move-result-object v75

    sget-object v76, Ljox;->SUBMENU_ID_URA_QR_IB:Ljox;

    const/16 v77, 0x0

    invoke-direct/range {v74 .. v77}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 174
    new-instance v75, Ljow;

    sget-object v76, Ljox;->SUBMENU_ITEM_MEUS_COMPROMISSOS:Ljox;

    invoke-virtual/range {v76 .. v76}, Ljox;->getName()Ljava/lang/String;

    move-result-object v76

    sget-object v77, Ljox;->SUBMENU_ITEM_MEUS_COMPROMISSOS:Ljox;

    const/16 v78, 0x1

    invoke-direct/range {v75 .. v78}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 176
    new-instance v76, Ljow;

    sget-object v77, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITE_DE_CONTA:Ljox;

    invoke-virtual/range {v77 .. v77}, Ljox;->getName()Ljava/lang/String;

    move-result-object v77

    sget-object v78, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITE_DE_CONTA:Ljox;

    const/16 v79, 0x1

    invoke-direct/range {v76 .. v79}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 177
    new-instance v76, Ljow;

    sget-object v77, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITES:Ljox;

    invoke-virtual/range {v77 .. v77}, Ljox;->getName()Ljava/lang/String;

    move-result-object v77

    sget-object v78, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITES:Ljox;

    const/16 v79, 0x1

    invoke-direct/range {v76 .. v79}, Ljow;-><init>(Ljava/lang/String;Ljox;I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lmiq;->f()Lmir;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v76

    if-eqz v76, :cond_5

    .line 182
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    :goto_4
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const/16 v4, 0xe

    new-array v4, v4, [Ljow;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v8, v4, v5

    const/4 v5, 0x3

    aput-object v9, v4, v5

    const/4 v5, 0x4

    aput-object v21, v4, v5

    const/4 v5, 0x5

    aput-object v14, v4, v5

    const/4 v5, 0x6

    aput-object v10, v4, v5

    const/4 v5, 0x7

    aput-object v23, v4, v5

    const/16 v5, 0x8

    aput-object v32, v4, v5

    const/16 v5, 0x9

    aput-object v24, v4, v5

    const/16 v5, 0xa

    aput-object v16, v4, v5

    const/16 v5, 0xb

    aput-object v12, v4, v5

    const/16 v5, 0xc

    aput-object v11, v4, v5

    const/16 v5, 0xd

    aput-object v15, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljoy;->a([Ljow;)V

    move-object/from16 v4, v33

    .line 383
    :goto_5
    return-object v4

    .line 80
    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 82
    :cond_2
    new-instance v17, Ljow;

    const v18, 0x7f02042b

    sget-object v19, Ljox;->MENU_ITEM_SEGUROS:Ljox;

    invoke-virtual/range {v19 .. v19}, Ljox;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljox;->MENU_ITEM_SEGUROS:Ljox;

    const/16 v21, 0x0

    const/16 v22, 0xd

    invoke-direct/range {v17 .. v22}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    move-object/from16 v31, v17

    goto/16 :goto_1

    .line 101
    :cond_3
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 103
    :cond_4
    new-instance v24, Ljow;

    const v25, 0x7f020413

    sget-object v26, Ljox;->MENU_ITEM_AGENCIAS:Ljox;

    invoke-virtual/range {v26 .. v26}, Ljox;->getName()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Ljox;->MENU_ITEM_AGENCIAS:Ljox;

    const/16 v28, 0x0

    const/16 v29, 0x15

    invoke-direct/range {v24 .. v29}, Ljow;-><init>(ILjava/lang/String;Ljox;II)V

    move-object/from16 v32, v24

    goto/16 :goto_3

    .line 193
    :cond_5
    invoke-virtual {v6}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v6}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v6}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v25

    const-string v27, "CL"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 219
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v25

    const-string v27, "VG"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 220
    :cond_6
    invoke-virtual {v7}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_7
    invoke-virtual {v8}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v8}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v8}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v25, "00000102"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 228
    invoke-virtual {v8}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_8
    invoke-virtual {v10}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v10}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v12}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Lhfc;->b()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 238
    invoke-virtual {v12}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_9
    invoke-virtual {v10}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v10}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual/range {v16 .. v16}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lmiq;->f()Lmir;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmir;->p()Liow;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Liow;->k()Ljava/lang/String;

    move-result-object v25

    const-string v27, "S"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 249
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lmiq;->f()Lmir;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmir;->y()Lmwy;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmwy;->a()Ljava/lang/String;

    move-result-object v25

    .line 256
    sget-object v27, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual/range {v27 .. v27}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 257
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_b
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v25, "00000090"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 273
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lmiq;->f()Lmir;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmir;->p()Liow;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Liow;->e()Liph;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Liph;->e()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    .line 277
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual/range {v31 .. v31}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual/range {v31 .. v31}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual/range {v31 .. v31}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v25, "00000109"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 286
    invoke-virtual/range {v31 .. v31}, Ljow;->h()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_e
    const-string v25, "00000091"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 290
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lmiq;->f()Lmir;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmir;->z()I

    move-result v25

    if-lez v25, :cond_10

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Ljoy;->a:Lmiq;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lmiq;->f()Lmir;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmir;->z()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljow;->d(I)V

    .line 295
    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_10
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->z()Ljnc;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 301
    invoke-static {}, Lmzr;->d()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_11

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->z()Ljnc;

    move-result-object v4

    invoke-virtual {v4}, Ljnc;->b()Ljne;

    move-result-object v4

    .line 303
    new-instance v25, Ljow;

    invoke-virtual {v4}, Ljne;->b()Landroid/graphics/Bitmap;

    move-result-object v26

    .line 304
    invoke-virtual {v4}, Ljne;->c()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljox;->MENU_LOJA_ONLINE:Ljox;

    const/16 v29, 0x1

    const/16 v30, 0x4

    invoke-direct/range {v25 .. v30}, Ljow;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljox;II)V

    .line 306
    invoke-virtual {v4}, Ljne;->d()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljow;->f(I)V

    .line 307
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_11
    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v0, v33

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {}, Lmzr;->d()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_12

    .line 316
    move-object/from16 v0, v33

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_12
    const-string v4, "00000105"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Lipi;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 323
    move-object/from16 v0, v33

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v11}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_13
    invoke-static {}, Lmzr;->d()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 333
    move-object/from16 v0, v33

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_14
    move-object/from16 v0, v33

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v14}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v14}, Ljow;->h()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->q()Lgvx;

    move-result-object v4

    invoke-interface {v4}, Lgvx;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 343
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    .line 344
    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->q()Lgvx;

    move-result-object v4

    invoke-interface {v4}, Lgvx;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 345
    move-object/from16 v0, v33

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->p()Liow;

    move-result-object v4

    invoke-virtual {v4}, Liow;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 349
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_16
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v4

    .line 357
    const-string v5, "CL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "VG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "VGUN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "SE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_17
    const/4 v4, 0x1

    .line 359
    :goto_6
    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 360
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_18
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Ljoy;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 357
    :cond_19
    const/4 v4, 0x0

    goto :goto_6

    .line 382
    :cond_1a
    const-string v4, "MenuService"

    const-string v5, "Avoid get menus after crash"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v4, 0x0

    goto/16 :goto_5
.end method
