.class public Lcom/github/mikephil/charting/data/RadarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 13
    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v0

    return v0
.end method

.method public b()Lcom/github/mikephil/charting/data/RadarEntry;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarEntry;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/RadarEntry;-><init>(FLjava/lang/Object;)V

    .line 30
    return-object v0
.end method

.method public f(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/Entry;->f(F)V

    .line 37
    return-void
.end method

.method public synthetic i()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarEntry;->b()Lcom/github/mikephil/charting/data/RadarEntry;

    move-result-object v0

    return-object v0
.end method

.method public k()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v0

    return v0
.end method
