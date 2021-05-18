.class public Lcom/github/mikephil/charting/charts/ScatterChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcij;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lchd;",
        ">;",
        "Lcij;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    .line 37
    new-instance v0, Lckf;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/ScatterChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/ScatterChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lckf;-><init>(Lcij;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/ScatterChart;->P:Lcjt;

    .line 38
    return-void
.end method

.method public aM()Lchd;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/ScatterChart;->D:Lcgo;

    check-cast v0, Lchd;

    return-object v0
.end method
