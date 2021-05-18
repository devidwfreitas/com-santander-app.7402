.class public Liis;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmyk;

.field private c:Landroid/content/Intent;

.field private d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const-string v0, "ConfirmarInvestimentoPoupancaResgatePasoTresFragment"

    iput-object v0, p0, Liis;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Lmyk;

    invoke-direct {v0}, Lmyk;-><init>()V

    iput-object v0, p0, Liis;->b:Lmyk;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Liis;->c:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Liis;)Lcom/santander/app/PoupancaResgateConfirmacaoActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    const v1, 0x7f10052e

    invoke-virtual {v0, v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    .line 129
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    const v0, 0x7f04029a

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 54
    iget-object v0, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Liis;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iput-object v0, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    .line 58
    :cond_0
    const v0, 0x7f1001ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    const v1, 0x7f1001ad

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 61
    new-instance v3, Liit;

    invoke-direct {v3, p0, v0, v1}, Liit;-><init>(Liis;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Liiu;

    invoke-direct {v0, p0}, Liiu;-><init>(Liis;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Liis;->d:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->d()Lfts;

    move-result-object v1

    .line 92
    const v0, 0x7f100d81

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1}, Lfts;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f100d82

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v1}, Lfts;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v0, 0x7f100d83

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lfts;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lfts;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f100d7b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {v1}, Lfts;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f1008f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f100de8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v1}, Lfts;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f100de9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v1}, Lfts;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v0, 0x7f10053c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 118
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "realizad"

    const-string v4, "agendad"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhau;->a(Z)V

    .line 124
    :cond_1
    return-object v2
.end method
