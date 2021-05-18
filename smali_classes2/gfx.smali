.class public Lgfx;
.super Lcom/ca/android/app/CaMDOFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lgew;

.field private j:Lgfg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ca/android/app/CaMDOFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a00

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgfx;->a:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a01

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgfx;->b:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100489

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgfx;->c:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a05

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgfx;->d:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a07

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgfx;->e:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a03

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgfx;->f:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a04

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgfx;->g:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {p0}, Lgfx;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100a06

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgfx;->h:Landroid/widget/LinearLayout;

    .line 96
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lgfx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 61
    const-string v0, "fragment_topo_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgew;

    iput-object v0, p0, Lgfx;->i:Lgew;

    .line 62
    const-string v0, "tipo_carteira_enum"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgfg;

    iput-object v0, p0, Lgfx;->j:Lgfg;

    .line 63
    iget-object v0, p0, Lgfx;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lgfx;->i:Lgew;

    invoke-virtual {v1}, Lgew;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lgfx;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lgfx;->i:Lgew;

    invoke-virtual {v1}, Lgew;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget-object v0, Lgfy;->a:[I

    iget-object v1, p0, Lgfx;->j:Lgfg;

    invoke-virtual {v1}, Lgfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lgfx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lgfx;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lgfx;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lgfx;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lgfx;->i:Lgew;

    invoke-virtual {v1}, Lgew;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lgfx;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lgfx;->i:Lgew;

    invoke-virtual {v1}, Lgew;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lgfx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lgfx;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lgfx;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lgfx;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lgfx;->i:Lgew;

    invoke-virtual {v1}, Lgew;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
    .line 40
    const v0, 0x7f040204

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/ca/android/app/CaMDOFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0, p1}, Lgfx;->a(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lgfx;->a()V

    .line 48
    return-void
.end method
