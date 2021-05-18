.class public Lmta;
.super Lmso;
.source "SourceFile"

# interfaces
.implements Lmtd;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lmvd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->a()V

    return-void
.end method

.method public bridge synthetic a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lmrp;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lmta;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmrp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lmta;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmrp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lmrp;->e()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lmrp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lmta;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lmwv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lmta;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmrp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lmta;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmrp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lmta;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmrp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lmta;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lmwv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->b()V

    return-void
.end method

.method public bridge synthetic b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->onAttach(Landroid/content/Context;)V

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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    const v0, 0x7f0403a6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lmso;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lmta;->h:Lmvd;

    invoke-interface {v0}, Lmvd;->b()V

    .line 80
    return-void
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f1011d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f1011d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->c:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f1011d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->d:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f1011d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->e:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->f:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmta;->g:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f1011d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmtb;

    invoke-direct {v1, p0}, Lmtb;-><init>(Lmta;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f1011d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmtc;

    invoke-direct {v1, p0}, Lmtc;-><init>(Lmta;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v0, Lmve;

    invoke-direct {v0, p0}, Lmve;-><init>(Lmtd;)V

    iput-object v0, p0, Lmta;->h:Lmvd;

    .line 73
    iget-object v0, p0, Lmta;->h:Lmvd;

    invoke-interface {v0}, Lmvd;->a()V

    .line 74
    return-void
.end method
