.class public Lcom/github/mikephil/charting/charts/BubbleChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcie;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcgk;",
        ">;",
        "Lcie;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    .line 37
    new-instance v0, Lcjp;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lcjp;-><init>(Lcie;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->P:Lcjt;

    .line 38
    return-void
.end method

.method public c()Lcgk;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->D:Lcgo;

    check-cast v0, Lcgk;

    return-object v0
.end method
