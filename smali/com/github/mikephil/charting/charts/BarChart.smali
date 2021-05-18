.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcge;",
        ">;",
        "Lcic;"
    }
.end annotation


# instance fields
.field protected a:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ah:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ai:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->aj:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ah:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ai:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->aj:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ah:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ai:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->aj:Z

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->a(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V

    .line 118
    return-object v0
.end method

.method public a(FF)Lchv;
    .locals 8

    .prologue
    .line 92
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->aF()Lchx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lchx;->a(FF)Lchv;

    move-result-object v7

    .line 97
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lchv;

    invoke-virtual {v7}, Lchv;->a()F

    move-result v1

    invoke-virtual {v7}, Lchv;->b()F

    move-result v2

    .line 101
    invoke-virtual {v7}, Lchv;->c()F

    move-result v3

    invoke-virtual {v7}, Lchv;->d()F

    move-result v4

    .line 102
    invoke-virtual {v7}, Lchv;->f()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v7}, Lchv;->i()Lcgc;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lchv;-><init>(FFFFIILcgc;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 55
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    .line 57
    new-instance v0, Lcjm;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lcjm;-><init>(Lcic;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->P:Lcjt;

    .line 59
    new-instance v0, Lchs;

    invoke-direct {v0, p0}, Lchs;-><init>(Lcic;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlighter(Lcht;)V

    .line 61
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcfz;->h(F)V

    .line 62
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcfz;->i(F)V

    .line 63
    return-void
.end method

.method public a(FFF)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->f()Lcge;

    move-result-object v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to set data for the chart before grouping bars."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->f()Lcge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcge;->a(FFF)V

    .line 255
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->j()V

    .line 257
    return-void
.end method

.method public a(FII)V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lchv;

    invoke-direct {v0, p1, p2, p3}, Lchv;-><init>(FII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->a(Lchv;Z)V

    .line 221
    return-void
.end method

.method public a(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 130
    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0, p1}, Lcge;->a(Lcom/github/mikephil/charting/data/Entry;)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 134
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    .line 140
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v4

    .line 142
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v1, Lcge;

    invoke-virtual {v1}, Lcge;->a()F

    move-result v1

    .line 144
    div-float v5, v1, v6

    sub-float v5, v4, v5

    .line 145
    div-float/2addr v1, v6

    add-float v6, v4, v1

    .line 146
    cmpl-float v1, v2, v3

    if-ltz v1, :cond_1

    move v4, v2

    .line 147
    :goto_1
    cmpg-float v1, v2, v3

    if-gtz v1, :cond_2

    move v1, v2

    .line 149
    :goto_2
    invoke-virtual {p2, v5, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 151
    invoke-interface {v0}, Lcik;->C()Lcgc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarChart;->a(Lcgc;)Lcle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcle;->a(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    move v4, v3

    .line 146
    goto :goto_1

    :cond_2
    move v1, v3

    .line 147
    goto :goto_2
.end method

.method protected b()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 68
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->aj:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->I:Lcfz;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->h()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcfz;->a(FF)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->o:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    sget-object v2, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v2}, Lcge;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    sget-object v3, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v3}, Lcge;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 76
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->p:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    sget-object v2, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v2}, Lcge;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    sget-object v3, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v3}, Lcge;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 78
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->I:Lcfz;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0}, Lcge;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcfz;->a(FF)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ai:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    return v0
.end method

.method public f()Lcge;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->D:Lcgo;

    check-cast v0, Lcge;

    return-object v0
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ah:Z

    return v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ai:Z

    .line 180
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ah:Z

    .line 161
    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->aj:Z

    .line 237
    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    .line 201
    return-void
.end method
