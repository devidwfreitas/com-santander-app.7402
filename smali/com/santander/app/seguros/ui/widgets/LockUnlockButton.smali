.class public Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lmcb;

.field private c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->d:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->e:I

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->c:I

    .line 51
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b:Lmcb;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b:Lmcb;

    invoke-interface {v0, p1}, Lmcb;->a(Ljava/lang/Boolean;)V

    .line 127
    :cond_0
    return-void
.end method

.method private a(Lmca;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b:Lmcb;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b:Lmcb;

    invoke-interface {v0, p1}, Lmcb;->a(Lmca;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 69
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 74
    if-lez v0, :cond_2

    .line 75
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 76
    if-lez v2, :cond_1

    move v1, v2

    .line 78
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 74
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 64
    invoke-static {p1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 93
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getProgress()I

    move-result v2

    if-lt v2, v5, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getProgress()I

    move-result v2

    if-lt v2, v5, :cond_6

    .line 101
    sget-object v0, Lmca;->RIGHT:Lmca;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a(Lmca;)V

    .line 102
    invoke-virtual {p0, v5}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setProgressWithAnimation(I)V

    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getProgress()I

    move-result v2

    if-gtz v2, :cond_7

    .line 104
    sget-object v2, Lmca;->LEFT:Lmca;

    invoke-direct {p0, v2}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a(Lmca;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setProgressWithAnimation(I)V

    goto :goto_0

    .line 107
    :cond_7
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->c:I

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setProgressWithAnimation(I)V

    goto :goto_0

    .line 111
    :cond_8
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getProgress()I

    move-result v2

    if-lt v2, v5, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setProgressWithAnimation(I)V
    .locals 2

    .prologue
    .line 134
    const-wide/16 v0, 0x64

    invoke-static {p0, p1, v0, v1}, Lmgb;->a(Landroid/widget/SeekBar;IJ)V

    .line 135
    return-void
.end method

.method public setSlideButtonListener(Lmcb;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->b:Lmcb;

    .line 131
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    .line 55
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->a:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setPadding(IIII)V

    .line 60
    return-void
.end method
