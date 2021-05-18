.class public Liin;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lnau;

.field private c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

.field private d:Lfsy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    const-string v0, "ConfirmarInvestimentoPoupancaAplicacaoPasoUnoFragment"

    iput-object v0, p0, Liin;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Liin;->b:Lnau;

    return-void
.end method

.method static synthetic a(Liin;)Lnau;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Liin;->b:Lnau;

    return-object v0
.end method

.method static synthetic b(Liin;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Liin;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Liin;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 115
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    check-cast p1, Lnau;

    iput-object p1, p0, Liin;->b:Lnau;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v2, 0x7f100de4

    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Liin;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e()Lfsy;

    move-result-object v0

    iput-object v0, p0, Liin;->d:Lfsy;

    .line 56
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 58
    const v0, 0x7f040299

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 59
    const v0, 0x7f10006e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v1, Liio;

    invoke-direct {v1, p0}, Liio;-><init>(Liin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f100dde

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    const v1, 0x7f100ddf

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    const v2, 0x7f100de0

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    const v3, 0x7f1008df

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    const v4, 0x7f100de7

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 78
    iget-object v6, p0, Liin;->d:Lfsy;

    invoke-virtual {v6}, Lfsy;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Liin;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v5

    .line 110
    :goto_1
    return-object v0

    .line 83
    :cond_1
    iget-object v0, p0, Liin;->d:Lfsy;

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Liin;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_2
    const v0, 0x7f040298

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 90
    const v0, 0x7f100de6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Liin;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    const v2, 0x7f1008ef

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Liin;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f1001ad

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Liip;

    invoke-direct {v1, p0}, Liip;-><init>(Liin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    goto :goto_1
.end method
