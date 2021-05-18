.class public Ldz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)F
    .locals 10

    .prologue
    const/4 v1, 0x0

    const v0, 0x3dcccccd    # 0.1f

    .line 58
    .line 66
    invoke-static {p1}, Ldz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    invoke-static {p2}, Ldz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    if-nez v3, :cond_1

    .line 76
    if-eqz v4, :cond_1

    move v2, v0

    .line 88
    :goto_0
    if-nez v4, :cond_2

    move v0, v1

    .line 233
    :cond_0
    :goto_1
    return v0

    .line 84
    :cond_1
    const v2, 0x3df5c28f    # 0.12f

    goto :goto_0

    .line 97
    :cond_2
    cmpl-float v5, v2, v0

    if-nez v5, :cond_3

    move v0, v2

    .line 100
    goto :goto_1

    .line 108
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 112
    invoke-static {v3, v4}, Ldz;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    invoke-static {v3}, Ldz;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const v0, 0x3e19999a    # 0.15f

    goto :goto_1

    .line 133
    :cond_4
    invoke-static {v3}, Ldz;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    const-string v0, "a"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    const-string v0, "a"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    :try_start_1
    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    const-string v5, "c"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 186
    invoke-static {v0, v5}, Ldz;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)F

    move-result v0

    .line 189
    float-to-double v6, v0

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    cmpg-double v5, v6, v8

    if-lez v5, :cond_0

    .line 193
    invoke-static {v1, v2}, Ldz;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)F

    move-result v0

    .line 196
    float-to-double v6, v0

    const-wide v8, 0x3fd8f5c28f5c28f6L    # 0.39

    cmpg-double v1, v6, v8

    if-lez v1, :cond_0

    .line 204
    :try_start_2
    const-string v0, "d"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 205
    const-string v1, "d"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Ldz;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)F

    move-result v0

    .line 217
    float-to-double v2, v0

    const-wide v4, 0x3fdf5c28f5c28f5cL    # 0.49

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 223
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 227
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 164
    const v0, 0x3e23d70a    # 0.16f

    .line 165
    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 178
    const v0, 0x3e3851ec    # 0.18f

    .line 179
    goto :goto_1

    .line 207
    :catch_2
    move-exception v0

    .line 209
    const v0, 0x3ed1eb85    # 0.41f

    .line 210
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 233
    goto/16 :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)F
    .locals 2

    .prologue
    .line 242
    :try_start_0
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const v0, 0x3e9eb852    # 0.31f

    .line 275
    :goto_0
    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    const v0, 0x3ea3d70a    # 0.32f

    goto :goto_0

    .line 260
    :cond_0
    :try_start_1
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const v0, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    .line 269
    :catch_1
    move-exception v0

    .line 271
    const v0, 0x3eae147b    # 0.34f

    goto :goto_0

    .line 275
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 687
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 689
    :try_start_0
    new-instance v1, Lea;

    invoke-direct {v1}, Lea;-><init>()V

    .line 693
    invoke-virtual {v1, p0}, Lea;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 695
    new-instance v2, Leb;

    invoke-direct {v2}, Leb;-><init>()V

    .line 699
    invoke-virtual {v2, p0}, Leb;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 701
    new-instance v3, Lec;

    invoke-direct {v3}, Lec;-><init>()V

    .line 705
    invoke-virtual {v3, p0}, Lec;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 708
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 710
    const-string v5, "a"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 712
    const-string v6, "b"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x98967f

    invoke-virtual {v5, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v5, "d"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    const-string v4, "c"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    const-string v3, "b"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string v1, "a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v1, "v"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 377
    .line 382
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 421
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    const-string v1, "c"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const-string v1, "a"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "v"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)F
    .locals 7

    .prologue
    const v0, 0x3f28f5c3    # 0.66f

    .line 444
    .line 461
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 497
    const-string v3, "c"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 498
    const v0, 0x3ecccccd    # 0.4f

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    const v0, 0x3f1c28f6    # 0.61f

    goto :goto_0

    .line 480
    :catch_1
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    const v0, 0x3f1eb852    # 0.62f

    goto :goto_0

    .line 505
    :cond_1
    const-string v3, "c"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 516
    :try_start_2
    const-string v3, "c"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 534
    :try_start_3
    const-string v4, "c"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 548
    const-string v5, ""

    .line 552
    if-eqz v3, :cond_0

    .line 554
    :try_start_4
    const-string v5, "a"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v5

    .line 573
    const-string v6, ""

    .line 577
    if-eqz v4, :cond_2

    .line 579
    :try_start_5
    const-string v6, "a"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    .line 597
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 599
    const v0, 0x3f2e147b    # 0.68f

    goto :goto_0

    .line 518
    :catch_2
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    const v0, 0x3f2147ae    # 0.63f

    goto :goto_0

    .line 536
    :catch_3
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    const v0, 0x3f23d70a    # 0.64f

    goto :goto_0

    .line 561
    :catch_4
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    const v0, 0x3f266666    # 0.65f

    goto :goto_0

    .line 583
    :cond_2
    const v0, 0x3f2b851f    # 0.67f

    goto :goto_0

    .line 586
    :catch_5
    move-exception v1

    .line 588
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 604
    :cond_3
    const v0, 0x3f6e147b    # 0.93f

    .line 613
    invoke-static {p0}, Ldy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 617
    const v0, 0x3f30a3d7    # 0.69f

    goto :goto_0

    .line 627
    :cond_4
    :try_start_6
    const-string v5, "b"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v5, "b"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 638
    const v0, 0x3f35c28f    # 0.71f

    goto/16 :goto_0

    .line 630
    :catch_6
    move-exception v0

    .line 632
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 633
    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_0

    .line 646
    :cond_5
    invoke-static {p0}, Ldy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 649
    const v0, 0x3f3851ec    # 0.72f

    goto/16 :goto_0

    .line 653
    :cond_6
    const-string v3, "a"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "a"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    const v0, 0x3f3ae148    # 0.73f

    goto/16 :goto_0

    .line 661
    :cond_7
    const v0, 0x3eae147b    # 0.34f

    goto/16 :goto_0

    .line 667
    :cond_8
    if-nez v1, :cond_9

    .line 669
    const v0, 0x3e99999a    # 0.3f

    goto/16 :goto_0

    .line 671
    :cond_9
    if-nez v2, :cond_a

    .line 673
    const v0, 0x3e9eb852    # 0.31f

    goto/16 :goto_0

    .line 677
    :cond_a
    const v0, 0x3eb33333    # 0.35f

    goto/16 :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)F
    .locals 2

    .prologue
    .line 281
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 283
    :cond_0
    const v0, 0x3e428f5c    # 0.19f

    .line 323
    :goto_0
    return v0

    .line 290
    :cond_1
    :try_start_0
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 295
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    const v0, 0x3e570a3d    # 0.21f

    goto :goto_0

    .line 308
    :cond_2
    :try_start_1
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const v0, 0x3e6147ae    # 0.22f

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 319
    const v0, 0x3e6b851f    # 0.23f

    goto :goto_0

    .line 323
    :cond_3
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 746
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 750
    :try_start_0
    new-instance v1, Led;

    invoke-direct {v1}, Led;-><init>()V

    .line 757
    invoke-virtual {v1, p0}, Led;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 759
    new-instance v2, Lee;

    invoke-direct {v2}, Lee;-><init>()V

    .line 766
    invoke-virtual {v2, p0}, Lee;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 768
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 770
    const-string v4, "a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 772
    const-string v5, "b"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x98967f

    invoke-virtual {v4, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v4, "d"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v1, "v"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)F
    .locals 2

    .prologue
    .line 329
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 331
    :cond_0
    const v0, 0x3ed1eb85    # 0.41f

    .line 371
    :goto_0
    return v0

    .line 338
    :cond_1
    :try_start_0
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const v0, 0x3ed70a3d    # 0.42f

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    const v0, 0x3edc28f6    # 0.43f

    goto :goto_0

    .line 356
    :cond_2
    :try_start_1
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    const v0, 0x3ee147ae    # 0.44f

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    .line 367
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0

    .line 371
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 399
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    const-string v1, "c"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    :cond_2
    const-string v1, "a"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    :cond_3
    const-string v1, "v"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "v"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
