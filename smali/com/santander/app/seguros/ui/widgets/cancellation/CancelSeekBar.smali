.class public Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lmff;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a()V

    .line 50
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
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402bc

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d()V

    .line 73
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a()V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lflv;->CancelSeekBar:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->g:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b()V

    .line 67
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d(Z)V

    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c()V

    .line 77
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 117
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    :cond_0
    return-void

    .line 116
    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0203fd

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    new-instance v1, Lmfe;

    invoke-direct {v1, p0}, Lmfe;-><init>(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setSlideButtonListener(Lmcb;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setProgressWithAnimation(I)V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b(Z)V

    .line 104
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 123
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->h:Lmff;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->h:Lmff;

    invoke-interface {v0}, Lmff;->b()V

    .line 135
    :cond_1
    return-void

    .line 125
    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()V
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f100e44

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    .line 159
    const v0, 0x7f100e46

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100e47

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f100e48

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    .line 162
    return-void
.end method

.method private d(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 138
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 141
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->h:Lmff;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->h:Lmff;

    invoke-interface {v0}, Lmff;->a()V

    .line 151
    :cond_1
    return-void

    .line 140
    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->d:Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/LockUnlockButton;->setProgressWithAnimation(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b(Z)V

    .line 109
    return-void
.end method

.method public setListener(Lmff;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->h:Lmff;

    .line 155
    return-void
.end method
