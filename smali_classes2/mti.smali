.class public Lmti;
.super Lmso;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 20
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
    .line 20
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 20
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
    .line 20
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lmso;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
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
    .line 25
    const v0, 0x7f0403a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f1011d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Lmti;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f100474

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmtj;

    invoke-direct {v1, p0}, Lmtj;-><init>(Lmti;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f1011df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmtk;

    invoke-direct {v1, p0}, Lmtk;-><init>(Lmti;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
