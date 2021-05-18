.class public Liiv;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

.field private c:Lnau;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    const-string v0, "ConfirmarInvestimentoPoupancaResgatePasoUnoFragment"

    iput-object v0, p0, Liiv;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Liiv;->c:Lnau;

    return-void
.end method

.method static synthetic a(Liiv;)Lnau;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Liiv;->c:Lnau;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Liiv;->b:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    .line 87
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    check-cast p1, Lnau;

    iput-object p1, p0, Liiv;->c:Lnau;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Liiv;->b:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c()Lfts;

    move-result-object v1

    .line 51
    iget-object v2, p0, Liiv;->b:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->b()Lftr;

    move-result-object v3

    .line 53
    invoke-virtual {v1}, Lfts;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1}, Lfts;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    :cond_0
    const v0, 0x7f04029c

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 55
    const v0, 0x7f10006e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    new-instance v4, Liiw;

    invoke-direct {v4, p0}, Liiw;-><init>(Liiv;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f100d81

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v1}, Lfts;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f100d82

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v1}, Lfts;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f100d83

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lfts;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lfts;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f100d7b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {v1}, Lfts;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f100dec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v3}, Lftr;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v3}, Lftr;->e()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_0
    invoke-static {v1}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 82
    :cond_1
    return-object v0

    .line 77
    :cond_2
    invoke-virtual {v1}, Lfts;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
