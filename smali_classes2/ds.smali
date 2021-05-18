.class Lds;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldr;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/Exception;

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Ldr;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object p1, p0, Lds;->a:Ldr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-boolean v0, p0, Lds;->b:Z

    .line 178
    iput-boolean v0, p0, Lds;->c:Z

    .line 179
    iput-boolean v0, p0, Lds;->d:Z

    .line 180
    iput-boolean v0, p0, Lds;->e:Z

    .line 182
    iput v0, p0, Lds;->f:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lds;->g:Ljava/lang/Exception;

    return-void
.end method

.method synthetic constructor <init>(Ldr;Lds;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lds;-><init>(Ldr;)V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x389

    const/4 v3, 0x0

    .line 793
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lds;->h:Landroid/content/Context;

    invoke-static {v1}, Ldy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 806
    if-nez v1, :cond_3

    .line 810
    :cond_2
    const/16 v0, 0x388

    iput v0, p0, Lds;->f:I

    .line 811
    iput-boolean v3, p0, Lds;->d:Z

    goto :goto_0

    .line 817
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 832
    :try_start_0
    new-instance v1, Ldk;

    iget-object v2, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ldk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 834
    if-nez v1, :cond_0

    .line 838
    const/16 v0, 0x389

    iput v0, p0, Lds;->f:I

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    iput v4, p0, Lds;->f:I

    .line 851
    iput-boolean v3, p0, Lds;->d:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V
    .locals 6

    .prologue
    const/16 v5, 0x392

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 597
    if-nez p1, :cond_0

    .line 607
    :try_start_0
    invoke-static {p2}, Ldz;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 638
    :cond_0
    :goto_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 639
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 640
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 642
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 651
    const/4 v0, 0x0

    check-cast v0, [B

    .line 656
    :try_start_1
    invoke-static {v2}, Lbw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 656
    invoke-virtual {p4, v0}, Ldk;->a([B)[B

    move-result-object v0

    .line 659
    if-nez v0, :cond_1

    .line 663
    const/16 v0, 0x392

    iput v0, p0, Lds;->f:I

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    :goto_1
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 613
    const/16 v1, 0x386

    iput v1, p0, Lds;->f:I

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    iput-boolean v4, p0, Lds;->e:Z

    .line 618
    iput-object v0, p0, Lds;->g:Ljava/lang/Exception;

    goto :goto_0

    .line 670
    :catch_1
    move-exception v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    iput v5, p0, Lds;->f:I

    .line 677
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    iput-boolean v3, p0, Lds;->d:Z

    goto :goto_1

    .line 691
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2, p3, p3, v2}, Ldr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v0, Lbx;

    invoke-direct {v0, v1}, Lbx;-><init>([B)V

    .line 704
    :try_start_2
    invoke-virtual {v0, p1}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 726
    invoke-static {p2, p3, p3, v0}, Ldr;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iput-boolean v4, p0, Lds;->b:Z

    .line 734
    iput-boolean v3, p0, Lds;->e:Z

    .line 735
    iput-boolean v3, p0, Lds;->c:Z

    goto :goto_1

    .line 706
    :catch_2
    move-exception v0

    .line 708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 712
    const/16 v1, 0x393

    iput v1, p0, Lds;->f:I

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    iput-boolean v3, p0, Lds;->d:Z

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 9

    .prologue
    const/16 v4, 0x389

    const/16 v2, 0x386

    const/16 v8, 0x38a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    const-string v0, "[DATABLINK]"

    const-string v1, "Datablink M200 Embedded Api v3.2.52"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v6, p0, Lds;->c:Z

    .line 197
    iput-boolean v6, p0, Lds;->d:Z

    .line 198
    iput-boolean v6, p0, Lds;->e:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lds;->g:Ljava/lang/Exception;

    .line 213
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lds;->h:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    invoke-static {v0}, Ldz;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 252
    if-nez v1, :cond_0

    .line 256
    iput v2, p0, Lds;->f:I

    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 581
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 219
    const/16 v1, 0x385

    iput v1, p0, Lds;->f:I

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 242
    iput v2, p0, Lds;->f:I

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    iput-boolean v7, p0, Lds;->e:Z

    .line 247
    iput-object v0, p0, Lds;->g:Ljava/lang/Exception;

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->a(Ldr;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 272
    const/16 v0, 0x387

    iput v0, p0, Lds;->f:I

    .line 273
    iput-boolean v6, p0, Lds;->d:Z

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lds;->h:Landroid/content/Context;

    invoke-static {v2}, Ldy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    if-nez v2, :cond_3

    .line 290
    :cond_2
    const/16 v0, 0x388

    iput v0, p0, Lds;->f:I

    .line 291
    iput-boolean v6, p0, Lds;->d:Z

    .line 292
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 311
    :try_start_2
    new-instance v3, Ldk;

    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {v3, v0, v2}, Ldk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    if-nez v3, :cond_4

    .line 317
    const/16 v0, 0x389

    iput v0, p0, Lds;->f:I

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 323
    :catch_2
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    iput v4, p0, Lds;->f:I

    .line 330
    iput-boolean v6, p0, Lds;->d:Z

    .line 331
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 342
    :cond_4
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-static {v0, v2, v2}, Ldr;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    if-nez v4, :cond_5

    .line 350
    iput-boolean v6, p0, Lds;->c:Z

    .line 351
    iput-boolean v7, p0, Lds;->b:Z

    .line 353
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 364
    :cond_5
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_b

    .line 367
    const/4 v0, 0x0

    check-cast v0, [B

    .line 375
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 378
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ldk;->b([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 411
    if-eqz v0, :cond_a

    .line 416
    :try_start_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 417
    invoke-static {v4}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    .line 422
    :try_start_5
    new-instance v4, Lbx;

    .line 423
    invoke-static {v0}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 422
    invoke-direct {v4, v0}, Lbx;-><init>([B)V

    .line 425
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-static {v0, v2, v2}, Ldr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    if-nez v0, :cond_7

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->c:Z

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lds;->b:Z

    .line 433
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 437
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    goto/16 :goto_0

    .line 384
    :cond_6
    const/16 v0, 0x38a

    :try_start_6
    iput v0, p0, Lds;->f:I

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->c:Z

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lds;->b:Z

    .line 389
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 391
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 395
    :catch_3
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    iput v8, p0, Lds;->f:I

    .line 402
    iput-boolean v6, p0, Lds;->c:Z

    .line 403
    iput-boolean v7, p0, Lds;->b:Z

    .line 405
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 447
    :cond_7
    :try_start_7
    invoke-virtual {v4, v0}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    sput-object v0, Ldr;->a:Ljava/lang/String;

    .line 450
    sget-object v0, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ldr;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 451
    sget-object v0, Ldr;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 454
    :cond_8
    const/16 v0, 0x38d

    iput v0, p0, Lds;->f:I

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z

    .line 456
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 468
    :cond_9
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    .line 469
    sget-object v2, Ldr;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ldt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 571
    iget-object v0, p0, Lds;->a:Ldr;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Ldr;->b:F

    .line 576
    iput-boolean v7, p0, Lds;->d:Z

    .line 577
    iput-boolean v6, p0, Lds;->c:Z

    .line 578
    iput-boolean v6, p0, Lds;->b:Z

    .line 579
    iput-boolean v6, p0, Lds;->e:Z

    .line 581
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 473
    :catch_4
    move-exception v0

    .line 476
    const/16 v0, 0x38d

    :try_start_8
    iput v0, p0, Lds;->f:I

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z

    .line 478
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v0

    goto/16 :goto_0

    .line 484
    :catch_5
    move-exception v0

    .line 485
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    const/16 v0, 0x38c

    iput v0, p0, Lds;->f:I

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lds;->d:Z

    .line 490
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v0

    goto/16 :goto_0

    .line 494
    :catch_6
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const/16 v0, 0x38b

    iput v0, p0, Lds;->f:I

    .line 500
    iput-boolean v6, p0, Lds;->d:Z

    .line 501
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 509
    :cond_a
    iput v8, p0, Lds;->f:I

    .line 511
    iput-boolean v6, p0, Lds;->c:Z

    .line 512
    iput-boolean v7, p0, Lds;->b:Z

    .line 514
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 516
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 524
    :cond_b
    iput-boolean v6, p0, Lds;->c:Z

    .line 525
    iput-boolean v7, p0, Lds;->b:Z

    .line 527
    iget-object v0, p0, Lds;->h:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v2, v3}, Lds;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldk;)V

    .line 529
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-boolean v0, p0, Lds;->e:Z

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    iget-object v1, p0, Lds;->g:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ldt;->a(Ljava/lang/Exception;)V

    .line 781
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-boolean v0, p0, Lds;->b:Z

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    invoke-interface {v0}, Ldt;->a()V

    goto :goto_0

    .line 758
    :cond_1
    iget-boolean v0, p0, Lds;->d:Z

    if-eqz v0, :cond_3

    .line 760
    iget-boolean v0, p0, Lds;->c:Z

    if-eqz v0, :cond_2

    .line 762
    invoke-direct {p0}, Lds;->a()V

    .line 763
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    invoke-interface {v0}, Ldt;->b()V

    .line 767
    :cond_2
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    iget-object v1, p0, Lds;->a:Ldr;

    iget v1, v1, Ldr;->b:F

    invoke-interface {v0, v1}, Ldt;->a(F)V

    .line 778
    :goto_1
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0, v3}, Ldr;->a(Ldr;Ldt;)V

    .line 779
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0, v3}, Ldr;->a(Ldr;Ljava/util/List;)V

    goto :goto_0

    .line 772
    :cond_3
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    invoke-interface {v0}, Ldt;->b()V

    .line 773
    iget-object v0, p0, Lds;->a:Ldr;

    invoke-static {v0}, Ldr;->b(Ldr;)Ldt;

    move-result-object v0

    iget v1, p0, Lds;->f:I

    .line 774
    iget-object v2, p0, Lds;->a:Ldr;

    iget v2, v2, Ldr;->b:F

    .line 773
    invoke-interface {v0, v1, v2}, Ldt;->a(IF)V

    goto :goto_1
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lds;->a([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lds;->a(Ljava/lang/Integer;)V

    return-void
.end method
