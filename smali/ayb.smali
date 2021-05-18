.class public abstract Layb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layg;
.implements Layz;


# instance fields
.field final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/PathMeasure;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/RectF;

.field private final f:Lawu;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layd;",
            ">;"
        }
    .end annotation
.end field

.field private final h:[F

.field private final i:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lawu;Lbdy;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lbaw;Lbao;Ljava/util/List;Lbao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawu;",
            "Lbdy;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lbaw;",
            "Lbao;",
            "Ljava/util/List",
            "<",
            "Lbao;",
            ">;",
            "Lbao;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layb;->c:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layb;->d:Landroid/graphics/Path;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Layb;->e:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layb;->g:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Layb;->a:Landroid/graphics/Paint;

    .line 44
    iput-object p1, p0, Layb;->f:Lawu;

    .line 46
    iget-object v0, p0, Layb;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    iget-object v0, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    invoke-virtual {p5}, Lbaw;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layb;->j:Layy;

    .line 51
    invoke-virtual {p6}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layb;->i:Layy;

    .line 53
    if-nez p8, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Layb;->l:Layy;

    .line 58
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Layb;->k:Ljava/util/List;

    .line 59
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Layb;->h:[F

    move v1, v2

    .line 61
    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 62
    iget-object v3, p0, Layb;->k:Ljava/util/List;

    invoke-interface {p7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbao;

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p8}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layb;->l:Layy;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Layb;->j:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 66
    iget-object v0, p0, Layb;->i:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    move v1, v2

    .line 67
    :goto_2
    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 68
    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 70
    :cond_2
    iget-object v0, p0, Layb;->l:Layy;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Layb;->l:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 74
    :cond_3
    iget-object v0, p0, Layb;->j:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 75
    iget-object v0, p0, Layb;->i:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 77
    :goto_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 78
    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 80
    :cond_4
    iget-object v0, p0, Layb;->l:Layy;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Layb;->l:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 83
    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Layd;Landroid/graphics/Matrix;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 158
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Layd;->b(Layd;)Layw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 222
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Layb;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 164
    invoke-static {p2}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 165
    iget-object v4, p0, Layb;->c:Landroid/graphics/Path;

    invoke-static {p2}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 164
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 167
    :cond_1
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Layb;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 168
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    move v1, v0

    .line 169
    :goto_2
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_2

    .line 172
    :cond_2
    invoke-static {p2}, Layd;->b(Layd;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->f()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v4, 0x43b40000    # 360.0f

    div-float v4, v0, v4

    .line 174
    invoke-static {p2}, Layd;->b(Layd;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->d()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v7, v0, v4

    .line 176
    invoke-static {p2}, Layd;->b(Layd;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->e()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v8, v0, v4

    .line 179
    invoke-static {p2}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v6, v2

    :goto_3
    if-ltz v5, :cond_9

    .line 180
    iget-object v4, p0, Layb;->d:Landroid/graphics/Path;

    invoke-static {p2}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 181
    iget-object v0, p0, Layb;->d:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 182
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Layb;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 183
    iget-object v0, p0, Layb;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    .line 184
    cmpl-float v0, v8, v1

    if-lez v0, :cond_5

    sub-float v0, v8, v1

    add-float v4, v6, v9

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    sub-float v0, v8, v1

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    .line 189
    cmpl-float v0, v7, v1

    if-lez v0, :cond_4

    .line 190
    sub-float v0, v7, v1

    div-float/2addr v0, v9

    .line 194
    :goto_4
    sub-float v4, v8, v1

    div-float/2addr v4, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 195
    iget-object v10, p0, Layb;->d:Landroid/graphics/Path;

    invoke-static {v10, v0, v4, v2}, Lbey;->a(Landroid/graphics/Path;FFF)V

    .line 196
    iget-object v0, p0, Layb;->d:Landroid/graphics/Path;

    iget-object v4, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 219
    :cond_3
    :goto_5
    add-float v4, v6, v9

    .line 179
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v6, v4

    goto :goto_3

    :cond_4
    move v0, v2

    .line 192
    goto :goto_4

    .line 199
    :cond_5
    add-float v0, v6, v9

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_3

    cmpl-float v0, v6, v8

    if-gtz v0, :cond_3

    .line 201
    add-float v0, v6, v9

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_6

    cmpg-float v0, v7, v6

    if-gez v0, :cond_6

    .line 202
    iget-object v0, p0, Layb;->d:Landroid/graphics/Path;

    iget-object v4, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 205
    :cond_6
    cmpg-float v0, v7, v6

    if-gez v0, :cond_7

    move v4, v2

    .line 211
    :goto_6
    add-float v0, v6, v9

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    move v0, v3

    .line 216
    :goto_7
    iget-object v10, p0, Layb;->d:Landroid/graphics/Path;

    invoke-static {v10, v4, v0, v2}, Lbey;->a(Landroid/graphics/Path;FFF)V

    .line 217
    iget-object v0, p0, Layb;->d:Landroid/graphics/Path;

    iget-object v4, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 208
    :cond_7
    sub-float v0, v7, v6

    div-float/2addr v0, v9

    move v4, v0

    goto :goto_6

    .line 214
    :cond_8
    sub-float v0, v8, v6

    div-float/2addr v0, v9

    goto :goto_7

    .line 221
    :cond_9
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    .line 250
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 277
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {p1}, Lbey;->a(Landroid/graphics/Matrix;)F

    move-result v2

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 258
    iget-object v3, p0, Layb;->h:[F

    iget-object v0, p0, Layb;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 263
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Layb;->h:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 265
    iget-object v0, p0, Layb;->h:[F

    aput v5, v0, v1

    .line 272
    :cond_1
    :goto_2
    iget-object v0, p0, Layb;->h:[F

    aget v3, v0, v1

    mul-float/2addr v3, v2

    aput v3, v0, v1

    .line 257
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 268
    :cond_2
    iget-object v0, p0, Layb;->h:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 269
    iget-object v0, p0, Layb;->h:[F

    aput v4, v0, v1

    goto :goto_2

    .line 274
    :cond_3
    iget-object v0, p0, Layb;->l:Layy;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 275
    :goto_3
    iget-object v1, p0, Layb;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Layb;->h:[F

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 276
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_0

    .line 274
    :cond_4
    iget-object v0, p0, Layb;->l:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Layb;->f:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 87
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 125
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 126
    int-to-float v0, p3

    div-float v1, v0, v2

    iget-object v0, p0, Layb;->j:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 127
    iget-object v1, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v1, p0, Layb;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Layb;->i:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p2}, Lbey;->a(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 131
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p2}, Layb;->a(Landroid/graphics/Matrix;)V

    .line 136
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 137
    iget-object v0, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    .line 140
    invoke-static {v0}, Layd;->b(Layd;)Layw;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-direct {p0, p1, v0, p2}, Layb;->a(Landroid/graphics/Canvas;Layd;Landroid/graphics/Matrix;)V

    .line 136
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 143
    :cond_1
    const-string v1, "StrokeContent#buildPath"

    invoke-static {v1}, Lawm;->a(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Layb;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 145
    invoke-static {v0}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_3
    if-ltz v3, :cond_2

    .line 146
    iget-object v4, p0, Layb;->c:Landroid/graphics/Path;

    invoke-static {v0}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layp;

    invoke-interface {v1}, Layp;->e()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v4, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 145
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_3

    .line 148
    :cond_2
    const-string v0, "StrokeContent#buildPath"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 149
    const-string v0, "StrokeContent#drawPath"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Layb;->c:Landroid/graphics/Path;

    iget-object v1, p0, Layb;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    const-string v0, "StrokeContent#drawPath"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_2

    .line 154
    :cond_3
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 225
    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Layb;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v2, v3

    .line 227
    :goto_0
    iget-object v0, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 228
    iget-object v0, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    move v4, v3

    .line 229
    :goto_1
    invoke-static {v0}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 230
    iget-object v5, p0, Layb;->c:Landroid/graphics/Path;

    invoke-static {v0}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layp;

    invoke-interface {v1}, Layp;->e()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 229
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 227
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Layb;->c:Landroid/graphics/Path;

    iget-object v1, p0, Layb;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 235
    iget-object v0, p0, Layb;->i:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 236
    iget-object v1, p0, Layb;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Layb;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    div-float v3, v0, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Layb;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Layb;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float v5, v0, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Layb;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v7

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v0, p0, Layb;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 240
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 247
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v5

    :goto_0
    if-ltz v3, :cond_0

    .line 92
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 93
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Layw;

    .line 94
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v4, Lbdw;->Individually:Lbdw;

    if-ne v1, v4, :cond_8

    .line 95
    check-cast v0, Layw;

    .line 91
    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2, p0}, Layw;->a(Layz;)V

    .line 103
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v3, v5

    :goto_2
    if-ltz v4, :cond_4

    .line 104
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 105
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Layw;

    .line 106
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v6, Lbdw;->Individually:Lbdw;

    if-ne v1, v6, :cond_3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    iget-object v1, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    new-instance v3, Layd;

    move-object v1, v0

    check-cast v1, Layw;

    invoke-direct {v3, v1, v5}, Layd;-><init>(Layw;Layc;)V

    .line 111
    check-cast v0, Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layz;)V

    move-object v1, v3

    .line 103
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move-object v3, v1

    goto :goto_2

    .line 112
    :cond_3
    instance-of v1, v0, Layp;

    if-eqz v1, :cond_7

    .line 113
    if-nez v3, :cond_6

    .line 114
    new-instance v1, Layd;

    invoke-direct {v1, v2, v5}, Layd;-><init>(Layw;Layc;)V

    .line 116
    :goto_4
    invoke-static {v1}, Layd;->a(Layd;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Layp;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 119
    :cond_4
    if-eqz v3, :cond_5

    .line 120
    iget-object v0, p0, Layb;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_5
    return-void

    :cond_6
    move-object v1, v3

    goto :goto_4

    :cond_7
    move-object v1, v3

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto :goto_1
.end method
