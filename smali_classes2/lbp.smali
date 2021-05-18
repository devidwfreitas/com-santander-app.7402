.class public Llbp;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lkoh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lkoh;)Llbp;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Llbp;

    invoke-direct {v0}, Llbp;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY"

    invoke-virtual {p0}, Lkoh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Llbp;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Llbp;->b:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Llbp;->e:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Llbp;->c:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Llbp;->d:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Llbp;->g:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Llbp;->i:Lkoh;

    invoke-virtual {v0}, Lkoh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Llbp;->f:Landroid/widget/TextView;

    iget-object v1, p0, Llbp;->i:Lkoh;

    invoke-virtual {v1}, Lkoh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Llbp;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f1009ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->b:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f1009c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->c:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f1009c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->d:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100915

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->e:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f100999

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->f:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f10099e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbp;->g:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f100998

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llbp;->h:Landroid/widget/LinearLayout;

    .line 72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Llbp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llbp;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkoh;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoh;

    iput-object v0, p0, Llbp;->i:Lkoh;

    .line 52
    :cond_0
    return-void
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

    .prologue
    .line 56
    const v0, 0x7f0401f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Llbp;->a(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Llbp;->a()V

    .line 61
    return-object v0
.end method
