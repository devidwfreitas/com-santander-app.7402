.class public Lcom/santander/app/components/view/SegmentImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Landroid/view/animation/AlphaAnimation;

.field private d:Landroid/view/animation/AlphaAnimation;

.field private e:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010247

    aput v2, v0, v1

    sput-object v0, Lcom/santander/app/components/view/SegmentImageView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->e:Landroid/view/animation/AlphaAnimation;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/components/view/SegmentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v1, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v4, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->e:Landroid/view/animation/AlphaAnimation;

    .line 48
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 49
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 50
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 51
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 52
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 53
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 55
    sget-object v0, Lflv;->segmentAttrs:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 59
    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void

    .line 62
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v2, "SegmentImageView"

    const-string v3, "Imagem Select n\u00e3o encontrada"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    const-string v2, "SegmentImageView"

    const-string v3, "Imagem Universidades n\u00e3o encontrada"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    const-string v2, "SegmentImageView"

    const-string v3, "Imagem Classic n\u00e3o encontrada"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    .line 117
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentImageView;->refreshDrawableState()V

    .line 119
    invoke-static {}, Lmzr;->d()I

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->setClickable(Z)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    .line 135
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentImageView;->refreshDrawableState()V

    .line 137
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 140
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->setClickable(Z)V

    .line 145
    :cond_1
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    if-eqz v0, :cond_0

    .line 103
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 105
    sget-object v1, Lcom/santander/app/components/view/SegmentImageView;->a:[I

    invoke-static {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->mergeDrawableStates([I[I)[I

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/santander/app/components/view/SegmentImageView;->b:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/santander/app/components/view/SegmentImageView;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
