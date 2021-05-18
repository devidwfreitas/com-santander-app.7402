.class public Lcom/santander/app/boasvindas/BoasVindasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lfxe;


# static fields
.field public static final a:I = 0x26c0

.field private static final b:Ljava/lang/String; = "BoasVindasActivity"


# instance fields
.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/airbnb/lottie/LottieAnimationView;

.field private g:I

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 95
    new-instance v0, Lfxc;

    invoke-direct {v0, p0}, Lfxc;-><init>(Lcom/santander/app/boasvindas/BoasVindasActivity;)V

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->w:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lfxd;

    invoke-direct {v0, p0}, Lfxd;-><init>(Lcom/santander/app/boasvindas/BoasVindasActivity;)V

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/boasvindas/BoasVindasActivity;)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/boasvindas/BoasVindasActivity;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    return v0
.end method

.method public static synthetic c(Lcom/santander/app/boasvindas/BoasVindasActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->i()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lfxf;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    new-instance v1, Lcom/santander/app/boasvindas/DotView;

    invoke-direct {v1, p0}, Lcom/santander/app/boasvindas/DotView;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v2, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/boasvindas/BoasVindasActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->g()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/boasvindas/DotView;

    .line 73
    iget v2, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/santander/app/boasvindas/DotView;->a()V

    .line 71
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/santander/app/boasvindas/DotView;->b()V

    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/boasvindas/BoasVindasActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->h()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lfwy;->a()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    .line 84
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->g()V

    .line 85
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    invoke-static {v0}, Lfxf;->a(I)Lfxg;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f100149

    .line 90
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 92
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->e()V

    .line 93
    return-void
.end method

.method private h()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->a()V

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->c()V

    .line 121
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lfwy;->b()V

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->finish()V

    .line 127
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 132
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lfwz;->a(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfwy;->a(I)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->finish()V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lfxf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->c:Landroid/widget/RelativeLayout;

    .line 44
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->d:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->e:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->f:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/santander/app/boasvindas/BoasVindasActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->d()V

    .line 52
    invoke-direct {p0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->f()V

    goto :goto_0
.end method
