.class public Lcki;
.super Lckg;
.source "SourceFile"


# instance fields
.field private n:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lclh;Lcfz;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lckg;-><init>(Lclh;Lcfz;Lcle;)V

    .line 19
    iput-object p3, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcki;->g:Lcfz;

    invoke-virtual {v0}, Lcfz;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcki;->g:Lcfz;

    invoke-virtual {v0}, Lcfz;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcki;->g:Lcfz;

    invoke-virtual {v0}, Lcfz;->M()F

    move-result v6

    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v5

    .line 31
    iget-object v0, p0, Lcki;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcki;->g:Lcfz;

    invoke-virtual {v1}, Lcfz;->H()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    iget-object v0, p0, Lcki;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcki;->g:Lcfz;

    invoke-virtual {v1}, Lcfz;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v0, p0, Lcki;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcki;->g:Lcfz;

    invoke-virtual {v1}, Lcfz;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v8

    .line 39
    iget-object v0, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v9

    .line 41
    iget-object v0, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v10

    .line 42
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v11

    .line 43
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    iget-object v0, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lchb;

    invoke-virtual {v0}, Lchb;->o()Lcio;

    move-result-object v0

    check-cast v0, Lcit;

    invoke-interface {v0}, Lcit;->I()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcki;->g:Lcfz;

    invoke-virtual {v0}, Lcfz;->q()Lchl;

    move-result-object v0

    int-to-float v1, v7

    iget-object v2, p0, Lcki;->g:Lcfz;

    invoke-interface {v0, v1, v2}, Lchl;->a(FLcfj;)Ljava/lang/String;

    move-result-object v2

    .line 47
    int-to-float v0, v7

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcki;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->q()F

    move-result v1

    mul-float/2addr v1, v9

    iget-object v3, p0, Lcki;->g:Lcfz;

    iget v3, v3, Lcfz;->D:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float/2addr v1, v3

    invoke-static {v10, v1, v0, v11}, Lclg;->a(Lcla;FFLcla;)V

    .line 52
    iget v3, v11, Lcla;->a:F

    iget v0, v11, Lcla;->b:F

    iget-object v1, p0, Lcki;->g:Lcfz;

    iget v1, v1, Lcfz;->E:I

    int-to-float v1, v1

    div-float/2addr v1, v12

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcki;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLcla;F)V

    .line 43
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {v10}, Lcla;->a(Lcla;)V

    .line 57
    invoke-static {v11}, Lcla;->a(Lcla;)V

    .line 58
    invoke-static {v5}, Lcla;->a(Lcla;)V

    goto/16 :goto_0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
