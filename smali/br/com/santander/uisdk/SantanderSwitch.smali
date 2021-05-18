.class public Lbr/com/santander/uisdk/SantanderSwitch;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/airbnb/lottie/LottieAnimationView;

.field private c:Z

.field private d:Lalz;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/uisdk/SantanderSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbr/com/santander/uisdk/SantanderSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    new-instance v0, Laly;

    invoke-direct {v0, p0}, Laly;-><init>(Lbr/com/santander/uisdk/SantanderSwitch;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->e:Landroid/view/View$OnClickListener;

    .line 42
    invoke-direct {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->b()V

    .line 44
    sget-object v0, Lalx;->SantanderSwitch:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    sget v1, Lalx;->SantanderSwitch_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setText(Ljava/lang/String;)V

    .line 49
    sget v1, Lalx;->SantanderSwitch_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget v1, Lalx;->SantanderSwitch_android_textSize:I

    iget-object v2, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setTextSize(F)V

    .line 53
    :cond_0
    sget v1, Lalx;->SantanderSwitch_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget v1, Lalx;->SantanderSwitch_android_textColor:I

    .line 55
    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x106000c

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setTextColor(I)V

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :cond_2
    return-void
.end method

.method private a(F)F
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/SantanderSwitch;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, v3}, Lbr/com/santander/uisdk/SantanderSwitch;->setOrientation(I)V

    .line 64
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->setGravity(I)V

    .line 66
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->c()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->addView(Landroid/view/View;)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 76
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie_switch_on.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->d(Z)V

    .line 79
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lbr/com/santander/uisdk/SantanderSwitch;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private c()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    const/high16 v1, 0x41200000    # 10.0f

    .line 90
    invoke-direct {p0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 87
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie_switch_on.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 102
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    .line 104
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie_switch_off.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 109
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    .line 111
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(ZZ)V

    .line 132
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    if-ne v0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    .line 138
    invoke-direct {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->d()V

    .line 142
    :goto_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->d:Lalz;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->d:Lalz;

    iget-boolean v1, p0, Lbr/com/santander/uisdk/SantanderSwitch;->c:Z

    invoke-interface {v0, p0, v1}, Lalz;->onCheckedChanged(Lbr/com/santander/uisdk/SantanderSwitch;Z)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lbr/com/santander/uisdk/SantanderSwitch;->e()V

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Lalz;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lbr/com/santander/uisdk/SantanderSwitch;->d:Lalz;

    .line 153
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lbr/com/santander/uisdk/SantanderSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    return-void
.end method
