.class public Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v0, -0x777778

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    .line 37
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->h:I

    .line 41
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v0, -0x777778

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    .line 37
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->h:I

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->ValidityCharV2:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->h:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a()V

    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402fb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->b()V

    .line 56
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f100fa1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100fa2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100fa3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->c:Landroid/widget/RelativeLayout;

    .line 62
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->d:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    .line 63
    const v0, 0x7f100fa4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->e:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f100fa6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->f:Landroid/widget/TextView;

    .line 65
    return-void
.end method


# virtual methods
.method public setDayText(I)V
    .locals 4

    .prologue
    .line 80
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    .line 81
    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090757

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    int-to-double v0, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 85
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->d:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->setProgressColor(I)V

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 103
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    new-instance v1, Lmct;

    invoke-direct {v1, p0}, Lmct;-><init>(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    new-instance v1, Lmcu;

    invoke-direct {v1, p0, p1}, Lmcu;-><init>(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 135
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1

    .line 91
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->h:I

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->g:I

    goto :goto_0

    .line 102
    :array_0
    .array-data 4
        0x0
        0x14
    .end array-data
.end method

.method public setEndDayText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->d:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a(I)V

    .line 139
    return-void
.end method

.method public setStartDayText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
