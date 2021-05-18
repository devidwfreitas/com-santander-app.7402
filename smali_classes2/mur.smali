.class public Lmur;
.super Lmso;
.source "SourceFile"


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
    .line 29
    const v0, 0x7f0403af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    new-instance v1, Lbfj;

    invoke-direct {v1}, Lbfj;-><init>()V

    .line 37
    const-string v0, "A transfer\u00eancia deve ser feita entre "

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 38
    const-string v0, "06:30hrs e 17:00hrs"

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 39
    const-string v0, " para que ocorra no mesmo dia."

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 40
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 41
    const-string v0, "Deseja "

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 42
    const-string v0, "agendar"

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 43
    const-string v0, " para o "

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 44
    const-string v0, "pr\u00f3ximo dia \u00fatil"

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 45
    const-string v0, "?"

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 47
    const v0, 0x7f1011d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f100474

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmus;

    invoke-direct {v1, p0}, Lmus;-><init>(Lmur;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f1011f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmut;

    invoke-direct {v1, p0}, Lmut;-><init>(Lmur;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
