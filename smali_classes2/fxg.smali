.class public abstract Lfxg;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/airbnb/lottie/LottieAnimationView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Lfxe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lfxg;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lfxg;->e()V

    return-void
.end method

.method static synthetic b(Lfxg;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lfxg;->f()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lfxg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lfxg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfxh;

    invoke-direct {v2, p0}, Lfxh;-><init>(Lfxg;)V

    invoke-static {v0, v1, v2}, Lawt;->a(Landroid/content/Context;Ljava/lang/String;Laxg;)Lawj;

    .line 79
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lfxg;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfxg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lfxg;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfxg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lfxg;->a:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lfxg;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lfwz;->a(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 90
    iget-object v0, p0, Lfxg;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lfwz;->a(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lfxg;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lfwz;->a(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 38
    :try_start_0
    check-cast p1, Lfxe;

    iput-object p1, p0, Lfxg;->d:Lfxe;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lfxg;->d:Lfxe;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    const v0, 0x7f0401de

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lfxg;->d:Lfxe;

    .line 66
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f100921

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lfxg;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    const v0, 0x7f100922

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfxg;->b:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100923

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfxg;->c:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lfxg;->d()V

    .line 60
    return-void
.end method
