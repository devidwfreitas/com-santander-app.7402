.class public Lcgf;
.super Lcgh;
.source "SourceFile"

# interfaces
.implements Lcik;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgh",
        "<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;",
        "Lcik;"
    }
.end annotation


# instance fields
.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private v:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xd7

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcgh;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    iput v1, p0, Lcgf;->k:I

    .line 22
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcgf;->l:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcgf;->m:F

    .line 26
    const/high16 v0, -0x1000000

    iput v0, p0, Lcgf;->n:I

    .line 31
    const/16 v0, 0x78

    iput v0, p0, Lcgf;->o:I

    .line 36
    iput v2, p0, Lcgf;->p:I

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Stack"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcgf;->v:[Ljava/lang/String;

    .line 48
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcgf;->a:I

    .line 50
    invoke-direct {p0, p1}, Lcgf;->e(Ljava/util/List;)V

    .line 51
    invoke-direct {p0, p1}, Lcgf;->d(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcgf;->p:I

    move v1, v0

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcgf;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcgf;->p:I

    .line 83
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    iget v2, p0, Lcgf;->p:I

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcgf;->p:I

    goto :goto_1

    .line 92
    :cond_1
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    array-length v2, v0

    iget v3, p0, Lcgf;->k:I

    if-le v2, v3, :cond_0

    .line 105
    array-length v0, v0

    iput v0, p0, Lcgf;->k:I

    .line 100
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcgq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcgq",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcgf;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcgf;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->a()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcgf;

    invoke-virtual {p0}, Lcgf;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcgf;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcgf;->b:Ljava/util/List;

    iput-object v1, v0, Lcgf;->b:Ljava/util/List;

    .line 66
    iget v1, p0, Lcgf;->k:I

    iput v1, v0, Lcgf;->k:I

    .line 67
    iget v1, p0, Lcgf;->l:I

    iput v1, v0, Lcgf;->l:I

    .line 68
    iget-object v1, p0, Lcgf;->v:[Ljava/lang/String;

    iput-object v1, v0, Lcgf;->v:[Ljava/lang/String;

    .line 69
    iget v1, p0, Lcgf;->a:I

    iput v1, v0, Lcgf;->a:I

    .line 70
    iget v1, p0, Lcgf;->o:I

    iput v1, v0, Lcgf;->o:I

    .line 72
    return-object v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcgf;->m:F

    .line 178
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcgf;->l:I

    .line 163
    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/data/BarEntry;)V
    .locals 2

    .prologue
    .line 112
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v0

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v0

    iget v1, p0, Lcgf;->s:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v0

    iput v0, p0, Lcgf;->s:F

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v0

    iget v1, p0, Lcgf;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v0

    iput v0, p0, Lcgf;->r:F

    .line 130
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcgf;->d(Lcom/github/mikephil/charting/data/Entry;)V

    .line 132
    :cond_2
    return-void

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcgf;->s:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 124
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcgf;->s:F

    .line 126
    :cond_4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->f()F

    move-result v0

    iget v1, p0, Lcgf;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->f()F

    move-result v0

    iput v0, p0, Lcgf;->r:F

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, p1}, Lcgf;->a(Lcom/github/mikephil/charting/data/BarEntry;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcgf;->v:[Ljava/lang/String;

    .line 232
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcgf;->k:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcgf;->n:I

    .line 198
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcgf;->o:I

    .line 218
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    iget v1, p0, Lcgf;->k:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcgf;->p:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcgf;->l:I

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcgf;->m:F

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcgf;->n:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcgf;->o:I

    return v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcgf;->v:[Ljava/lang/String;

    return-object v0
.end method
