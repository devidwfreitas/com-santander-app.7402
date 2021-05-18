.class public Lcom/santander/app/seguros/ui/widgets/FlipLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6


# instance fields
.field h:I

.field public i:I

.field j:I

.field public k:Landroid/view/animation/Interpolator;

.field public l:Z

.field m:Landroid/view/ViewPropertyAnimator;

.field public n:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    .line 37
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    .line 53
    if-eqz p2, :cond_0

    .line 55
    sget-object v0, Lflv;->FlipLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    .line 57
    const/4 v1, 0x1

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    .line 58
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    if-eqz p4, :cond_0

    const/16 v0, 0x5a

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->g()V

    .line 149
    packed-switch p3, :pswitch_data_0

    .line 231
    :goto_1
    return-void

    .line 147
    :cond_0
    const/16 v0, -0x5a

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 152
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 153
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p2, v5}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p2, v6}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationX(F)V

    .line 161
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setRotationX(F)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 163
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmbv;

    invoke-direct {v1, p0, p1, v5, p2}, Lmbv;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 173
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationY(F)V

    .line 174
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setRotationY(F)V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 176
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmbw;

    invoke-direct {v1, p0, p1, v5, p2}, Lmbw;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 186
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 187
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 188
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 189
    neg-int v1, v0

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 191
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmbx;

    invoke-direct {v1, p0, p1, v5, p2}, Lmbx;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 201
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 203
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    .line 206
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 208
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p1, v5}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    .line 210
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p2, v6}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 213
    :pswitch_5
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 214
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 215
    neg-float v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 217
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lmby;

    invoke-direct {v2, p0, p1, v5}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    .line 219
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p2, v6}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 222
    :pswitch_6
    if-nez p4, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 223
    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 224
    neg-float v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    .line 226
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lmby;

    invoke-direct {v2, p0, p1, v5}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    .line 228
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    invoke-direct {v1, p0, p2, v6}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->a(Landroid/view/View;Landroid/view/View;IZ)V

    .line 235
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->m:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 138
    :cond_1
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->l:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 120
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 121
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 124
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->g()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->setVisibleChild(I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    .line 81
    :cond_0
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 83
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 90
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    move v0, v1

    .line 91
    :goto_0
    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-direct {p0, v2, v3, v1}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 98
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    .line 100
    :cond_0
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 107
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 108
    :goto_0
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 109
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    return v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    .line 69
    return-void
.end method

.method public setTransition(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->j:I

    .line 262
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0

    .prologue
    .line 253
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    .line 254
    return-void
.end method

.method public setVisibleChild(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 242
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->h:I

    move v0, v1

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 244
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_0

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    .line 246
    :cond_1
    return-void
.end method
