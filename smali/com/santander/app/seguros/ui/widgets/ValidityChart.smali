.class public Lcom/santander/app/seguros/ui/widgets/ValidityChart;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/santander/app/seguros/ui/widgets/ArcChartView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->b()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->b()V

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ValidityChart;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f100fa1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->a:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f100fa2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->b:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f100fa3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->c:Landroid/widget/RelativeLayout;

    .line 36
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->d:Lcom/santander/app/seguros/ui/widgets/ArcChartView;

    .line 37
    const v0, 0x7f100fa4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->e:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f100fa5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->f:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f100fa6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->g:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402fa

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->a()V

    .line 55
    return-void
.end method


# virtual methods
.method public setDayText(I)V
    .locals 4

    .prologue
    .line 69
    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090757

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    int-to-double v0, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 90
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 91
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    new-instance v1, Lmcv;

    invoke-direct {v1, p0, p1}, Lmcv;-><init>(Lcom/santander/app/seguros/ui/widgets/ValidityChart;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    new-instance v1, Lmcw;

    invoke-direct {v1, p0, p1}, Lmcw;-><init>(Lcom/santander/app/seguros/ui/widgets/ValidityChart;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    nop

    :array_0
    .array-data 4
        0x0
        0x14
    .end array-data
.end method

.method public setEndDayText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->d:Lcom/santander/app/seguros/ui/widgets/ArcChartView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a(I)V

    .line 128
    return-void
.end method

.method public setStartDayText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
