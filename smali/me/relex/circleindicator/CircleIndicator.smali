.class public Lme/relex/circleindicator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:I = 0x5


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Landroid/animation/Animator;

.field private n:I

.field private final o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 28
    sget v0, Lnnn;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 30
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 31
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    .line 173
    new-instance v0, Lnnj;

    invoke-direct {v0, p0}, Lnnj;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lnnk;

    invoke-direct {v0, p0}, Lnnk;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 28
    sget v0, Lnnn;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 30
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 31
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    .line 173
    new-instance v0, Lnnj;

    invoke-direct {v0, p0}, Lnnj;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lnnk;

    invoke-direct {v0, p0}, Lnnk;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    .line 46
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 28
    sget v0, Lnnn;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 30
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 31
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    .line 173
    new-instance v0, Lnnj;

    invoke-direct {v0, p0}, Lnnj;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lnnk;

    invoke-direct {v0, p0}, Lnnk;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    .line 51
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 28
    sget v0, Lnnn;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 30
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 31
    sget v0, Lnnp;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    .line 173
    new-instance v0, Lnnj;

    invoke-direct {v0, p0}, Lnnj;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lnnk;

    invoke-direct {v0, p0}, Lnnk;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    .line 57
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public static synthetic a(Lme/relex/circleindicator/CircleIndicator;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    return p1
.end method

.method public static synthetic a(Lme/relex/circleindicator/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(IILandroid/animation/Animator;)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 273
    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    .line 275
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 278
    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    invoke-virtual {p0, v1, v0, v2}, Lme/relex/circleindicator/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    if-nez p1, :cond_1

    .line 284
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 285
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 291
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {p3, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    .line 295
    return-void

    .line 287
    :cond_1
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 288
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 124
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 125
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    if-gez v0, :cond_1

    .line 126
    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 127
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    if-gez v0, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 130
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    if-nez v0, :cond_3

    sget v0, Lnnn;->scale_with_alpha:I

    :goto_3
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 132
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Landroid/animation/Animator;

    .line 133
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    .line 134
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 136
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->k:Landroid/animation/Animator;

    .line 137
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    .line 138
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    if-nez v0, :cond_4

    sget v0, Lnnp;->white_radius:I

    :goto_4
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 142
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    if-nez v0, :cond_5

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    :goto_5
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 145
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    goto :goto_1

    .line 128
    :cond_2
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    goto :goto_2

    .line 130
    :cond_3
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    goto :goto_3

    .line 140
    :cond_4
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    goto :goto_4

    .line 142
    :cond_5
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->k:Landroid/animation/Animator;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 253
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->removeAllViews()V

    .line 254
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 255
    if-gtz v1, :cond_1

    .line 269
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 259
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getOrientation()I

    move-result v3

    .line 261
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 262
    if-ne v2, v0, :cond_2

    .line 263
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->a(IILandroid/animation/Animator;)V

    .line 261
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->a(IILandroid/animation/Animator;)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 66
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v2, Lnnr;->CircleIndicator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 71
    sget v3, Lnnr;->CircleIndicator_ci_width:I

    .line 72
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 73
    sget v3, Lnnr;->CircleIndicator_ci_height:I

    .line 74
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 75
    sget v3, Lnnr;->CircleIndicator_ci_margin:I

    .line 76
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 78
    sget v3, Lnnr;->CircleIndicator_ci_animator:I

    sget v4, Lnnn;->scale_with_alpha:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 80
    sget v3, Lnnr;->CircleIndicator_ci_animator_reverse:I

    .line 81
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 82
    sget v3, Lnnr;->CircleIndicator_ci_drawable:I

    sget v4, Lnnp;->white_radius:I

    .line 83
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 85
    sget v3, Lnnr;->CircleIndicator_ci_drawable_unselected:I

    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 89
    sget v3, Lnnr;->CircleIndicator_ci_orientation:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 90
    if-ne v3, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setOrientation(I)V

    .line 92
    sget v0, Lnnr;->CircleIndicator_ci_gravity:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 93
    if-ltz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setGravity(I)V

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_1

    .line 93
    :cond_2
    const/16 v0, 0x11

    goto :goto_2
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 153
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 155
    new-instance v1, Lnnl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnnl;-><init>(Lme/relex/circleindicator/CircleIndicator;Lnnj;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    :goto_0
    return-object v0

    .line 157
    :cond_0
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Landroid/animation/Animator;

    return-object v0
.end method

.method public static synthetic d(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    return v0
.end method

.method public static synthetic e(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    return v0
.end method

.method public static synthetic f(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    return v0
.end method

.method public static synthetic g(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->b()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 305
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public a(III)V
    .locals 8

    .prologue
    .line 102
    sget v4, Lnnn;->scale_with_alpha:I

    const/4 v5, 0x0

    sget v6, Lnnp;->white_radius:I

    sget v7, Lnnp;->white_radius:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lme/relex/circleindicator/CircleIndicator;->a(IIIIIII)V

    .line 104
    return-void
.end method

.method public a(IIIIIII)V
    .locals 1
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 111
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 112
    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 113
    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 115
    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 116
    iput p5, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 117
    iput p6, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 118
    iput p7, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    .line 120
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 249
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 163
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    .line 164
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    .line 166
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->b()V

    .line 167
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 168
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 169
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 171
    :cond_0
    return-void
.end method
