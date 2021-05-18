.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    .line 38
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    .line 39
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    .line 40
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    .line 41
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFFLjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0, p6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    .line 58
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    .line 59
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    .line 60
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    .line 61
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 62
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public b()F
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    .line 111
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v0

    return v0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    .line 124
    return-void
.end method

.method public d()Lcom/github/mikephil/charting/data/CandleEntry;
    .locals 7

    .prologue
    .line 94
    new-instance v0, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->k()F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    iget v3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    iget v5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 95
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->j()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFFLjava/lang/Object;)V

    .line 97
    return-object v0
.end method

.method public d(F)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    .line 137
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    return v0
.end method

.method public e(F)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    .line 150
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    return v0
.end method

.method public synthetic i()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->d()Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object v0

    return-object v0
.end method
