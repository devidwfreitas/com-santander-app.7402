.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcig;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcgo",
        "<+",
        "Lcio",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcig;"
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "MPAndroidChart"

.field public static final aa:I = 0x4

.field public static final ab:I = 0x7

.field public static final ac:I = 0xb

.field public static final ad:I = 0xd

.field public static final ae:I = 0xe

.field public static final af:I = 0x12


# instance fields
.field protected C:Z

.field protected D:Lcgo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected E:Z

.field protected F:Lchk;

.field protected G:Landroid/graphics/Paint;

.field protected H:Landroid/graphics/Paint;

.field protected I:Lcfz;

.field protected J:Z

.field protected K:Lcfl;

.field protected L:Lcfn;

.field protected M:Lcjf;

.field protected N:Lcjc;

.field protected O:Lcjv;

.field protected P:Lcjt;

.field protected Q:Lchx;

.field public R:Lclh;

.field protected S:Lcdq;

.field protected T:[Lchv;

.field protected U:F

.field protected V:Z

.field protected W:Lcfm;

.field private a:Z

.field protected ag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:Ljava/lang/String;

.field private d:Lcje;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    .line 102
    new-instance v0, Lchk;

    invoke-direct {v0, v2}, Lchk;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Lclh;

    invoke-direct {v0}, Lclh;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    .line 390
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    .line 459
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    .line 704
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->V:Z

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    .line 1725
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    .line 185
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    .line 102
    new-instance v0, Lchk;

    invoke-direct {v0, v2}, Lchk;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Lclh;

    invoke-direct {v0}, Lclh;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    .line 390
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    .line 459
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    .line 704
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->V:Z

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    .line 1725
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    .line 193
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    .line 102
    new-instance v0, Lchk;

    invoke-direct {v0, v2}, Lchk;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Lclh;

    invoke-direct {v0}, Lclh;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    .line 390
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    .line 459
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    .line 704
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->V:Z

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    .line 1725
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    .line 201
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    .line 202
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1735
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1738
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1739
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    move-object v0, p1

    .line 1740
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->a(Landroid/view/View;)V

    .line 1739
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1742
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1744
    :cond_2
    return-void
.end method


# virtual methods
.method public S()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    .line 317
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    .line 318
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 319
    return-void
.end method

.method public T()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->m()V

    .line 327
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 328
    return-void
.end method

.method public U()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 338
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v1}, Lcgo;->n()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()F
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    return v0
.end method

.method public W()[Lchv;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    return-object v0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    return v0
.end method

.method public Y()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public Z()Lcjc;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcjc;

    return-object v0
.end method

.method public a(I)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1350
    sparse-switch p1, :sswitch_data_0

    .line 1357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1352
    :sswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    goto :goto_0

    .line 1354
    :sswitch_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    goto :goto_0

    .line 1350
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public a(FF)Lchv;
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    if-nez v0, :cond_0

    .line 671
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->aF()Lchx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lchx;->a(FF)Lchv;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setWillNotDraw(Z)V

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 213
    new-instance v0, Lcdq;

    invoke-direct {v0}, Lcdq;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lclg;->a(Landroid/content/Context;)V

    .line 226
    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    .line 228
    new-instance v0, Lcfl;

    invoke-direct {v0}, Lcfl;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    .line 229
    new-instance v0, Lcfn;

    invoke-direct {v0}, Lcfn;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcfn;

    .line 231
    new-instance v0, Lcjv;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcfn;

    invoke-direct {v0, v1, v2}, Lcjv;-><init>(Lclh;Lcfn;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcjv;

    .line 233
    new-instance v0, Lcfz;

    invoke-direct {v0}, Lcfz;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Lcfz;

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcdq;

    new-instance v1, Lcfd;

    invoke-direct {v1, p0}, Lcfd;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcdq;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    goto :goto_0
.end method

.method public a(FFI)V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/Chart;->a(FFIZ)V

    .line 571
    return-void
.end method

.method public a(FFIZ)V
    .locals 1

    .prologue
    .line 594
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->d()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 595
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4}, Lcom/github/mikephil/charting/charts/Chart;->a(Lchv;Z)V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v0, Lchv;

    invoke-direct {v0, p1, p2, p3}, Lchv;-><init>(FFI)V

    invoke-virtual {p0, v0, p4}, Lcom/github/mikephil/charting/charts/Chart;->a(Lchv;Z)V

    goto :goto_0
.end method

.method public a(FI)V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/charts/Chart;->a(FIZ)V

    .line 559
    return-void
.end method

.method public a(FIZ)V
    .locals 1

    .prologue
    .line 581
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;->a(FFIZ)V

    .line 582
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2}, Lcdq;->a(II)V

    .line 954
    return-void
.end method

.method public a(IILcew;Lcew;)V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcdq;->a(IILcew;Lcew;)V

    .line 885
    return-void
.end method

.method public a(IILcex;Lcex;)V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcdq;->a(IILcex;Lcex;)V

    .line 837
    return-void
.end method

.method public a(ILcew;)V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2}, Lcdq;->a(ILcew;)V

    .line 898
    return-void
.end method

.method public a(ILcex;)V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2}, Lcdq;->a(ILcex;)V

    .line 850
    return-void
.end method

.method public a(Lchv;)V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->a(Lchv;Z)V

    .line 609
    return-void
.end method

.method public a(Lchv;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 621
    .line 623
    if-nez p1, :cond_1

    .line 624
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    .line 643
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->a([Lchv;)V

    .line 645
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcjf;

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->Y()Z

    move-result v1

    if-nez v1, :cond_4

    .line 648
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcjf;

    invoke-interface {v0}, Lcjf;->a()V

    .line 656
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 657
    return-void

    .line 627
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    if-eqz v1, :cond_2

    .line 628
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Highlighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lchv;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v1, p1}, Lcgo;->a(Lchv;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 631
    if-nez v1, :cond_3

    .line 632
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    move-object p1, v0

    move-object v0, v1

    .line 633
    goto :goto_0

    .line 637
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lchv;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    move-object v0, v1

    goto :goto_0

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcjf;

    invoke-interface {v1, v0, p1}, Lcjf;->a(Lcom/github/mikephil/charting/data/Entry;Lchv;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1616
    return-void
.end method

.method protected a([Lchv;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcjc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcjc;->a(Lchv;)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcjc;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcjc;->a(Lchv;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 1606
    const-string v2, ""

    const-string v3, "MPAndroidChart-Library Save"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/Chart;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->aH()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1495
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1503
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1505
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1508
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1529
    if-ltz p5, :cond_0

    const/16 v0, 0x64

    if-le p5, v0, :cond_1

    .line 1530
    :cond_0
    const/16 p5, 0x32

    .line 1532
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1534
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1535
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/DCIM/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1537
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1593
    :goto_0
    return v1

    .line 1542
    :cond_2
    const-string v0, ""

    .line 1543
    sget-object v0, Lcfe;->a:[I

    invoke-virtual {p4}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 1556
    const-string v0, "image/jpeg"

    .line 1557
    const-string v5, ".jpg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".jpeg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1562
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1565
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->aH()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1568
    invoke-virtual {v6, p4, p5, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1570
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1571
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1581
    new-instance v5, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1584
    const-string v8, "title"

    invoke-virtual {v5, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v8, "_display_name"

    invoke-virtual {v5, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v8, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1587
    const-string v2, "mime_type"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v0, "description"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v0, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    const-string v0, "_data"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v0, "_size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1593
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto/16 :goto_0

    .line 1545
    :pswitch_0
    const-string v0, "image/png"

    .line 1546
    const-string v5, ".png"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1550
    :pswitch_1
    const-string v0, "image/webp"

    .line 1551
    const-string v5, ".webp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".webp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1593
    goto :goto_2

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public aA()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->aB()Z

    move-result v0

    return v0
.end method

.method public aB()Z
    .locals 1

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->V:Z

    return v0
.end method

.method public aC()Lcgo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    return-object v0
.end method

.method public aD()Lclh;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    return-object v0
.end method

.method public aE()Lcjt;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->P:Lcjt;

    return-object v0
.end method

.method public aF()Lchx;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->Q:Lchx;

    return-object v0
.end method

.method public aG()Lcla;
    .locals 1

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->al()Lcla;

    move-result-object v0

    return-object v0
.end method

.method public aH()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1463
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1465
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1466
    if-eqz v2, :cond_0

    .line 1468
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1474
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->draw(Landroid/graphics/Canvas;)V

    .line 1476
    return-object v0

    .line 1472
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public aI()V
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1620
    return-void
.end method

.method public aJ()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    return-object v0
.end method

.method public aa()Lcdq;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    return-object v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    return v0
.end method

.method public ac()F
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    return v0
.end method

.method public ad()Lcfz;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Lcfz;

    return-object v0
.end method

.method public ae()Lchn;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    return-object v0
.end method

.method public af()Lcje;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lcje;

    return-object v0
.end method

.method public ag()F
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->f()F

    move-result v0

    return v0
.end method

.method public ah()F
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->e()F

    move-result v0

    return v0
.end method

.method public ai()F
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Lcfz;

    iget v0, v0, Lcfz;->s:F

    return v0
.end method

.method public aj()F
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Lcfz;

    iget v0, v0, Lcfz;->t:F

    return v0
.end method

.method public ak()F
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    return v0
.end method

.method public al()Lcla;
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1051
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v0

    return-object v0
.end method

.method public am()Lcla;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    invoke-virtual {v0}, Lclh;->m()Lcla;

    move-result-object v0

    return-object v0
.end method

.method public an()F
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    return v0
.end method

.method public ao()F
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    return v0
.end method

.method public ap()F
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    return v0
.end method

.method public aq()F
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    return v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    return v0
.end method

.method public as()Lcfm;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Lcfm;

    return-object v0
.end method

.method public at()Lcfm;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->as()Lcfm;

    move-result-object v0

    return-object v0
.end method

.method public au()Lcfl;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    return-object v0
.end method

.method public av()Lcfn;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcfn;

    return-object v0
.end method

.method public aw()Lcjv;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcjv;

    return-object v0
.end method

.method public ax()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    invoke-virtual {v0}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public ay()V
    .locals 2

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1279
    if-eqz v0, :cond_0

    .line 1280
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1281
    :cond_0
    return-void
.end method

.method public az()V
    .locals 2

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1288
    if-eqz v0, :cond_0

    .line 1289
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1290
    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1}, Lcdq;->a(I)V

    .line 929
    return-void
.end method

.method public b(ILcew;)V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2}, Lcdq;->b(ILcew;)V

    .line 911
    return-void
.end method

.method public b(ILcex;)V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1, p2}, Lcdq;->b(ILcex;)V

    .line 863
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v0}, Lcfl;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v0}, Lcfl;->b()Lcla;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->H()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 426
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->I()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 427
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->J()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->c()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 433
    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    invoke-virtual {v1}, Lclh;->c()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v1}, Lcfl;->F()F

    move-result v1

    sub-float v1, v0, v1

    .line 435
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    invoke-virtual {v2}, Lclh;->e()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->G()F

    move-result v2

    sub-float/2addr v0, v2

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    invoke-virtual {v2}, Lcfl;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    :cond_0
    return-void

    .line 437
    :cond_1
    iget v1, v0, Lcla;->a:F

    .line 438
    iget v0, v0, Lcla;->b:F

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    invoke-virtual {v0}, Lclh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    .line 1635
    :goto_0
    return-void

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b([Lchv;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    .line 544
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->a([Lchv;)V

    .line 547
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 548
    return-void
.end method

.method protected b(Lchv;)[F
    .locals 3

    .prologue
    .line 755
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lchv;->j()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lchv;->k()F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v0, p1}, Lcdq;->b(I)V

    .line 941
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 717
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Lcfm;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->aB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 720
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    aget-object v2, v2, v0

    .line 724
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v2}, Lchv;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcgo;->a(I)Lcio;

    move-result-object v3

    .line 726
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->T:[Lchv;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcgo;->a(Lchv;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 727
    invoke-interface {v3, v4}, Lcio;->h(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    .line 730
    if-eqz v4, :cond_2

    int-to-float v5, v5

    invoke-interface {v3}, Lcio;->I()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcdq;

    invoke-virtual {v6}, Lcdq;->b()F

    move-result v6

    mul-float/2addr v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    .line 720
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_3
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->b(Lchv;)[F

    move-result-object v3

    .line 736
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    aget v6, v3, v1

    const/4 v7, 0x1

    aget v3, v3, v7

    invoke-virtual {v5, v6, v3}, Lclh;->h(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 740
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Lcfm;

    invoke-interface {v3, v4, v2}, Lcfm;->a(Lcom/github/mikephil/charting/data/Entry;Lchv;)V

    goto :goto_1
.end method

.method protected e(FF)V
    .locals 2

    .prologue
    .line 372
    .line 374
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 376
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 381
    :goto_0
    invoke-static {v0}, Lclg;->c(F)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    invoke-virtual {v1, v0}, Lchk;->a(I)V

    .line 385
    return-void

    .line 378
    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method public abstract j()V
.end method

.method protected abstract l()V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1714
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1718
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->a(Landroid/view/View;)V

    .line 1720
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    if-nez v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    :goto_0
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->al()Lcla;

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->l()V

    .line 411
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 1650
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1651
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1653
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 1657
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1658
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 1660
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumWidth()I

    move-result v1

    .line 1661
    invoke-static {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v2

    .line 1660
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1663
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1664
    invoke-static {v0, p2}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v0

    .line 1663
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1659
    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setMeasuredDimension(II)V

    .line 1666
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 1670
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    if-eqz v0, :cond_0

    .line 1671
    const-string v0, "MPAndroidChart"

    const-string v1, "OnSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v2, :cond_3

    if-ge p2, v2, :cond_3

    .line 1675
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lclh;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lclh;->a(FF)V

    .line 1677
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    if-eqz v0, :cond_1

    .line 1678
    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting chart dimens, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1681
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1687
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->j()V

    .line 1689
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1690
    return-void
.end method

.method public setData(Lcgo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    .line 291
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcgo;->e()F

    move-result v0

    invoke-virtual {p1}, Lcgo;->f()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->e(FF)V

    .line 298
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcio;

    .line 299
    invoke-interface {v0}, Lcio;->s()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcio;->r()Lchn;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    if-ne v2, v3, :cond_2

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lchk;

    invoke-interface {v0, v2}, Lcio;->a(Lchn;)V

    goto :goto_1

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->j()V

    .line 306
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "MPAndroidChart"

    const-string v1, "Data is set."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDescription(Lcfl;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Lcfl;

    .line 1230
    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    .line 787
    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 808
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 811
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 812
    const v0, 0x3f7fbe77    # 0.999f

    .line 814
    :cond_0
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    .line 815
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1367
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 1368
    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    .prologue
    .line 1388
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->V:Z

    .line 1389
    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 1

    .prologue
    .line 1114
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    .line 1115
    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 1

    .prologue
    .line 1128
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    .line 1129
    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 1077
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 1078
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 1079
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 1080
    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 1

    .prologue
    .line 1100
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    .line 1101
    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 1

    .prologue
    .line 1086
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    .line 1087
    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1702
    if-eqz p1, :cond_0

    .line 1703
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1710
    :goto_0
    return-void

    .line 1705
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1707
    :cond_1
    const-string v0, "MPAndroidChart"

    const-string v1, "Cannot enable/disable hardware acceleration for devices below API level 11."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    .line 503
    return-void
.end method

.method public setHighlighter(Lcht;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->Q:Lchx;

    .line 1442
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 1145
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:Z

    .line 1146
    return-void
.end method

.method public setMarker(Lcfm;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Lcfm;

    .line 1202
    return-void
.end method

.method public setMarkerView(Lcfm;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcfm;)V

    .line 1216
    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 1

    .prologue
    .line 473
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:F

    .line 474
    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    .line 1165
    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1174
    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1183
    return-void
.end method

.method public setOnChartGestureListener(Lcje;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lcje;

    .line 1000
    return-void
.end method

.method public setOnChartValueSelectedListener(Lcjf;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcjf;

    .line 990
    return-void
.end method

.method public setOnTouchListener(Lcjc;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcjc;

    .line 685
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0

    .prologue
    .line 1333
    sparse-switch p2, :sswitch_data_0

    .line 1341
    :goto_0
    return-void

    .line 1335
    :sswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    goto :goto_0

    .line 1338
    :sswitch_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Landroid/graphics/Paint;

    goto :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setRenderer(Lcjt;)V
    .locals 0

    .prologue
    .line 1426
    if-eqz p1, :cond_0

    .line 1427
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->P:Lcjt;

    .line 1428
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 1192
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Z

    .line 1193
    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    .prologue
    .line 1755
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    .line 1756
    return-void
.end method
