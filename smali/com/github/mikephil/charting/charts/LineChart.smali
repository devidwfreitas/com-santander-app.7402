.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcii;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcgt;",
        ">;",
        "Lcii;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    .line 34
    new-instance v0, Lcjx;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/LineChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/LineChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lcjx;-><init>(Lcii;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->P:Lcjt;

    .line 35
    return-void
.end method

.method public aL()Lcgt;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->D:Lcgo;

    check-cast v0, Lcgt;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->P:Lcjt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->P:Lcjt;

    instance-of v0, v0, Lcjx;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->P:Lcjt;

    check-cast v0, Lcjx;

    invoke-virtual {v0}, Lcjx;->c()V

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->onDetachedFromWindow()V

    .line 49
    return-void
.end method
