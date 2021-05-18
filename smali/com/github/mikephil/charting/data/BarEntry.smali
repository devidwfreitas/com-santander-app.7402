.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:[F

.field private b:[Lcib;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->b([F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 44
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    .line 45
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->l()V

    .line 46
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->h()V

    .line 47
    return-void
.end method

.method public constructor <init>(F[FLjava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->b([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 69
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    .line 70
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->l()V

    .line 71
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->h()V

    .line 72
    return-void
.end method

.method private static b([F)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p0, :cond_1

    .line 225
    :cond_0
    return v0

    .line 222
    :cond_1
    array-length v3, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, p0, v1

    .line 223
    add-float/2addr v2, v0

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    if-nez v0, :cond_0

    .line 190
    iput v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->c:F

    .line 191
    iput v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:F

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    move v1, v3

    move v0, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget v6, v4, v2

    .line 199
    cmpg-float v7, v6, v3

    if-gtz v7, :cond_1

    .line 200
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 198
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    add-float/2addr v0, v6

    goto :goto_2

    .line 205
    :cond_2
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->c:F

    .line 206
    iput v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:F

    goto :goto_0
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BarEntry;->b(I)F

    move-result v0

    return v0
.end method

.method public a()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FFLjava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->a([F)V

    .line 92
    return-object v0
.end method

.method public a([F)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->b([F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BarEntry;->a(F)V

    .line 112
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    .line 113
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->l()V

    .line 114
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->h()V

    .line 115
    return-void
.end method

.method public b(I)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    if-nez v1, :cond_1

    .line 166
    :cond_0
    return v0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 161
    :goto_0
    if-le v1, p1, :cond_0

    if-ltz v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    aget v2, v2, v1

    add-float/2addr v2, v0

    .line 163
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public b()[F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v0

    return v0
.end method

.method public d()[Lcib;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcib;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->c:F

    return v0
.end method

.method protected h()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v4

    .line 232
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 252
    :cond_0
    return-void

    .line 235
    :cond_1
    array-length v0, v4

    new-array v0, v0, [Lcib;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcib;

    .line 237
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v0

    neg-float v1, v0

    .line 240
    const/4 v0, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcib;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 242
    aget v5, v4, v0

    .line 244
    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcib;

    new-instance v7, Lcib;

    sub-float v8, v3, v5

    invoke-direct {v7, v3, v8}, Lcib;-><init>(FF)V

    aput-object v7, v6, v0

    .line 246
    sub-float/2addr v3, v5

    .line 240
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcib;

    new-instance v7, Lcib;

    add-float v8, v1, v5

    invoke-direct {v7, v1, v8}, Lcib;-><init>(FF)V

    aput-object v7, v6, v0

    .line 249
    add-float/2addr v1, v5

    goto :goto_1
.end method

.method public synthetic i()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->a()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method
