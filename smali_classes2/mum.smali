.class public Lmum;
.super Lmso;
.source "SourceFile"

# interfaces
.implements Lmup;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Lmvt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method

.method static synthetic a(Lmum;)Lmvt;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmum;->c:Lmvt;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 26
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
    .line 26
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public a(Lgvb;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmum;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lmum;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 26
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
    .line 26
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lmso;->c()V

    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lmum;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
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
    .line 36
    const v0, 0x7f0403a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lmso;->onDestroyView()V

    .line 71
    iget-object v0, p0, Lmum;->c:Lmvt;

    invoke-interface {v0}, Lmvt;->a()V

    .line 72
    return-void
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 26
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
    .line 41
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lmwm;->s()V

    .line 45
    const v0, 0x7f1011d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmum;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f1011d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmun;

    invoke-direct {v1, p0}, Lmun;-><init>(Lmum;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f1011d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmuo;

    invoke-direct {v1, p0}, Lmuo;-><init>(Lmum;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Lmvu;

    invoke-direct {v0, p0}, Lmvu;-><init>(Lmup;)V

    iput-object v0, p0, Lmum;->c:Lmvt;

    .line 65
    iget-object v0, p0, Lmum;->c:Lmvt;

    invoke-virtual {p0}, Lmum;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lmvt;->a(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
