.class Lcz;
.super Li;
.source "SourceFile"

# interfaces
.implements Lbfu;


# static fields
.field public static final bo:C = 'a'

.field private static final bp:J = 0x1L

.field private static final bq:C = 'a'


# instance fields
.field private br:Ljava/lang/Object;

.field private bs:Ljava/lang/Object;

.field private bt:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Li;-><init>()V

    .line 760
    iput-object v0, p0, Lcz;->br:Ljava/lang/Object;

    .line 761
    iput-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    .line 762
    iput-object v0, p0, Lcz;->bt:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private a(Landroid/content/Context;Lbfv;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x604

    .line 461
    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 464
    :try_start_0
    new-instance v4, Lbfw;

    invoke-direct {v4}, Lbfw;-><init>()V

    .line 465
    invoke-super {p0, p2, v4}, Li;->a(Lbfv;Lbfw;)I

    move-result v0

    .line 466
    if-nez v0, :cond_7

    invoke-virtual {v4}, Lbfw;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v5, "br.com.santander.modulo.idsantander"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 478
    const-string v5, "br.com.santander.way"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    iget-object v1, p0, Lcz;->bt:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 482
    const/4 v4, 0x1

    move v9, v4

    move-object v4, v1

    move v1, v9

    .line 495
    :goto_0
    const-string v5, "d"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "d"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 496
    const-string v5, "d"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 497
    const-string v6, "d"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 502
    const-string v7, "a"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 503
    const-string v8, "a"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    move v0, v2

    .line 550
    :goto_1
    return v0

    .line 486
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 487
    invoke-virtual {v4}, Lbfw;->c()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    move v1, v3

    .line 489
    goto :goto_0

    .line 508
    :cond_2
    const-string v7, "b"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 509
    const-string v7, "b"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    move v0, v2

    .line 511
    goto :goto_1

    .line 515
    :cond_3
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 516
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 517
    const-string v1, "c"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 522
    const-string v4, "a"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    const-string v5, "a"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v2

    .line 525
    goto :goto_1

    .line 528
    :cond_4
    invoke-static {p1}, Ldy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 530
    goto :goto_1

    .line 533
    :cond_5
    const-string v4, "b"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v4, "b"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    .line 536
    goto :goto_1

    .line 539
    :cond_6
    invoke-static {p1}, Ldy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 541
    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    :cond_7
    move v0, v3

    .line 550
    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Lbfx;)I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcz;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcz;->br:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcz;->bs:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcz;->bt:Ljava/lang/Object;

    return-void
.end method

.method private c(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lda;

    invoke-direct {v0, p0}, Lda;-><init>(Lcz;)V

    .line 147
    invoke-virtual {v0}, Lda;->a()Ljava/lang/Object;

    move-result-object v0

    .line 141
    check-cast v0, Ldh;

    .line 148
    invoke-interface {v0, p1}, Ldh;->a(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbfv;Lbfw;)I
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfv;)I

    move-result v0

    .line 453
    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2, p3}, Li;->a(Lbfv;Lbfw;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lbfv;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfv;)I

    move-result v0

    .line 422
    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2, p3}, Li;->a(Lbfv;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfx;)I

    move-result v0

    .line 251
    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2, p3, p4}, Li;->b(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 291
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfx;)I

    move-result v0

    .line 293
    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-super/range {v0 .. v5}, Li;->a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 275
    invoke-super {p0, p2, p3, p4, p5}, Li;->a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lbfx;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfx;)I

    move-result v0

    .line 240
    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2, p3}, Li;->a(Lbfx;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Lbfr;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbfr;",
            ")I"
        }
    .end annotation

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcz;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lbfr;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lbfr;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lbfr;",
            ")I"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcz;->br:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ldb;

    invoke-direct {v0, p0}, Ldb;-><init>(Lcz;)V

    .line 669
    invoke-virtual {v0}, Ldb;->a()Ljava/lang/Object;

    move-result-object v0

    .line 653
    iput-object v0, p0, Lcz;->br:Ljava/lang/Object;

    .line 672
    :cond_0
    new-instance v0, Ldd;

    invoke-direct {v0, p0}, Ldd;-><init>(Lcz;)V

    .line 686
    invoke-virtual {v0}, Ldd;->b()Ldl;

    move-result-object v0

    .line 687
    new-instance v5, Ldf;

    invoke-direct {v5, p0, p4}, Ldf;-><init>(Lcz;Lbfr;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Ldl;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldm;)V

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lbfv;)I
    .locals 5

    .prologue
    .line 186
    invoke-super {p0, p1}, Li;->a(Lbfv;)I

    move-result v1

    .line 187
    if-nez v1, :cond_1

    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 192
    const-string v2, "c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "d"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    const-string v3, "c"

    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v3, "d"

    const-string v4, "d"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-super {p0, v3, v0}, Li;->b(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfv;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 209
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lbfv;Lbfw;)I
    .locals 1

    .prologue
    .line 447
    const/16 v0, 0x605

    return v0
.end method

.method public a(Lbfv;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 415
    const/16 v0, 0x605

    return v0
.end method

.method public a(Lbfx;)I
    .locals 5

    .prologue
    .line 153
    invoke-super {p0, p1}, Li;->a(Lbfx;)I

    move-result v1

    .line 154
    if-nez v1, :cond_1

    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcz;->bs:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 159
    const-string v2, "c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "d"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v3, "c"

    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "d"

    const-string v4, "d"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-super {p0, v3, v0}, Li;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfx;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 176
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
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
    .line 284
    const/16 v0, 0x605

    return v0
.end method

.method public a(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
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
    .line 262
    const/16 v0, 0x605

    return v0
.end method

.method public a(Lbfx;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x605

    return v0
.end method

.method public a([BLandroid/content/Context;)I
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lct;

    invoke-direct {v0}, Lct;-><init>()V

    invoke-virtual {v0}, Lct;->a()[B

    move-result-object v0

    .line 126
    if-nez p1, :cond_0

    move-object p1, v0

    .line 131
    :cond_0
    invoke-direct {p0, p2}, Lcz;->c(Landroid/content/Context;)[B

    move-result-object v1

    const/16 v2, 0x61

    .line 130
    invoke-virtual {p0, v0, p1, v1, v2}, Lcz;->a([B[B[BC)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "3.1.10"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 217
    invoke-static {p1}, Lcy;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Lbfv;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Lcz;->a(Landroid/content/Context;Lbfv;)I

    move-result v0

    .line 439
    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2, p3}, Li;->b(Lbfv;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Lbfv;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 432
    const/16 v0, 0x605

    return v0
.end method

.method public b(Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x605

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 221
    invoke-static {p1}, Lcy;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
