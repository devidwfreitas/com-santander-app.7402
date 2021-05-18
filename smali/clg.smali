.class public abstract Lclg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D = 0.017453292519943295

.field public static final b:F = 0.017453292f

.field public static final c:D

.field public static final d:F

.field private static e:Landroid/util/DisplayMetrics;

.field private static f:I

.field private static g:I

.field private static h:Landroid/graphics/Rect;

.field private static i:Landroid/graphics/Paint$FontMetrics;

.field private static j:Landroid/graphics/Rect;

.field private static final k:[I

.field private static l:Lchn;

.field private static m:Landroid/graphics/Rect;

.field private static n:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x32

    sput v0, Lclg;->f:I

    .line 38
    const/16 v0, 0x1f40

    sput v0, Lclg;->g:I

    .line 43
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lclg;->c:D

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lclg;->d:F

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lclg;->h:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lclg;->i:Landroid/graphics/Paint$FontMetrics;

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lclg;->j:Landroid/graphics/Rect;

    .line 235
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lclg;->k:[I

    .line 239
    invoke-static {}, Lclg;->e()Lchn;

    move-result-object v0

    sput-object v0, Lclg;->l:Lchn;

    .line 535
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lclg;->m:Landroid/graphics/Rect;

    .line 536
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lclg;->n:Landroid/graphics/Paint$FontMetrics;

    return-void

    .line 235
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)F
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 363
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    .line 368
    :cond_1
    cmpg-double v0, p0, v2

    if-gez v0, :cond_2

    neg-double v0, p0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 369
    float-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x1

    .line 370
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 371
    float-to-double v2, v0

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 372
    long-to-float v1, v2

    div-float v0, v1, v0

    goto :goto_0

    :cond_2
    move-wide v0, p0

    .line 368
    goto :goto_1
.end method

.method public static a(F)F
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return p0

    .line 115
    :cond_0
    sget-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    .line 116
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    .line 117
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Paint;)F
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lclg;->i:Landroid/graphics/Paint$FontMetrics;

    invoke-static {p0, v0}, Lclg;->a(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 183
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a()Lchn;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lclg;->l:Lchn;

    return-object v0
.end method

.method public static a(FFF)Lckw;
    .locals 1

    .prologue
    .line 735
    const v0, 0x3c8efa35

    mul-float/2addr v0, p2

    .line 736
    invoke-static {p0, p1, v0}, Lclg;->b(FFF)Lckw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lckw;F)Lckw;
    .locals 3

    .prologue
    .line 706
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    .line 707
    iget v1, p0, Lckw;->a:F

    iget v2, p0, Lckw;->b:F

    invoke-static {v1, v2, v0}, Lclg;->b(FFF)Lckw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcla;FF)Lcla;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-static {v0, v0}, Lcla;->a(FF)Lcla;

    move-result-object v0

    .line 468
    invoke-static {p0, p1, p2, v0}, Lclg;->a(Lcla;FFLcla;)V

    .line 469
    return-object v0
.end method

.method public static a(FIZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x2e

    invoke-static {p0, p1, p2, v0}, Lclg;->a(FIZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(FIZC)Ljava/lang/String;
    .locals 12

    .prologue
    .line 279
    const/16 v0, 0x23

    new-array v9, v0, [C

    .line 281
    const/4 v0, 0x0

    .line 282
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 283
    const-string v0, "0"

    .line 353
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 287
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_a

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_a

    .line 288
    const/4 v1, 0x1

    move v8, v1

    .line 291
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    .line 292
    const/4 v0, 0x1

    .line 293
    neg-float p0, p0

    .line 296
    :cond_1
    sget-object v1, Lclg;->k:[I

    array-length v1, v1

    if-le p1, v1, :cond_2

    .line 297
    sget-object v1, Lclg;->k:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 300
    :cond_2
    sget-object v1, Lclg;->k:[I

    aget v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    .line 301
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v6, v1

    .line 302
    array-length v1, v9

    add-int/lit8 v5, v1, -0x1

    .line 303
    const/4 v2, 0x0

    .line 304
    const/4 v1, 0x0

    .line 306
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-nez v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_6

    .line 307
    :cond_3
    const-wide/16 v10, 0xa

    rem-long v10, v6, v10

    long-to-int v3, v10

    .line 308
    const-wide/16 v10, 0xa

    div-long/2addr v6, v10

    .line 309
    add-int/lit8 v4, v5, -0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v9, v5

    .line 310
    add-int/lit8 v2, v2, 0x1

    .line 313
    if-ne v2, p1, :cond_4

    .line 314
    add-int/lit8 v3, v4, -0x1

    const/16 v1, 0x2c

    aput-char v1, v9, v4

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    const/4 v1, 0x1

    :goto_3
    move v5, v3

    .line 336
    goto :goto_2

    .line 319
    :cond_4
    if-eqz p2, :cond_9

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-eqz v3, :cond_9

    if-le v2, p1, :cond_9

    .line 321
    if-eqz v1, :cond_5

    .line 323
    sub-int v3, v2, p1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 324
    add-int/lit8 v3, v4, -0x1

    aput-char p3, v9, v4

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 330
    :cond_5
    sub-int v3, v2, p1

    rem-int/lit8 v3, v3, 0x4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    .line 331
    add-int/lit8 v3, v4, -0x1

    aput-char p3, v9, v4

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 339
    :cond_6
    if-eqz v8, :cond_8

    .line 340
    add-int/lit8 v3, v5, -0x1

    const/16 v1, 0x30

    aput-char v1, v9, v5

    .line 341
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    .line 345
    :goto_4
    if-eqz v0, :cond_7

    .line 346
    add-int/lit8 v0, v2, -0x1

    const/16 v0, 0x2d

    aput-char v0, v9, v2

    .line 347
    add-int/lit8 v0, v1, 0x1

    .line 350
    :goto_5
    array-length v1, v9

    sub-int v0, v1, v0

    .line 353
    array-length v1, v9

    sub-int/2addr v1, v0

    invoke-static {v9, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v1, v2

    move v2, v5

    goto :goto_4

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    move v8, v1

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 58
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lclg;->f:I

    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lclg;->g:I

    .line 62
    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    sput v1, Lclg;->f:I

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    sput v0, Lclg;->g:I

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lclg;->f:I

    .line 89
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lclg;->g:I

    .line 90
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLandroid/text/TextPaint;Lcla;F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 609
    .line 614
    sget-object v0, Lclg;->n:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    .line 616
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v2, v1

    .line 617
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v1, v0

    .line 620
    sget-object v0, Lclg;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, v7, v0

    .line 625
    add-float v0, v7, v3

    .line 628
    invoke-virtual {p4}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    .line 629
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 631
    cmpl-float v5, p6, v7

    if-eqz v5, :cond_2

    .line 634
    mul-float v5, v2, v6

    sub-float/2addr v1, v5

    .line 635
    mul-float v5, v3, v6

    sub-float/2addr v0, v5

    .line 641
    iget v5, p5, Lcla;->a:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p5, Lcla;->b:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 642
    :cond_0
    invoke-static {v2, v3, p6}, Lclg;->a(FFF)Lckw;

    move-result-object v2

    .line 647
    iget v3, v2, Lckw;->a:F

    iget v5, p5, Lcla;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    sub-float/2addr p2, v3

    .line 648
    iget v3, v2, Lckw;->b:F

    iget v5, p5, Lcla;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    sub-float/2addr p3, v3

    .line 649
    invoke-static {v2}, Lckw;->a(Lckw;)V

    .line 652
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 653
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 654
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 656
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 657
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 659
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 678
    :goto_0
    invoke-virtual {p4, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 679
    return-void

    .line 661
    :cond_2
    iget v5, p5, Lcla;->a:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    iget v5, p5, Lcla;->b:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_4

    .line 663
    :cond_3
    iget v5, p5, Lcla;->a:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 664
    iget v2, p5, Lcla;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 667
    :cond_4
    add-float/2addr v1, p2

    .line 668
    add-float/2addr v0, p3

    .line 670
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 672
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 673
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 675
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcla;F)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 542
    .line 545
    sget-object v0, Lclg;->n:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v2

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lclg;->m:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v0, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 549
    sget-object v0, Lclg;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, v5, v0

    .line 554
    sget-object v0, Lclg;->n:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v5

    .line 557
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v3

    .line 558
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 560
    cmpl-float v4, p6, v5

    if-eqz v4, :cond_2

    .line 563
    sget-object v4, Lclg;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float/2addr v1, v4

    .line 564
    mul-float v4, v2, v6

    sub-float/2addr v0, v4

    .line 570
    iget v4, p5, Lcla;->a:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p5, Lcla;->b:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    .line 571
    :cond_0
    sget-object v4, Lclg;->m:Landroid/graphics/Rect;

    .line 572
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 571
    invoke-static {v4, v2, p6}, Lclg;->a(FFF)Lckw;

    move-result-object v2

    .line 576
    iget v4, v2, Lckw;->a:F

    iget v5, p5, Lcla;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr p2, v4

    .line 577
    iget v4, v2, Lckw;->b:F

    iget v5, p5, Lcla;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr p3, v4

    .line 578
    invoke-static {v2}, Lckw;->a(Lckw;)V

    .line 581
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 582
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 583
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 585
    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 587
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 601
    :goto_0
    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 602
    return-void

    .line 589
    :cond_2
    iget v4, p5, Lcla;->a:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    iget v4, p5, Lcla;->b:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 591
    :cond_3
    sget-object v4, Lclg;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p5, Lcla;->a:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 592
    iget v4, p5, Lcla;->b:F

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    .line 595
    :cond_4
    add-float/2addr v1, p2

    .line 596
    add-float/2addr v0, p3

    .line 598
    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;Lckw;Lcla;F)V
    .locals 10

    .prologue
    .line 687
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v1, p5, Lckw;->a:F

    float-to-double v4, v1

    .line 690
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 694
    invoke-static/range {v1 .. v7}, Lclg;->a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLandroid/text/TextPaint;Lcla;F)V

    .line 695
    return-void
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;Lckw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    sget-object v0, Lclg;->j:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lckw;->a:F

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Lckw;->b:F

    .line 228
    return-void
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V
    .locals 7

    .prologue
    .line 482
    const/16 v0, 0x3e8

    sget v1, Lclg;->g:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 483
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 484
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_2

    .line 488
    if-ne v0, v1, :cond_1

    .line 487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 492
    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    .line 493
    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v3

    .line 495
    add-float/2addr v5, v6

    .line 496
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 497
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 501
    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public static a(Lcla;FFLcla;)V
    .locals 6

    .prologue
    .line 473
    iget v0, p0, Lcla;->a:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcla;->a:F

    .line 474
    iget v0, p0, Lcla;->b:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcla;->b:F

    .line 475
    return-void
.end method

.method public static a(Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 408
    array-length v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    array-length v0, p1

    move v1, v0

    .line 409
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 410
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    .line 409
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 408
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 432
    array-length v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    array-length v0, p1

    move v1, v0

    .line 433
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 434
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, v2

    .line 433
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 432
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/List;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 400
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 402
    invoke-static {p0, v0}, Lclg;->a(Ljava/util/List;[I)V

    .line 404
    return-object v0
.end method

.method public static b(D)D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 446
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-wide p0

    .line 449
    :cond_0
    add-double v0, p0, v4

    .line 450
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static b(F)F
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertPixelsToDp(...). Otherwise conversion does not take place."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return p0

    .line 141
    :cond_0
    sget-object v0, Lclg;->e:Landroid/util/DisplayMetrics;

    .line 142
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    .line 143
    goto :goto_0
.end method

.method public static b(Landroid/graphics/Paint;)F
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lclg;->i:Landroid/graphics/Paint$FontMetrics;

    invoke-static {p0, v0}, Lclg;->b(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 192
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 518
    sget v0, Lclg;->f:I

    return v0
.end method

.method public static b(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    sget-object v0, Lclg;->h:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public static b(FFF)Lckw;
    .locals 4

    .prologue
    .line 750
    float-to-double v0, p2

    .line 751
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, p2

    .line 752
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    .line 751
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v2, p2

    .line 753
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, p2

    .line 754
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    .line 753
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    .line 750
    invoke-static {v0, v1}, Lckw;->a(FF)Lckw;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lckw;F)Lckw;
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lckw;->a:F

    iget v1, p0, Lckw;->b:F

    invoke-static {v0, v1, p1}, Lclg;->b(FFF)Lckw;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 425
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 424
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 428
    :cond_0
    return-object v2
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 522
    sget v0, Lclg;->g:I

    return v0
.end method

.method public static c(F)I
    .locals 2

    .prologue
    .line 384
    float-to-double v0, p0

    invoke-static {v0, v1}, Lclg;->a(D)F

    move-result v0

    .line 386
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static c(Landroid/graphics/Paint;Ljava/lang/String;)Lckw;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-static {v0, v0}, Lckw;->a(FF)Lckw;

    move-result-object v0

    .line 207
    invoke-static {p0, p1, v0}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;Lckw;)V

    .line 208
    return-object v0
.end method

.method public static d(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 529
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 530
    add-float/2addr p0, v1

    goto :goto_0

    .line 532
    :cond_0
    rem-float v0, p0, v1

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static e()Lchn;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lchk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lchk;-><init>(I)V

    .line 243
    return-object v0
.end method
