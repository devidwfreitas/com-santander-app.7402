.class public Lcgb;
.super Lcfj;
.source "SourceFile"


# instance fields
.field protected B:Z

.field protected C:Z

.field protected D:I

.field protected E:F

.field protected F:F

.field protected G:F

.field protected H:F

.field protected I:F

.field private J:Z

.field private K:Z

.field private L:Lcgd;

.field private M:Lcgc;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcfj;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcgb;->J:Z

    .line 29
    iput-boolean v3, p0, Lcgb;->K:Z

    .line 34
    iput-boolean v0, p0, Lcgb;->B:Z

    .line 39
    iput-boolean v0, p0, Lcgb;->C:Z

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcgb;->D:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcgb;->E:F

    .line 54
    iput v2, p0, Lcgb;->F:F

    .line 59
    iput v2, p0, Lcgb;->G:F

    .line 64
    sget-object v0, Lcgd;->OUTSIDE_CHART:Lcgd;

    iput-object v0, p0, Lcgb;->L:Lcgd;

    .line 83
    iput v1, p0, Lcgb;->H:F

    .line 90
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcgb;->I:F

    .line 105
    sget-object v0, Lcgc;->LEFT:Lcgc;

    iput-object v0, p0, Lcgb;->M:Lcgc;

    .line 106
    iput v1, p0, Lcgb;->x:F

    .line 107
    return-void
.end method

.method public constructor <init>(Lcgc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcfj;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcgb;->J:Z

    .line 29
    iput-boolean v3, p0, Lcgb;->K:Z

    .line 34
    iput-boolean v0, p0, Lcgb;->B:Z

    .line 39
    iput-boolean v0, p0, Lcgb;->C:Z

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcgb;->D:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcgb;->E:F

    .line 54
    iput v2, p0, Lcgb;->F:F

    .line 59
    iput v2, p0, Lcgb;->G:F

    .line 64
    sget-object v0, Lcgd;->OUTSIDE_CHART:Lcgd;

    iput-object v0, p0, Lcgb;->L:Lcgd;

    .line 83
    iput v1, p0, Lcgb;->H:F

    .line 90
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcgb;->I:F

    .line 111
    iput-object p1, p0, Lcgb;->M:Lcgc;

    .line 112
    iput v1, p0, Lcgb;->x:F

    .line 113
    return-void
.end method


# virtual methods
.method public L()Lcgc;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcgb;->M:Lcgc;

    return-object v0
.end method

.method public M()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcgb;->H:F

    return v0
.end method

.method public N()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcgb;->I:F

    return v0
.end method

.method public O()Lcgd;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcgb;->L:Lcgd;

    return-object v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcgb;->K:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcgb;->J:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcgb;->B:Z

    return v0
.end method

.method public S()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcgb;->F:F

    return v0
.end method

.method public T()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcgb;->G:F

    return v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcgb;->C:Z

    return v0
.end method

.method public V()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcgb;->D:I

    return v0
.end method

.method public W()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcgb;->E:F

    return v0
.end method

.method public X()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcgb;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcgb;->O()Lcgd;

    move-result-object v0

    sget-object v1, Lcgd;->OUTSIDE_CHART:Lcgd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Paint;)F
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 314
    iget v0, p0, Lcgb;->z:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    invoke-virtual {p0}, Lcgb;->p()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {p1, v0}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcgb;->F()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 319
    invoke-virtual {p0}, Lcgb;->M()F

    move-result v2

    .line 320
    invoke-virtual {p0}, Lcgb;->N()F

    move-result v0

    .line 322
    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    .line 323
    invoke-static {v2}, Lclg;->a(F)F

    move-result v2

    .line 325
    :cond_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 326
    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    .line 328
    :cond_1
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 330
    return v0

    :cond_2
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method public a(FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 361
    iget-boolean v0, p0, Lcgb;->q:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcgb;->t:F

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcgb;->r:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcgb;->s:F

    .line 365
    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 368
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 369
    add-float/2addr p2, v2

    .line 370
    sub-float/2addr p1, v2

    .line 374
    :cond_2
    iget-boolean v1, p0, Lcgb;->q:Z

    if-nez v1, :cond_3

    .line 376
    div-float v1, v0, v3

    invoke-virtual {p0}, Lcgb;->T()F

    move-result v2

    mul-float/2addr v1, v2

    .line 377
    sub-float v1, p1, v1

    iput v1, p0, Lcgb;->t:F

    .line 381
    :cond_3
    iget-boolean v1, p0, Lcgb;->r:Z

    if-nez v1, :cond_4

    .line 383
    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcgb;->S()F

    move-result v1

    mul-float/2addr v0, v1

    .line 384
    add-float/2addr v0, p2

    iput v0, p0, Lcgb;->s:F

    .line 388
    :cond_4
    iget v0, p0, Lcgb;->s:F

    iget v1, p0, Lcgb;->t:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcgb;->u:F

    .line 389
    return-void
.end method

.method public a(Lcgd;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcgb;->L:Lcgd;

    .line 165
    return-void
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 3

    .prologue
    .line 341
    iget v0, p0, Lcgb;->z:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    invoke-virtual {p0}, Lcgb;->p()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p1, v0}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcgb;->G()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Lcgb;->D:I

    .line 291
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcgb;->K:Z

    .line 194
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcgb;->B:Z

    .line 205
    return-void
.end method

.method public j(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcgb;->d(F)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcgb;->B()V

    goto :goto_0
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcgb;->C:Z

    .line 278
    return-void
.end method

.method public m(F)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcgb;->H:F

    .line 133
    return-void
.end method

.method public n(F)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcgb;->I:F

    .line 149
    return-void
.end method

.method public o(F)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcgb;->F:F

    .line 237
    return-void
.end method

.method public p(F)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcgb;->G:F

    .line 255
    return-void
.end method

.method public q(F)V
    .locals 1

    .prologue
    .line 303
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgb;->E:F

    .line 304
    return-void
.end method
