.class public Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->d()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->d()V

    .line 65
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402e2

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->g()V

    .line 70
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lmfn;->DEFAULT_GRAY:Lmfn;

    invoke-virtual {v2}, Lmfn;->getRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const v1, 0x3fb33333    # 1.4f

    const/4 v6, 0x2

    .line 93
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 98
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    new-instance v0, Lmfl;

    invoke-direct {v0, p0}, Lmfl;-><init>(Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 123
    :cond_0
    return-void

    .line 94
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fb33333    # 1.4f
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method private f()V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    .line 126
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 130
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 131
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 132
    new-instance v0, Lmfm;

    invoke-direct {v0, p0}, Lmfm;-><init>(Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 156
    :cond_0
    return-void

    .line 127
    nop

    :array_0
    .array-data 4
        0x3fb33333    # 1.4f
        0x3f800000    # 1.0f
    .end array-data

    .line 128
    :array_1
    .array-data 4
        0x3fb33333    # 1.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private g()V
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f10040a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->d:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f100f44

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->a:Landroid/view/View;

    .line 187
    const v0, 0x7f100f45

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b:Landroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    sget-object v1, Lmfn;->CHECK_GREEN:Lmfn;

    invoke-virtual {v1}, Lmfn;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->f()V

    .line 172
    return-void
.end method

.method public a(Lmfn;)V
    .locals 2

    .prologue
    .line 82
    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lmfn;->access$000(Lmfn;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    sget-object v0, Lmfn;->DEFAULT_GRAY:Lmfn;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmfn;->CHECK_GREEN:Lmfn;

    if-ne p1, v0, :cond_2

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->f()V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public b(Lmfn;)V
    .locals 2

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lmfn;->access$000(Lmfn;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    sget-object v0, Lmfn;->DEFAULT_GRAY:Lmfn;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmfn;->CHECK_GREEN:Lmfn;

    if-ne p1, v0, :cond_2

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->f()V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
