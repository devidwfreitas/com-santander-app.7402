.class Lcom/santander/app/boasvindas/DotView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/santander/app/boasvindas/DotView;->c()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/santander/app/boasvindas/DotView;->c()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/santander/app/boasvindas/DotView;->c()V

    .line 34
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    iget-object v0, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const v0, 0x7f0200dd

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setImageResource(I)V

    .line 42
    invoke-direct {p0}, Lcom/santander/app/boasvindas/DotView;->d()V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/DotView;->b()V

    .line 44
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/DotView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 67
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 68
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/DotView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 49
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 50
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 51
    iget-object v0, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setAlpha(F)V

    .line 53
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    const/high16 v1, 0x40c00000    # 6.0f

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/DotView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 56
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 58
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 59
    iget-object v1, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    iget-object v0, p0, Lcom/santander/app/boasvindas/DotView;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/DotView;->setAlpha(F)V

    .line 62
    return-void
.end method
