.class public Lchy;
.super Lchz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lchz",
        "<",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lchz;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a(IFF)Lchv;
    .locals 7

    .prologue
    .line 19
    iget-object v0, p0, Lchy;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lcgy;

    invoke-virtual {v0}, Lcgy;->a()Lcis;

    move-result-object v3

    .line 21
    invoke-interface {v3, p1}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 23
    new-instance v0, Lchv;

    int-to-float v1, p1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    const/4 v5, 0x0

    invoke-interface {v3}, Lcis;->C()Lcgc;

    move-result-object v6

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lchv;-><init>(FFFFILcgc;)V

    return-object v0
.end method
