.class public Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "super_state"

.field public static final e:Ljava/lang/String; = "expansion"

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x12c


# instance fields
.field private i:I

.field private j:Z

.field private k:F

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/view/animation/Interpolator;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Lmbu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x12c

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 47
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    .line 48
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 50
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->o:Landroid/view/animation/Interpolator;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0x12c

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 47
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    .line 48
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 50
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->o:Landroid/view/animation/Interpolator;

    .line 62
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/16 v0, 0x12c

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 47
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    .line 48
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 50
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->o:Landroid/view/animation/Interpolator;

    .line 67
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/16 v0, 0x12c

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 47
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    .line 48
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 50
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->o:Landroid/view/animation/Interpolator;

    .line 73
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    return p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    .line 258
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    .line 259
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lmbs;

    invoke-direct {v1, p0}, Lmbs;-><init>(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lmbt;

    invoke-direct {v1, p0, p1}, Lmbt;-><init>(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 293
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->ExpandableLayoutV2:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    const/16 v0, 0x12c

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 80
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    .line 81
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->j:Z

    .line 82
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->l:I

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 236
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 244
    :cond_2
    if-eqz p1, :cond_3

    .line 245
    :goto_1
    if-eqz p2, :cond_4

    .line 246
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(I)V

    goto :goto_0

    .line 244
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 248
    :cond_4
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setExpansion(F)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 170
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Z)V

    .line 166
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(ZZ)V

    .line 184
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 179
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(ZZ)V

    .line 193
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 188
    return-void
.end method

.method public e()Lmbu;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->q:Lmbu;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getMeasuredWidth()I

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getMeasuredHeight()I

    move-result v2

    .line 116
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->l:I

    if-nez v0, :cond_0

    move v0, v1

    .line 119
    :goto_0
    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 120
    iget-boolean v4, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    if-eqz v4, :cond_1

    .line 121
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 122
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    :goto_2
    int-to-float v4, v0

    iget v5, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v0, v4

    .line 134
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->j:Z

    if-eqz v0, :cond_4

    move v0, v3

    .line 135
    :goto_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 137
    iget v5, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->l:I

    if-nez v5, :cond_3

    .line 138
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 135
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    .line 125
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setAlpha(F)V

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 140
    :cond_3
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    .line 145
    :cond_4
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->l:I

    if-nez v0, :cond_5

    .line 146
    sub-int v0, v1, v4

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setMeasuredDimension(II)V

    .line 150
    :goto_5
    return-void

    .line 148
    :cond_5
    sub-int v0, v2, v4

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setMeasuredDimension(II)V

    goto :goto_5

    .line 121
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 102
    check-cast p1, Landroid/os/Bundle;

    .line 103
    const-string v0, "expansion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    .line 104
    const-string v0, "super_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 106
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 107
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 90
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    .line 94
    const-string v0, "expansion"

    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 95
    const-string v0, "super_state"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    return-object v2

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->i:I

    .line 233
    return-void
.end method

.method public setExpansion(F)V
    .locals 4

    .prologue
    .line 196
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 202
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->n:Z

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 209
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    :goto_2
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->k:F

    .line 216
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->requestLayout()V

    .line 218
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->q:Lmbu;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->q:Lmbu;

    invoke-interface {v0, p1}, Lmbu;->a(F)V

    goto :goto_0

    .line 207
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setAlpha(F)V

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 203
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setOnExpansionUpdateListener(Lmbu;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->q:Lmbu;

    .line 225
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->m:I

    .line 301
    return-void
.end method
