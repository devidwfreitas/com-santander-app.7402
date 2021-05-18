.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcgp;",
        ">;",
        "Lcih;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected ah:[Lcff;

.field private ai:Z

.field private aj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ai:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    .line 43
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->aj:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ai:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    .line 43
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->aj:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ai:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    .line 43
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->aj:Z

    .line 65
    return-void
.end method


# virtual methods
.method public a(FF)Lchv;
    .locals 8

    .prologue
    .line 109
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->aF()Lchx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lchx;->a(FF)Lchv;

    move-result-object v7

    .line 114
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Lchv;

    invoke-virtual {v7}, Lchv;->a()F

    move-result v1

    invoke-virtual {v7}, Lchv;->b()F

    move-result v2

    .line 118
    invoke-virtual {v7}, Lchv;->c()F

    move-result v3

    invoke-virtual {v7}, Lchv;->d()F

    move-result v4

    .line 119
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
    const/4 v3, 0x1

    .line 69
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lcff;

    const/4 v1, 0x0

    sget-object v2, Lcff;->BAR:Lcff;

    aput-object v2, v0, v1

    sget-object v1, Lcff;->BUBBLE:Lcff;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcff;->LINE:Lcff;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcff;->CANDLE:Lcff;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcff;->SCATTER:Lcff;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ah:[Lcff;

    .line 76
    new-instance v0, Lchu;

    invoke-direct {v0, p0, p0}, Lchu;-><init>(Lcih;Lcic;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcht;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    .line 81
    new-instance v0, Lcjr;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lcjr;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->P:Lcjt;

    .line 82
    return-void
.end method

.method public aK()Lcgp;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    return-object v0
.end method

.method public aL()Lcgt;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    invoke-virtual {v0}, Lcgp;->p()Lcgt;

    move-result-object v0

    goto :goto_0
.end method

.method public aM()Lchd;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    invoke-virtual {v0}, Lcgp;->r()Lchd;

    move-result-object v0

    goto :goto_0
.end method

.method public aN()[Lcff;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ah:[Lcff;

    return-object v0
.end method

.method public c()Lcgk;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    invoke-virtual {v0}, Lcgp;->a()Lcgk;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->aj:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    return v0
.end method

.method public e_()Lcgm;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    invoke-virtual {v0}, Lcgp;->s()Lcgm;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lcge;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->D:Lcgo;

    check-cast v0, Lcgp;

    invoke-virtual {v0}, Lcgp;->q()Lcge;

    move-result-object v0

    goto :goto_0
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ai:Z

    return v0
.end method

.method public bridge synthetic setData(Lcgo;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcgp;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcgp;)V

    return-void
.end method

.method public setData(Lcgp;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcgo;)V

    .line 92
    new-instance v0, Lchu;

    invoke-direct {v0, p0, p0}, Lchu;-><init>(Lcih;Lcic;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcht;)V

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->P:Lcjt;

    check-cast v0, Lcjr;

    invoke-virtual {v0}, Lcjr;->b()V

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->P:Lcjt;

    invoke-virtual {v0}, Lcjt;->a()V

    .line 95
    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->aj:Z

    .line 187
    return-void
.end method

.method public setDrawOrder([Lcff;)V
    .locals 1

    .prologue
    .line 225
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ah:[Lcff;

    goto :goto_0
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ai:Z

    .line 176
    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    .line 197
    return-void
.end method
