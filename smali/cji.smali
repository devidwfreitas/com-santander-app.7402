.class public Lcji;
.super Lcjc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcjc",
        "<",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private m:Lcla;

.field private n:F

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcjj;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcjc;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 23
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v0

    iput-object v0, p0, Lcji;->m:Lcla;

    .line 28
    iput v2, p0, Lcji;->n:F

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcji;->p:J

    .line 33
    iput v2, p0, Lcji;->q:F

    .line 37
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    return-void
.end method

.method private c(FF)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 162
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 164
    iget-object v1, p0, Lcji;->o:Ljava/util/ArrayList;

    new-instance v4, Lcjj;

    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v0

    invoke-direct {v4, p0, v2, v3, v0}, Lcjj;-><init>(Lcji;JF)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjj;

    iget-wide v4, v0, Lcjj;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 167
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private f()F
    .locals 10

    .prologue
    .line 180
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcji;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjj;

    .line 184
    iget-object v1, p0, Lcji;->o:Ljava/util/ArrayList;

    iget-object v2, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjj;

    .line 188
    iget-object v2, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move-object v2, v0

    :goto_1
    if-ltz v3, :cond_2

    .line 189
    iget-object v2, p0, Lcji;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcjj;

    .line 190
    iget v4, v2, Lcjj;->b:F

    iget v5, v1, Lcjj;->b:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 196
    :cond_2
    iget-wide v4, v1, Lcjj;->a:J

    iget-wide v6, v0, Lcjj;->a:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 197
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    .line 198
    const v3, 0x3dcccccd    # 0.1f

    .line 203
    :cond_3
    iget v4, v1, Lcjj;->b:F

    iget v5, v2, Lcjj;->b:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    const/4 v4, 0x1

    .line 204
    :goto_2
    iget v5, v1, Lcjj;->b:F

    iget v2, v2, Lcjj;->b:F

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    const-wide v8, 0x4070e00000000000L    # 270.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_9

    .line 205
    if-nez v4, :cond_7

    const/4 v2, 0x1

    .line 209
    :goto_3
    iget v4, v1, Lcjj;->b:F

    iget v5, v0, Lcjj;->b:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 210
    iget v4, v0, Lcjj;->b:F

    float-to-double v4, v4

    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v0, Lcjj;->b:F

    .line 216
    :cond_4
    :goto_4
    iget v1, v1, Lcjj;->b:F

    iget v0, v0, Lcjj;->b:F

    sub-float v0, v1, v0

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 219
    if-nez v2, :cond_0

    .line 220
    neg-float v0, v0

    goto/16 :goto_0

    .line 188
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 203
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 205
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 211
    :cond_8
    iget v4, v0, Lcjj;->b:F

    iget v5, v1, Lcjj;->b:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 212
    iget v4, v1, Lcjj;->b:F

    float-to-double v4, v4

    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v1, Lcjj;->b:F

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcji;->q:F

    .line 253
    return-void
.end method

.method public a(FF)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v1

    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->y()F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcji;->n:F

    .line 235
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 257
    iget v0, p0, Lcji;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 262
    iget v1, p0, Lcji;->q:F

    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ac()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcji;->q:F

    .line 264
    iget-wide v0, p0, Lcji;->p:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v4, v0, v1

    .line 266
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    iget-object v1, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->z()F

    move-result v1

    iget v5, p0, Lcji;->q:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 268
    iput-wide v2, p0, Lcji;->p:J

    .line 270
    iget v0, p0, Lcji;->q:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lclg;->a(Landroid/view/View;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcji;->a()V

    goto :goto_0
.end method

.method public b(FF)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    iget-object v1, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v1

    iget v2, p0, Lcji;->n:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 246
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcjd;->LONG_PRESS:Lcjd;

    iput-object v0, p0, Lcji;->a:Lcjd;

    .line 123
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->af()Lcje;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcje;->a(Landroid/view/MotionEvent;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcjd;->SINGLE_TAP:Lcjd;

    iput-object v0, p0, Lcji;->a:Lcjd;

    .line 140
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->af()Lcje;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcje;->c(Landroid/view/MotionEvent;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->X()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(FF)Lchv;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0, p1}, Lcji;->a(Lchv;Landroid/view/MotionEvent;)V

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 43
    iget-object v0, p0, Lcji;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v4

    .line 47
    :cond_1
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    invoke-virtual {p0, p2}, Lcji;->a(Landroid/view/MotionEvent;)V

    .line 58
    invoke-virtual {p0}, Lcji;->a()V

    .line 60
    invoke-direct {p0}, Lcji;->c()V

    .line 62
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-direct {p0, v1, v2}, Lcji;->c(FF)V

    .line 65
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcji;->a(FF)V

    .line 66
    iget-object v0, p0, Lcji;->m:Lcla;

    iput v1, v0, Lcla;->a:F

    .line 67
    iget-object v0, p0, Lcji;->m:Lcla;

    iput v2, v0, Lcla;->b:F

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-direct {p0, v1, v2}, Lcji;->c(FF)V

    .line 75
    :cond_3
    iget v0, p0, Lcji;->i:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcji;->m:Lcla;

    iget v0, v0, Lcla;->a:F

    iget-object v3, p0, Lcji;->m:Lcla;

    iget v3, v3, Lcla;->b:F

    .line 76
    invoke-static {v1, v0, v2, v3}, Lcji;->a(FFFF)F

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    .line 77
    invoke-static {v3}, Lclg;->a(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 78
    sget-object v0, Lcjd;->ROTATE:Lcjd;

    iput-object v0, p0, Lcji;->a:Lcjd;

    .line 79
    iput v5, p0, Lcji;->i:I

    .line 80
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ay()V

    .line 86
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcji;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 81
    :cond_5
    iget v0, p0, Lcji;->i:I

    if-ne v0, v5, :cond_4

    .line 82
    invoke-virtual {p0, v1, v2}, Lcji;->b(FF)V

    .line 83
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->invalidate()V

    goto :goto_1

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ab()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {p0}, Lcji;->a()V

    .line 95
    invoke-direct {p0, v1, v2}, Lcji;->c(FF)V

    .line 97
    invoke-direct {p0}, Lcji;->f()F

    move-result v0

    iput v0, p0, Lcji;->q:F

    .line 99
    iget v0, p0, Lcji;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 100
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcji;->p:J

    .line 102
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lclg;->a(Landroid/view/View;)V

    .line 106
    :cond_6
    iget-object v0, p0, Lcji;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->az()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcji;->i:I

    .line 109
    invoke-virtual {p0, p2}, Lcji;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
