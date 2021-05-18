.class public Lcgu;
.super Lcgw;
.source "SourceFile"

# interfaces
.implements Lcip;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgw",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcip;"
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/DashPathEffect;

.field private B:Lchm;

.field private C:Z

.field private D:Z

.field private l:Lcgv;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:F

.field private p:F

.field private z:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0, p1, p2}, Lcgw;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcgv;->LINEAR:Lcgv;

    iput-object v0, p0, Lcgu;->l:Lcgv;

    .line 28
    iput-object v2, p0, Lcgu;->m:Ljava/util/List;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcgu;->n:I

    .line 38
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcgu;->o:F

    .line 43
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcgu;->p:F

    .line 48
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcgu;->z:F

    .line 53
    iput-object v2, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    .line 58
    new-instance v0, Lchj;

    invoke-direct {v0}, Lchj;-><init>()V

    iput-object v0, p0, Lcgu;->B:Lchm;

    .line 63
    iput-boolean v1, p0, Lcgu;->C:Z

    .line 65
    iput-boolean v1, p0, Lcgu;->D:Z

    .line 74
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgu;->m:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcgu;->C:Z

    return v0
.end method

.method public G()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcgu;->l:Lcgv;

    sget-object v1, Lcgv;->CUBIC_BEZIER:Lcgv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcgu;->l:Lcgv;

    sget-object v1, Lcgv;->STEPPED:Lcgv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    return-object v0
.end method

.method public S()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public T()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgu;->m:Ljava/util/List;

    .line 359
    :cond_0
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    return-void
.end method

.method public U()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcgu;->n:I

    return v0
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcgu;->D:Z

    return v0
.end method

.method public W()Lchm;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcgu;->B:Lchm;

    return-object v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a()Lcgq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcgq",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcgu;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcgu;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->i()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcgu;

    invoke-virtual {p0}, Lcgu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcgu;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcgu;->l:Lcgv;

    iput-object v1, v0, Lcgu;->l:Lcgv;

    .line 96
    iget-object v1, p0, Lcgu;->b:Ljava/util/List;

    iput-object v1, v0, Lcgu;->b:Ljava/util/List;

    .line 97
    iget v1, p0, Lcgu;->o:F

    iput v1, v0, Lcgu;->o:F

    .line 98
    iget v1, p0, Lcgu;->p:F

    iput v1, v0, Lcgu;->p:F

    .line 99
    iget-object v1, p0, Lcgu;->m:Ljava/util/List;

    iput-object v1, v0, Lcgu;->m:Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    iput-object v1, v0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    .line 101
    iget-boolean v1, p0, Lcgu;->C:Z

    iput-boolean v1, v0, Lcgu;->C:Z

    .line 102
    iget-boolean v1, p0, Lcgu;->D:Z

    iput-boolean v1, v0, Lcgu;->D:Z

    .line 103
    iget v1, p0, Lcgu;->a:I

    iput v1, v0, Lcgu;->a:I

    .line 105
    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3d4ccccd    # 0.05f

    .line 135
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 137
    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 140
    :goto_1
    iput v0, p0, Lcgu;->z:F

    .line 141
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    .line 223
    return-void
.end method

.method public a(Lcgv;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcgu;->l:Lcgv;

    .line 125
    return-void
.end method

.method public a(Lchm;)V
    .locals 1

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v0, Lchj;

    invoke-direct {v0}, Lchj;-><init>()V

    iput-object v0, p0, Lcgu;->B:Lchm;

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iput-object p1, p0, Lcgu;->B:Lchm;

    goto :goto_0
.end method

.method public b()Lcgv;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcgu;->l:Lcgv;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcgu;->T()V

    .line 349
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public varargs b([I)V
    .locals 1

    .prologue
    .line 313
    invoke-static {p1}, Lcku;->a([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcgu;->m:Ljava/util/List;

    .line 314
    return-void
.end method

.method public b([ILandroid/content/Context;)V
    .locals 5

    .prologue
    .line 328
    iget-object v0, p0, Lcgu;->m:Ljava/util/List;

    .line 329
    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    .line 335
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iput-object v0, p0, Lcgu;->m:Ljava/util/List;

    .line 339
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcgu;->z:F

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 368
    iput p1, p0, Lcgu;->n:I

    .line 369
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcgu;->o:F

    return v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    iput-object p1, p0, Lcgu;->m:Ljava/util/List;

    .line 301
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lcgu;->C:Z

    .line 250
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcgu;->p:F

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcgu;->D:Z

    .line 383
    return-void
.end method

.method public f()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcgu;->d()F

    move-result v0

    return v0
.end method

.method public f(F)V
    .locals 2

    .prologue
    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 158
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgu;->o:F

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "LineDataSet"

    const-string v1, "Circle radius cannot be < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    .line 230
    return-void
.end method

.method public h(F)V
    .locals 2

    .prologue
    .line 177
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 178
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgu;->p:F

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "LineDataSet"

    const-string v1, "Circle radius cannot be < 0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcgu;->A:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public i(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcgu;->f(F)V

    .line 200
    return-void
.end method
