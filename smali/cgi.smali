.class public abstract Lcgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcio;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcio",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcgc;

.field protected e:Z

.field protected transient f:Lchn;

.field protected g:Landroid/graphics/Typeface;

.field protected h:Z

.field protected i:F

.field protected j:Z

.field private k:Lcfq;

.field private l:F

.field private m:F

.field private n:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcgi;->b:Ljava/util/List;

    .line 33
    iput-object v2, p0, Lcgi;->c:Ljava/util/List;

    .line 38
    const-string v0, "DataSet"

    iput-object v0, p0, Lcgi;->a:Ljava/lang/String;

    .line 43
    sget-object v0, Lcgc;->LEFT:Lcgc;

    iput-object v0, p0, Lcgi;->d:Lcgc;

    .line 48
    iput-boolean v1, p0, Lcgi;->e:Z

    .line 60
    sget-object v0, Lcfq;->DEFAULT:Lcfq;

    iput-object v0, p0, Lcgi;->k:Lcfq;

    .line 61
    iput v3, p0, Lcgi;->l:F

    .line 62
    iput v3, p0, Lcgi;->m:F

    .line 63
    iput-object v2, p0, Lcgi;->n:Landroid/graphics/DashPathEffect;

    .line 68
    iput-boolean v1, p0, Lcgi;->h:Z

    .line 73
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcgi;->i:F

    .line 78
    iput-boolean v1, p0, Lcgi;->j:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgi;->b:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgi;->c:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcgi;-><init>()V

    .line 99
    iput-object p1, p0, Lcgi;->a:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcgi;->h:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcgi;->j:Z

    return v0
.end method

.method public C()Lcgc;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcgi;->d:Lcgc;

    return-object v0
.end method

.method public D()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Lcgi;->I()I

    move-result v1

    if-lez v1, :cond_0

    .line 414
    invoke-virtual {p0, v0}, Lcgi;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0}, Lcgi;->g(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcgi;->I()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcgi;->I()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcgi;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 426
    invoke-virtual {p0, v0}, Lcgi;->g(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 215
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcgi;->g(I)V

    .line 216
    return-void
.end method

.method public a(Landroid/graphics/DashPathEffect;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcgi;->n:Landroid/graphics/DashPathEffect;

    .line 356
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcgi;->g:Landroid/graphics/Typeface;

    .line 300
    return-void
.end method

.method public a(Lcfq;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcgi;->k:Lcfq;

    .line 329
    return-void
.end method

.method public a(Lcgc;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcgi;->d:Lcgc;

    .line 391
    return-void
.end method

.method public a(Lchn;)V
    .locals 0

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-object p1, p0, Lcgi;->f:Lchn;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcgi;->a:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public a(Ljava/util/List;)V
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
    .line 147
    iput-object p1, p0, Lcgi;->b:Ljava/util/List;

    .line 148
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lcgi;->e:Z

    .line 258
    return-void
.end method

.method public varargs a([I)V
    .locals 1

    .prologue
    .line 160
    invoke-static {p1}, Lcku;->a([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcgi;->b:Ljava/util/List;

    .line 161
    return-void
.end method

.method public a([II)V
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0}, Lcgi;->o()V

    .line 226
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 227
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p0, v2}, Lcgi;->f(I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public a([ILandroid/content/Context;)V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgi;->b:Ljava/util/List;

    .line 179
    :cond_0
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    .line 182
    iget-object v3, p0, Lcgi;->b:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 304
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgi;->i:F

    .line 305
    return-void
.end method

.method public b(Ljava/util/List;)V
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
    .line 294
    iput-object p1, p0, Lcgi;->c:Ljava/util/List;

    .line 295
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 365
    iput-boolean p1, p0, Lcgi;->h:Z

    .line 366
    return-void
.end method

.method public b(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 448
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcgi;->I()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lcgi;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    const/4 v1, 0x1

    .line 453
    :cond_0
    return v1

    .line 448
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcgi;->l:F

    .line 338
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lcgi;->j:Z

    .line 376
    return-void
.end method

.method public d(F)V
    .locals 0

    .prologue
    .line 346
    iput p1, p0, Lcgi;->m:F

    .line 347
    return-void
.end method

.method public e(I)I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    iget-object v1, p0, Lcgi;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public e(F)Z
    .locals 1

    .prologue
    .line 434
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, v0}, Lcgi;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 435
    invoke-virtual {p0, v0}, Lcgi;->g(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgi;->b:Ljava/util/List;

    .line 194
    :cond_0
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcgi;->o()V

    .line 205
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public h(I)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public i(I)I
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    iget-object v1, p0, Lcgi;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public j(I)I
    .locals 3

    .prologue
    .line 401
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcgi;->I()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 402
    int-to-float v1, p1

    invoke-virtual {p0, v0}, Lcgi;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 406
    :goto_1
    return v0

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public k()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcgi;->H()V

    .line 107
    return-void
.end method

.method public k(I)Z
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcgi;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v0}, Lcgi;->g(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
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
    .line 116
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
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
    .line 120
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    return-object v0
.end method

.method public n()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgi;->b:Ljava/util/List;

    .line 238
    :cond_0
    iget-object v0, p0, Lcgi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcgi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcgi;->e:Z

    return v0
.end method

.method public r()Lchn;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcgi;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lclg;->a()Lchn;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcgi;->f:Lchn;

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcgi;->f:Lchn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcgi;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public u()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcgi;->g:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public v()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcgi;->i:F

    return v0
.end method

.method public w()Lcfq;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcgi;->k:Lcfq;

    return-object v0
.end method

.method public x()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcgi;->l:F

    return v0
.end method

.method public y()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcgi;->m:F

    return v0
.end method

.method public z()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcgi;->n:Landroid/graphics/DashPathEffect;

    return-object v0
.end method
