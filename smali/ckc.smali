.class public Lckc;
.super Lcjt;
.source "SourceFile"


# static fields
.field static e:F

.field static f:F

.field static l:F

.field static m:F

.field static p:I


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Path;

.field protected a:Lcom/github/mikephil/charting/charts/PieChart;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Landroid/graphics/Canvas;

.field protected q:Landroid/graphics/Path;

.field protected r:Landroid/graphics/RectF;

.field private t:Landroid/text/TextPaint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/text/StaticLayout;

.field private w:Ljava/lang/CharSequence;

.field private x:Landroid/graphics/RectF;

.field private y:[Landroid/graphics/RectF;

.field private z:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput v0, Lckc;->e:F

    .line 62
    sput v0, Lckc;->f:F

    .line 63
    sput v0, Lckc;->l:F

    .line 64
    sput v0, Lckc;->m:F

    .line 386
    const/4 v0, 0x0

    sput v0, Lckc;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcdq;Lclh;)V
    .locals 6

    .prologue
    const/high16 v5, 0x41500000    # 13.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p2, p3}, Lcjt;-><init>(Lcdq;Lclh;)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckc;->x:Landroid/graphics/RectF;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lckc;->y:[Landroid/graphics/RectF;

    .line 154
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckc;->z:Landroid/graphics/Path;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckc;->A:Landroid/graphics/RectF;

    .line 620
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckc;->B:Landroid/graphics/Path;

    .line 663
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckc;->q:Landroid/graphics/Path;

    .line 736
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckc;->r:Landroid/graphics/RectF;

    .line 76
    iput-object p1, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckc;->b:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lckc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lckc;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lckc;->t:Landroid/text/TextPaint;

    .line 88
    iget-object v0, p0, Lckc;->t:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lckc;->t:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lckc;->k:Landroid/graphics/Paint;

    invoke-static {v5}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lckc;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lckc;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 98
    iget-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    invoke-static {v5}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckc;->d:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lckc;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected a(Lcis;)F
    .locals 3

    .prologue
    .line 205
    invoke-interface {p1}, Lcis;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p1}, Lcis;->b()F

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-interface {p1}, Lcis;->b()F

    move-result v0

    iget-object v1, p0, Lckc;->s:Lclh;

    invoke-virtual {v1}, Lclh;->p()F

    move-result v1

    div-float v1, v0, v1

    .line 209
    invoke-interface {p1}, Lcis;->L()F

    move-result v2

    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lcgy;

    invoke-virtual {v0}, Lcgy;->p()F

    move-result v0

    div-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 211
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcis;->b()F

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcla;FFFFFF)F
    .locals 10

    .prologue
    .line 165
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p7, v0

    add-float v0, v0, p6

    .line 168
    iget v1, p1, Lcla;->a:F

    add-float v2, p6, p7

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 169
    iget v2, p1, Lcla;->b:F

    add-float v3, p6, p7

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 172
    iget v3, p1, Lcla;->a:F

    const v4, 0x3c8efa35

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 173
    iget v4, p1, Lcla;->b:F

    const v5, 0x3c8efa35

    mul-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    .line 176
    sub-float v4, v1, p4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 177
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float v6, v2, p5

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 178
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 183
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    float-to-double v8, p3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    .line 184
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 187
    sub-float v4, p2, v4

    .line 190
    float-to-double v4, v4

    add-float/2addr v1, p4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 191
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-float v1, v2, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 192
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    double-to-float v0, v0

    .line 194
    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lckc;->s:Lclh;

    invoke-virtual {v0}, Lclh;->o()F

    move-result v0

    float-to-int v1, v0

    .line 129
    iget-object v0, p0, Lckc;->s:Lclh;

    invoke-virtual {v0}, Lclh;->n()F

    move-result v0

    float-to-int v2, v0

    .line 131
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    .line 132
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 135
    :cond_0
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    .line 138
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lckc;->o:Landroid/graphics/Canvas;

    .line 143
    :cond_1
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lcgy;

    .line 147
    invoke-virtual {v0}, Lcgy;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    .line 149
    invoke-interface {v0}, Lcis;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcis;->I()I

    move-result v2

    if-lez v2, :cond_2

    .line 150
    invoke-virtual {p0, p1, v0}, Lckc;->a(Landroid/graphics/Canvas;Lcis;)V

    goto :goto_0

    .line 152
    :cond_3
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcis;)V
    .locals 29

    .prologue
    .line 218
    const/4 v7, 0x0

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->z()F

    move-result v18

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->b()F

    move-result v19

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->a()F

    move-result v20

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->n()Landroid/graphics/RectF;

    move-result-object v21

    .line 226
    invoke-interface/range {p2 .. p2}, Lcis;->I()I

    move-result v22

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->c()[F

    move-result-object v23

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v5

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v6

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->e()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 231
    :goto_0
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 232
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    mul-float/2addr v4, v6

    move v12, v4

    .line 235
    :goto_1
    const/4 v13, 0x0

    .line 236
    const/4 v4, 0x0

    move v8, v4

    :goto_2
    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    .line 238
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v9, Lclg;->d:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_14

    .line 239
    add-int/lit8 v4, v13, 0x1

    .line 236
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v13, v4

    goto :goto_2

    .line 230
    :cond_0
    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_0

    .line 232
    :cond_1
    const/4 v4, 0x0

    move v12, v4

    goto :goto_1

    .line 243
    :cond_2
    const/4 v4, 0x1

    if-gt v13, v4, :cond_a

    const/4 v4, 0x0

    move v14, v4

    .line 245
    :goto_4
    const/4 v4, 0x0

    move v15, v4

    move/from16 v16, v7

    :goto_5
    move/from16 v0, v22

    if-ge v15, v0, :cond_12

    .line 247
    aget v24, v23, v15

    .line 250
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lclg;->d:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4, v15}, Lcom/github/mikephil/charting/charts/PieChart;->d(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 257
    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-lez v4, :cond_b

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_b

    const/4 v4, 0x1

    .line 259
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcis;->e(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    const/4 v7, 0x1

    if-ne v13, v7, :cond_c

    const/4 v7, 0x0

    .line 264
    :goto_7
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    add-float v8, v8, v16

    mul-float v8, v8, v20

    add-float v10, v18, v8

    .line 265
    sub-float v7, v24, v7

    mul-float v11, v7, v20

    .line 266
    const/4 v7, 0x0

    cmpg-float v7, v11, v7

    if-gez v7, :cond_3

    .line 267
    const/4 v11, 0x0

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 272
    iget v7, v5, Lcla;->a:F

    const v8, 0x3c8efa35

    mul-float/2addr v8, v10

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    .line 273
    iget v7, v5, Lcla;->b:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v10

    float-to-double v0, v9

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v9, v0

    mul-float/2addr v9, v6

    add-float/2addr v9, v7

    .line 275
    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_d

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v11, v7

    sget v25, Lclg;->d:F

    cmpg-float v7, v7, v25

    if-gtz v7, :cond_d

    .line 277
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    iget v0, v5, Lcla;->a:F

    move/from16 v25, v0

    iget v0, v5, Lcla;->b:F

    move/from16 v26, v0

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v7, v0, v1, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 290
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->A:Landroid/graphics/RectF;

    iget v0, v5, Lcla;->a:F

    move/from16 v25, v0

    sub-float v25, v25, v12

    iget v0, v5, Lcla;->b:F

    move/from16 v26, v0

    sub-float v26, v26, v12

    iget v0, v5, Lcla;->a:F

    move/from16 v27, v0

    add-float v27, v27, v12

    iget v0, v5, Lcla;->b:F

    move/from16 v28, v0

    add-float v28, v28, v12

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 296
    if-eqz v17, :cond_10

    const/4 v7, 0x0

    cmpl-float v7, v12, v7

    if-gtz v7, :cond_4

    if-eqz v4, :cond_10

    .line 299
    :cond_4
    if-eqz v4, :cond_13

    .line 300
    mul-float v7, v24, v20

    move-object/from16 v4, p0

    .line 301
    invoke-virtual/range {v4 .. v11}, Lckc;->a(Lcla;FFFFFF)F

    move-result v4

    .line 308
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    .line 309
    neg-float v4, v4

    .line 311
    :cond_5
    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v7, v4

    .line 314
    :goto_9
    const/4 v4, 0x1

    if-eq v13, v4, :cond_6

    const/4 v4, 0x0

    cmpl-float v4, v7, v4

    if-nez v4, :cond_e

    :cond_6
    const/4 v4, 0x0

    .line 317
    :goto_a
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    add-float v8, v8, v16

    mul-float v8, v8, v20

    add-float v8, v8, v18

    .line 318
    sub-float v4, v24, v4

    mul-float v4, v4, v20

    .line 319
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_7

    .line 320
    const/4 v4, 0x0

    .line 322
    :cond_7
    add-float/2addr v8, v4

    .line 324
    const/high16 v9, 0x43b40000    # 360.0f

    cmpl-float v9, v11, v9

    if-ltz v9, :cond_f

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v11, v9

    sget v10, Lclg;->d:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_f

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->z:Landroid/graphics/Path;

    iget v8, v5, Lcla;->a:F

    iget v9, v5, Lcla;->b:F

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 374
    :cond_8
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->o:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lckc;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 380
    :cond_9
    mul-float v4, v24, v19

    add-float v7, v16, v4

    .line 245
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move/from16 v16, v7

    goto/16 :goto_5

    .line 243
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lckc;->a(Lcis;)F

    move-result v4

    move v14, v4

    goto/16 :goto_4

    .line 257
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 261
    :cond_c
    const v7, 0x3c8efa35

    mul-float/2addr v7, v6

    div-float v7, v14, v7

    goto/16 :goto_7

    .line 280
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_8

    .line 314
    :cond_e
    const v4, 0x3c8efa35

    mul-float/2addr v4, v7

    div-float v4, v14, v4

    goto/16 :goto_a

    .line 329
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lckc;->z:Landroid/graphics/Path;

    iget v10, v5, Lcla;->a:F

    const v11, 0x3c8efa35

    mul-float/2addr v11, v8

    float-to-double v0, v11

    move-wide/from16 v26, v0

    .line 330
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v11, v0

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    iget v11, v5, Lcla;->b:F

    const v25, 0x3c8efa35

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 331
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v7, v7, v25

    add-float/2addr v7, v11

    .line 329
    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lckc;->A:Landroid/graphics/RectF;

    neg-float v4, v4

    invoke-virtual {v7, v9, v8, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_b

    .line 341
    :cond_10
    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v11, v7

    sget v25, Lclg;->d:F

    cmpl-float v7, v7, v25

    if-lez v7, :cond_8

    .line 342
    if-eqz v4, :cond_11

    .line 344
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v25, v10, v4

    .line 346
    mul-float v7, v24, v20

    move-object/from16 v4, p0

    .line 347
    invoke-virtual/range {v4 .. v11}, Lckc;->a(Lcla;FFFFFF)F

    move-result v4

    .line 356
    iget v7, v5, Lcla;->a:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v25

    float-to-double v8, v8

    .line 357
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    .line 358
    iget v8, v5, Lcla;->b:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v25

    float-to-double v10, v9

    .line 359
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v4, v9

    add-float/2addr v4, v8

    .line 361
    move-object/from16 v0, p0

    iget-object v8, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 366
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lckc;->z:Landroid/graphics/Path;

    iget v7, v5, Lcla;->a:F

    iget v8, v5, Lcla;->b:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 383
    :cond_12
    invoke-static {v5}, Lcla;->a(Lcla;)V

    .line 384
    return-void

    :cond_13
    move v7, v12

    goto/16 :goto_9

    :cond_14
    move v4, v13

    goto/16 :goto_3
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 610
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 28

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v17

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v18

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->z()F

    move-result v19

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->c()[F

    move-result-object v20

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->d()[F

    move-result-object v21

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v3

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v4

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->e()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move/from16 v16, v2

    .line 751
    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 752
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    move v10, v2

    .line 755
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lckc;->r:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    .line 756
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 758
    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v11, v2, :cond_17

    .line 761
    aget-object v2, p2, v11

    invoke-virtual {v2}, Lchv;->a()F

    move-result v2

    float-to-int v6, v2

    .line 763
    move-object/from16 v0, v20

    array-length v2, v0

    if-lt v6, v2, :cond_3

    .line 758
    :cond_0
    :goto_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    .line 750
    :cond_1
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_0

    .line 752
    :cond_2
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 766
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v2

    check-cast v2, Lcgy;

    aget-object v5, p2, v11

    .line 768
    invoke-virtual {v5}, Lchv;->f()I

    move-result v5

    .line 767
    invoke-virtual {v2, v5}, Lcgy;->d(I)Lcis;

    move-result-object v7

    .line 770
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcis;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-interface {v7}, Lcis;->I()I

    move-result v8

    .line 774
    const/4 v12, 0x0

    .line 775
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    if-ge v5, v8, :cond_4

    .line 777
    invoke-interface {v7, v5}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v9, Lclg;->d:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_19

    .line 778
    add-int/lit8 v2, v12, 0x1

    .line 775
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v12, v2

    goto :goto_4

    .line 782
    :cond_4
    if-nez v6, :cond_d

    .line 783
    const/4 v2, 0x0

    move v15, v2

    .line 787
    :goto_6
    const/4 v2, 0x1

    if-gt v12, v2, :cond_e

    const/4 v2, 0x0

    move v13, v2

    .line 789
    :goto_7
    aget v23, v20, v6

    .line 792
    invoke-interface {v7}, Lcis;->d()F

    move-result v2

    .line 793
    add-float v24, v4, v2

    .line 794
    move-object/from16 v0, p0

    iget-object v5, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->n()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 795
    neg-float v5, v2

    neg-float v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 797
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_f

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    move v14, v2

    .line 799
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->h:Landroid/graphics/Paint;

    invoke-interface {v7, v6}, Lcis;->e(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    const/4 v2, 0x1

    if-ne v12, v2, :cond_10

    const/4 v2, 0x0

    move v5, v2

    .line 805
    :goto_9
    const/4 v2, 0x1

    if-ne v12, v2, :cond_11

    const/4 v2, 0x0

    .line 809
    :goto_a
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    add-float/2addr v6, v15

    mul-float v6, v6, v18

    add-float v8, v19, v6

    .line 810
    sub-float v5, v23, v5

    mul-float v9, v5, v18

    .line 811
    const/4 v5, 0x0

    cmpg-float v5, v9, v5

    if-gez v5, :cond_5

    .line 812
    const/4 v9, 0x0

    .line 815
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    add-float/2addr v5, v15

    mul-float v5, v5, v18

    add-float v5, v5, v19

    .line 816
    sub-float v2, v23, v2

    mul-float v2, v2, v18

    .line 817
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    .line 818
    const/4 v2, 0x0

    .line 821
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 823
    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v6, v9, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float v6, v9, v6

    sget v7, Lclg;->d:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->z:Landroid/graphics/Path;

    iget v5, v3, Lcla;->a:F

    iget v6, v3, Lcla;->b:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v24

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 839
    :goto_b
    const/4 v2, 0x0

    .line 840
    if-eqz v14, :cond_7

    .line 841
    mul-float v5, v23, v18

    iget v2, v3, Lcla;->a:F

    const v6, 0x3c8efa35

    mul-float/2addr v6, v8

    float-to-double v6, v6

    .line 845
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v2

    iget v2, v3, Lcla;->b:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v8

    float-to-double v0, v7

    move-wide/from16 v24, v0

    .line 846
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v7, v2

    move-object/from16 v2, p0

    .line 842
    invoke-virtual/range {v2 .. v9}, Lckc;->a(Lcla;FFFFFF)F

    move-result v2

    .line 852
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lckc;->A:Landroid/graphics/RectF;

    iget v6, v3, Lcla;->a:F

    sub-float/2addr v6, v10

    iget v7, v3, Lcla;->b:F

    sub-float/2addr v7, v10

    iget v0, v3, Lcla;->a:F

    move/from16 v24, v0

    add-float v24, v24, v10

    iget v0, v3, Lcla;->b:F

    move/from16 v25, v0

    add-float v25, v25, v10

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 858
    if-eqz v16, :cond_15

    const/4 v5, 0x0

    cmpl-float v5, v10, v5

    if-gtz v5, :cond_8

    if-eqz v14, :cond_15

    .line 861
    :cond_8
    if-eqz v14, :cond_18

    .line 864
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_9

    .line 865
    neg-float v2, v2

    .line 867
    :cond_9
    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v5, v2

    .line 870
    :goto_c
    const/4 v2, 0x1

    if-eq v12, v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_13

    :cond_a
    const/4 v2, 0x0

    .line 873
    :goto_d
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    add-float/2addr v6, v15

    mul-float v6, v6, v18

    add-float v6, v6, v19

    .line 874
    sub-float v2, v23, v2

    mul-float v2, v2, v18

    .line 875
    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_b

    .line 876
    const/4 v2, 0x0

    .line 878
    :cond_b
    add-float/2addr v6, v2

    .line 880
    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v9, v7

    if-ltz v7, :cond_14

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v9, v7

    sget v8, Lclg;->d:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_14

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->z:Landroid/graphics/Path;

    iget v6, v3, Lcla;->a:F

    iget v7, v3, Lcla;->b:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7, v5, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 922
    :cond_c
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->o:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lckc;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 785
    :cond_d
    add-int/lit8 v2, v6, -0x1

    aget v2, v21, v2

    mul-float v2, v2, v17

    move v15, v2

    goto/16 :goto_6

    .line 787
    :cond_e
    invoke-interface {v7}, Lcis;->b()F

    move-result v2

    move v13, v2

    goto/16 :goto_7

    .line 797
    :cond_f
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_8

    .line 801
    :cond_10
    const v2, 0x3c8efa35

    mul-float/2addr v2, v4

    div-float v2, v13, v2

    move v5, v2

    goto/16 :goto_9

    .line 805
    :cond_11
    const v2, 0x3c8efa35

    mul-float v2, v2, v24

    div-float v2, v13, v2

    goto/16 :goto_a

    .line 828
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lckc;->z:Landroid/graphics/Path;

    iget v7, v3, Lcla;->a:F

    const v25, 0x3c8efa35

    mul-float v25, v25, v5

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 829
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v24

    add-float v7, v7, v25

    iget v0, v3, Lcla;->b:F

    move/from16 v25, v0

    const v26, 0x3c8efa35

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 830
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v24, v26

    add-float v24, v24, v25

    .line 828
    move/from16 v0, v24

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 832
    move-object/from16 v0, p0

    iget-object v6, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v5, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_b

    .line 870
    :cond_13
    const v2, 0x3c8efa35

    mul-float/2addr v2, v5

    div-float v2, v13, v2

    goto/16 :goto_d

    .line 885
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->z:Landroid/graphics/Path;

    iget v8, v3, Lcla;->a:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v6

    float-to-double v12, v9

    .line 886
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, v3, Lcla;->b:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v6

    float-to-double v12, v12

    .line 887
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v9

    .line 885
    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lckc;->z:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lckc;->A:Landroid/graphics/RectF;

    neg-float v2, v2

    invoke-virtual {v5, v7, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_e

    .line 897
    :cond_15
    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v9, v5

    sget v6, Lclg;->d:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    .line 899
    if-eqz v14, :cond_16

    .line 900
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    add-float/2addr v5, v8

    .line 902
    iget v6, v3, Lcla;->a:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v5

    float-to-double v8, v7

    .line 903
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 904
    iget v7, v3, Lcla;->b:F

    const v8, 0x3c8efa35

    mul-float/2addr v5, v8

    float-to-double v8, v5

    .line 905
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    .line 907
    move-object/from16 v0, p0

    iget-object v5, v0, Lckc;->z:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 913
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->z:Landroid/graphics/Path;

    iget v5, v3, Lcla;->a:F

    iget v6, v3, Lcla;->b:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 927
    :cond_17
    invoke-static {v3}, Lcla;->a(Lcla;)V

    .line 928
    return-void

    :cond_18
    move v5, v10

    goto/16 :goto_c

    :cond_19
    move v2, v12

    goto/16 :goto_5
.end method

.method public b()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lckc;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 38

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v16

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v17

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->z()F

    move-result v18

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->c()[F

    move-result-object v19

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->d()[F

    move-result-object v20

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v21

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v22

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v23, v2, v3

    .line 403
    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v17, v2

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v2, v3

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    mul-float v2, v17, v23

    sub-float v2, v17, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 409
    :cond_0
    sub-float v24, v17, v2

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcgy;

    .line 412
    invoke-virtual {v11}, Lcgy;->i()Ljava/util/List;

    move-result-object v25

    .line 414
    invoke-virtual {v11}, Lcgy;->p()F

    move-result v26

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->t()Z

    move-result v27

    .line 419
    const/4 v3, 0x0

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 423
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lclg;->a(F)F

    move-result v28

    .line 425
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_11

    .line 427
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcis;

    .line 429
    invoke-interface {v12}, Lcis;->A()Z

    move-result v29

    .line 431
    if-nez v29, :cond_1

    if-nez v27, :cond_1

    .line 425
    :goto_1
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 434
    :cond_1
    invoke-interface {v12}, Lcis;->e()Lcha;

    move-result-object v30

    .line 435
    invoke-interface {v12}, Lcis;->f()Lcha;

    move-result-object v31

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lckc;->b(Lcio;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->k:Landroid/graphics/Paint;

    const-string v4, "Q"

    invoke-static {v2, v4}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40800000    # 4.0f

    .line 441
    invoke-static {v4}, Lclg;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    .line 443
    invoke-interface {v12}, Lcis;->r()Lchn;

    move-result-object v4

    .line 445
    invoke-interface {v12}, Lcis;->I()I

    move-result v32

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->d:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcis;->g()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->d:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcis;->h()F

    move-result v5

    invoke-static {v5}, Lclg;->a(F)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 450
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lckc;->a(Lcis;)F

    move-result v33

    .line 452
    const/4 v2, 0x0

    move v15, v2

    move v14, v3

    :goto_2
    move/from16 v0, v32

    if-ge v15, v0, :cond_12

    .line 454
    invoke-interface {v12, v15}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/PieEntry;

    .line 456
    if-nez v14, :cond_7

    .line 457
    const/4 v2, 0x0

    .line 461
    :goto_3
    aget v3, v19, v14

    .line 462
    const v5, 0x3c8efa35

    mul-float v5, v5, v24

    div-float v5, v33, v5

    .line 465
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 467
    add-float/2addr v2, v3

    .line 469
    mul-float v2, v2, v22

    add-float v8, v18, v2

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->v()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v2

    div-float v2, v2, v26

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v5, v2, v3

    .line 474
    :goto_4
    const v2, 0x3c8efa35

    mul-float/2addr v2, v8

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v9, v2

    .line 475
    const v2, 0x3c8efa35

    mul-float/2addr v2, v8

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v34, v0

    .line 477
    if-eqz v27, :cond_9

    sget-object v2, Lcha;->OUTSIDE_SLICE:Lcha;

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    move v10, v2

    .line 479
    :goto_5
    if-eqz v29, :cond_a

    sget-object v2, Lcha;->OUTSIDE_SLICE:Lcha;

    move-object/from16 v0, v31

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    move v7, v2

    .line 481
    :goto_6
    if-eqz v27, :cond_2

    sget-object v2, Lcha;->INSIDE_SLICE:Lcha;

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_2

    .line 483
    :cond_2
    if-eqz v29, :cond_3

    sget-object v2, Lcha;->INSIDE_SLICE:Lcha;

    move-object/from16 v0, v31

    if-ne v0, v2, :cond_3

    .line 486
    :cond_3
    if-nez v10, :cond_4

    if-eqz v7, :cond_6

    .line 488
    :cond_4
    invoke-interface {v12}, Lcis;->j()F

    move-result v35

    .line 489
    invoke-interface {v12}, Lcis;->F()F

    move-result v3

    .line 490
    invoke-interface {v12}, Lcis;->i()F

    move-result v2

    const/high16 v36, 0x42c80000    # 100.0f

    div-float v2, v2, v36

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v36

    if-eqz v36, :cond_b

    .line 498
    mul-float v36, v17, v23

    sub-float v36, v17, v36

    mul-float v2, v2, v36

    mul-float v36, v17, v23

    add-float v2, v2, v36

    .line 504
    :goto_7
    invoke-interface {v12}, Lcis;->G()Z

    move-result v36

    if-eqz v36, :cond_c

    mul-float v3, v3, v24

    const v36, 0x3c8efa35

    mul-float v36, v36, v8

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    .line 505
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    mul-float v3, v3, v36

    .line 509
    :goto_8
    mul-float v36, v2, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcla;->a:F

    move/from16 v37, v0

    add-float v36, v36, v37

    .line 510
    mul-float v2, v2, v34

    move-object/from16 v0, v16

    iget v0, v0, Lcla;->b:F

    move/from16 v36, v0

    add-float v2, v2, v36

    .line 512
    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, v35

    mul-float v2, v2, v24

    mul-float/2addr v2, v9

    move-object/from16 v0, v16

    iget v9, v0, Lcla;->a:F

    add-float/2addr v2, v9

    .line 513
    const/high16 v9, 0x3f800000    # 1.0f

    add-float v9, v9, v35

    mul-float v9, v9, v24

    mul-float v9, v9, v34

    move-object/from16 v0, v16

    iget v0, v0, Lcla;->b:F

    move/from16 v34, v0

    add-float v9, v9, v34

    .line 515
    float-to-double v0, v8

    move-wide/from16 v34, v0

    const-wide v36, 0x4076800000000000L    # 360.0

    rem-double v34, v34, v36

    const-wide v36, 0x4056800000000000L    # 90.0

    cmpl-double v34, v34, v36

    if-ltz v34, :cond_d

    float-to-double v0, v8

    move-wide/from16 v34, v0

    const-wide v36, 0x4076800000000000L    # 360.0

    rem-double v34, v34, v36

    const-wide v36, 0x4070e00000000000L    # 270.0

    cmpg-double v8, v34, v36

    if-gtz v8, :cond_d

    .line 516
    sub-float/2addr v2, v3

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lckc;->k:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 521
    if-eqz v10, :cond_5

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lckc;->u:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 524
    :cond_5
    sub-float v8, v2, v28

    .line 525
    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v9, v2

    .line 544
    :goto_9
    if-eqz v10, :cond_f

    if-eqz v7, :cond_f

    .line 545
    const/4 v7, 0x0

    .line 552
    invoke-interface {v12, v15}, Lcis;->i(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 545
    invoke-virtual/range {v2 .. v10}, Lckc;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 554
    invoke-virtual {v11}, Lcgy;->n()I

    move-result v2

    if-ge v15, v2, :cond_6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 593
    :cond_6
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 452
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_2

    .line 459
    :cond_7
    add-int/lit8 v2, v14, -0x1

    aget v2, v20, v2

    mul-float v2, v2, v21

    goto/16 :goto_3

    .line 472
    :cond_8
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v5

    goto/16 :goto_4

    .line 477
    :cond_9
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_5

    .line 479
    :cond_a
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_6

    .line 502
    :cond_b
    mul-float v2, v2, v17

    goto/16 :goto_7

    .line 505
    :cond_c
    mul-float v3, v3, v24

    goto/16 :goto_8

    .line 527
    :cond_d
    add-float/2addr v2, v3

    .line 528
    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v9

    .line 529
    move-object/from16 v0, p0

    iget-object v8, v0, Lckc;->k:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 531
    if-eqz v10, :cond_e

    .line 532
    move-object/from16 v0, p0

    iget-object v8, v0, Lckc;->u:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 534
    :cond_e
    add-float v8, v2, v28

    .line 535
    const/high16 v2, 0x41200000    # 10.0f

    add-float v9, v3, v2

    goto :goto_9

    .line 558
    :cond_f
    if-eqz v10, :cond_10

    .line 559
    invoke-virtual {v11}, Lcgy;->n()I

    move-result v2

    if-ge v15, v2, :cond_6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_a

    .line 562
    :cond_10
    if-eqz v7, :cond_6

    goto :goto_a

    .line 596
    :cond_11
    invoke-static/range {v16 .. v16}, Lcla;->a(Lcla;)V

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 598
    return-void

    :cond_12
    move v3, v14

    goto/16 :goto_1
.end method

.method public c()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-virtual {p0, p1}, Lckc;->d(Landroid/graphics/Canvas;)V

    .line 616
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 617
    invoke-virtual {p0, p1}, Lckc;->e(Landroid/graphics/Canvas;)V

    .line 618
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 628
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lckc;->o:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v0

    .line 631
    iget-object v1, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v1

    div-float/2addr v1, v7

    mul-float/2addr v1, v0

    .line 632
    iget-object v2, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v2

    .line 634
    iget-object v3, p0, Lckc;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 636
    iget-object v3, p0, Lckc;->o:Landroid/graphics/Canvas;

    iget v4, v2, Lcla;->a:F

    iget v5, v2, Lcla;->b:F

    iget-object v6, p0, Lckc;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 642
    :cond_0
    iget-object v3, p0, Lckc;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 643
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->r()F

    move-result v3

    iget-object v4, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 645
    iget-object v3, p0, Lckc;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 646
    iget-object v4, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->r()F

    move-result v4

    div-float/2addr v4, v7

    mul-float/2addr v0, v4

    .line 648
    iget-object v4, p0, Lckc;->c:Landroid/graphics/Paint;

    int-to-float v5, v3

    iget-object v6, p0, Lckc;->g:Lcdq;

    invoke-virtual {v6}, Lcdq;->b()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lckc;->g:Lcdq;

    invoke-virtual {v6}, Lcdq;->a()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 651
    iget-object v4, p0, Lckc;->B:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 652
    iget-object v4, p0, Lckc;->B:Landroid/graphics/Path;

    iget v5, v2, Lcla;->a:F

    iget v6, v2, Lcla;->b:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 653
    iget-object v0, p0, Lckc;->B:Landroid/graphics/Path;

    iget v4, v2, Lcla;->a:F

    iget v5, v2, Lcla;->b:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 654
    iget-object v0, p0, Lckc;->o:Landroid/graphics/Canvas;

    iget-object v1, p0, Lckc;->B:Landroid/graphics/Path;

    iget-object v4, p0, Lckc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 657
    iget-object v0, p0, Lckc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 659
    :cond_1
    invoke-static {v2}, Lcla;->a(Lcla;)V

    .line 661
    :cond_2
    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 670
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->g()Ljava/lang/CharSequence;

    move-result-object v1

    .line 672
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 674
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v10

    .line 675
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->p()Lcla;

    move-result-object v11

    .line 677
    iget v0, v10, Lcla;->a:F

    iget v2, v11, Lcla;->a:F

    add-float/2addr v2, v0

    .line 678
    iget v0, v10, Lcla;->b:F

    iget v3, v11, Lcla;->b:F

    add-float/2addr v3, v0

    .line 680
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 681
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v0

    iget-object v4, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v0, v4

    .line 684
    :goto_0
    iget-object v4, p0, Lckc;->y:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v12, v4, v5

    .line 685
    sub-float v4, v2, v0

    iput v4, v12, Landroid/graphics/RectF;->left:F

    .line 686
    sub-float v4, v3, v0

    iput v4, v12, Landroid/graphics/RectF;->top:F

    .line 687
    add-float/2addr v2, v0

    iput v2, v12, Landroid/graphics/RectF;->right:F

    .line 688
    add-float/2addr v0, v3

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    .line 689
    iget-object v0, p0, Lckc;->y:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v13, v0, v2

    .line 690
    invoke-virtual {v13, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 692
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->w()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 693
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 695
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 696
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 694
    invoke-virtual {v13, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 700
    :cond_0
    iget-object v0, p0, Lckc;->w:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lckc;->x:Landroid/graphics/RectF;

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    iget-object v0, p0, Lckc;->x:Landroid/graphics/RectF;

    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 704
    iput-object v1, p0, Lckc;->w:Ljava/lang/CharSequence;

    .line 706
    iget-object v0, p0, Lckc;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 709
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lckc;->t:Landroid/text/TextPaint;

    float-to-double v6, v5

    .line 711
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v5, v6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lckc;->v:Landroid/text/StaticLayout;

    .line 716
    :cond_2
    iget-object v0, p0, Lckc;->v:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 719
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 720
    iget-object v1, p0, Lckc;->q:Landroid/graphics/Path;

    .line 721
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 722
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 723
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 726
    :cond_3
    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v2, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v0, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 727
    iget-object v0, p0, Lckc;->v:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 731
    invoke-static {v10}, Lcla;->a(Lcla;)V

    .line 732
    invoke-static {v11}, Lcla;->a(Lcla;)V

    .line 734
    :cond_4
    return-void

    .line 681
    :cond_5
    iget-object v0, p0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 682
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v0

    goto/16 :goto_0
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->u()Z

    move-result v2

    if-nez v2, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v2

    check-cast v2, Lcgy;

    invoke-virtual {v2}, Lcgy;->a()Lcis;

    move-result-object v4

    .line 942
    invoke-interface {v4}, Lcis;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v5

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v6

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->o()Lcla;

    move-result-object v7

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->m()F

    move-result v8

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->q()F

    move-result v2

    mul-float/2addr v2, v8

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float v2, v8, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->c()[F

    move-result-object v10

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lckc;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->z()F

    move-result v3

    .line 957
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4}, Lcis;->I()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 959
    aget v11, v10, v2

    .line 961
    invoke-interface {v4, v2}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 964
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sget v13, Lclg;->d:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 966
    sub-float v12, v8, v9

    float-to-double v12, v12

    add-float v14, v3, v11

    mul-float/2addr v14, v6

    float-to-double v14, v14

    .line 967
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget v14, v7, Lcla;->a:F

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-float v12, v12

    .line 969
    sub-float v13, v8, v9

    float-to-double v14, v13

    add-float v13, v3, v11

    mul-float/2addr v13, v6

    float-to-double v0, v13

    move-wide/from16 v16, v0

    .line 970
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    iget v13, v7, Lcla;->b:F

    float-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lckc;->h:Landroid/graphics/Paint;

    invoke-interface {v4, v2}, Lcis;->e(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v14, v0, Lckc;->o:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lckc;->h:Landroid/graphics/Paint;

    invoke-virtual {v14, v12, v13, v9, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 977
    :cond_2
    mul-float/2addr v11, v5

    add-float/2addr v3, v11

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 979
    :cond_3
    invoke-static {v7}, Lcla;->a(Lcla;)V

    goto/16 :goto_0
.end method

.method public g()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lckc;->t:Landroid/text/TextPaint;

    return-object v0
.end method

.method public h()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lckc;->u:Landroid/graphics/Paint;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lckc;->o:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lckc;->o:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 988
    iput-object v1, p0, Lckc;->o:Landroid/graphics/Canvas;

    .line 990
    :cond_0
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 992
    iget-object v0, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 993
    iput-object v1, p0, Lckc;->n:Ljava/lang/ref/WeakReference;

    .line 995
    :cond_1
    return-void
.end method
