.class public final Lbey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/PathMeasure;

.field private static final b:Landroid/graphics/Path;

.field private static final c:Landroid/graphics/Path;

.field private static d:Landroid/util/DisplayMetrics;

.field private static final e:[F

.field private static final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lbey;->a:Landroid/graphics/PathMeasure;

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lbey;->b:Landroid/graphics/Path;

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lbey;->c:Landroid/graphics/Path;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lbey;->e:[F

    .line 26
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lbey;->f:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Matrix;)F
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    sget-object v0, Lbey;->e:[F

    aput v1, v0, v2

    .line 76
    sget-object v0, Lbey;->e:[F

    aput v1, v0, v3

    .line 78
    sget-object v0, Lbey;->e:[F

    sget v1, Lbey;->f:F

    aput v1, v0, v4

    .line 79
    sget-object v0, Lbey;->e:[F

    sget v1, Lbey;->f:F

    aput v1, v0, v5

    .line 80
    sget-object v0, Lbey;->e:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 81
    sget-object v0, Lbey;->e:[F

    aget v0, v0, v4

    sget-object v1, Lbey;->e:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 82
    sget-object v1, Lbey;->e:[F

    aget v1, v1, v5

    sget-object v2, Lbey;->e:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    .line 85
    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(FFFF)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    const/16 v0, 0x11

    .line 191
    cmpl-float v1, p0, v2

    if-eqz v1, :cond_0

    .line 192
    const/16 v0, 0x20f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 194
    :cond_0
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_1

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 197
    :cond_1
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_2

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 200
    :cond_2
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_3

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 203
    :cond_3
    return v0
.end method

.method static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    .line 60
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 61
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lbey;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    sget-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 34
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 98
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lbey;->a:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 101
    sget-object v0, Lbey;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 102
    cmpl-float v0, p1, v3

    if-nez v0, :cond_0

    cmpl-float v0, p2, v6

    if-nez v0, :cond_0

    .line 103
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 169
    :goto_0
    return-void

    .line 106
    :cond_0
    cmpg-float v0, v2, v3

    if-ltz v0, :cond_1

    sub-float v0, p2, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 107
    :cond_1
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_0

    .line 110
    :cond_2
    mul-float v0, v2, p1

    .line 111
    mul-float v1, v2, p2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 115
    mul-float v4, p3, v2

    .line 116
    add-float v0, v3, v4

    .line 117
    add-float/2addr v1, v4

    .line 120
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    .line 121
    invoke-static {v0, v2}, Lbex;->a(FF)I

    move-result v0

    int-to-float v0, v0

    .line 122
    invoke-static {v1, v2}, Lbex;->a(FF)I

    move-result v1

    int-to-float v1, v1

    .line 125
    :cond_3
    cmpg-float v3, v0, v6

    if-gez v3, :cond_4

    .line 126
    invoke-static {v0, v2}, Lbex;->a(FF)I

    move-result v0

    int-to-float v0, v0

    .line 128
    :cond_4
    cmpg-float v3, v1, v6

    if-gez v3, :cond_5

    .line 129
    invoke-static {v1, v2}, Lbex;->a(FF)I

    move-result v1

    int-to-float v1, v1

    .line 133
    :cond_5
    cmpl-float v3, v0, v1

    if-nez v3, :cond_6

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 135
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_0

    .line 139
    :cond_6
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_7

    .line 140
    sub-float/2addr v0, v2

    .line 143
    :cond_7
    sget-object v3, Lbey;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 144
    sget-object v3, Lbey;->a:Landroid/graphics/PathMeasure;

    sget-object v4, Lbey;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 150
    cmpl-float v3, v1, v2

    if-lez v3, :cond_9

    .line 151
    sget-object v0, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 152
    sget-object v0, Lbey;->a:Landroid/graphics/PathMeasure;

    rem-float/2addr v1, v2

    sget-object v2, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 157
    sget-object v0, Lbey;->b:Landroid/graphics/Path;

    sget-object v1, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 167
    :cond_8
    :goto_1
    sget-object v0, Lbey;->b:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 168
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto/16 :goto_0

    .line 158
    :cond_9
    cmpg-float v1, v0, v6

    if-gez v1, :cond_8

    .line 159
    sget-object v1, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 160
    sget-object v1, Lbey;->a:Landroid/graphics/PathMeasure;

    add-float/2addr v0, v2

    sget-object v3, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 165
    sget-object v0, Lbey;->b:Landroid/graphics/Path;

    sget-object v1, Lbey;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Path;Layw;)V
    .locals 4
    .param p1    # Layw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 89
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Layw;->d()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v1, v0, v2

    .line 93
    invoke-virtual {p1}, Layw;->e()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v2, v0, v2

    invoke-virtual {p1}, Layw;->f()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    .line 92
    invoke-static {p0, v1, v2, v0}, Lbey;->a(Landroid/graphics/Path;FFF)V

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    throw v0

    .line 51
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lawr;III)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Lawr;->e()I

    move-result v2

    if-ge v2, p1, :cond_1

    move v0, v1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lawr;->e()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lawr;->f()I

    move-result v2

    if-ge v2, p2, :cond_2

    move v0, v1

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lawr;->f()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lawr;->g()I

    move-result v2

    if-ge v2, p3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    .line 69
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 70
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lbey;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    sget-object v0, Lbey;->d:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static c(Landroid/content/Context;)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method
