.class public Lijc;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lnau;

.field private c:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    const-string v0, "ConfirmarInvestimentoResgatePasoUnoFragment"

    iput-object v0, p0, Lijc;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lijc;->b:Lnau;

    return-void
.end method

.method static synthetic a(Lijc;)Lnau;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lijc;->b:Lnau;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lijc;->c:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 95
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    check-cast p1, Lnau;

    iput-object p1, p0, Lijc;->b:Lnau;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .prologue
    .line 47
    const v2, 0x7f0402a0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 48
    const v2, 0x7f10006e

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    new-instance v3, Lijd;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lijd;-><init>(Lijc;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lijc;->c:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a()Lftw;

    move-result-object v15

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lijc;->c:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b()Lftv;

    move-result-object v16

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lijc;->c:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->d()Lfte;

    move-result-object v17

    .line 63
    const v2, 0x7f100d80

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    const v3, 0x7f100d81

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    const v4, 0x7f100d82

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    const v5, 0x7f100d83

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    const v6, 0x7f100d7b

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    const v7, 0x7f100e00

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 69
    const v8, 0x7f100e02

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 70
    const v9, 0x7f100e04

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 71
    const v10, 0x7f100e06

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 72
    const v11, 0x7f100e08

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 73
    const v12, 0x7f100df5

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v15}, Lftw;->k()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lijc;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v18, 0x7f0905f2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v15}, Lftw;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual/range {v17 .. v17}, Lfte;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual/range {v17 .. v17}, Lfte;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual/range {v17 .. v17}, Lfte;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual/range {v17 .. v17}, Lfte;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual/range {v16 .. v16}, Lftv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual/range {v16 .. v16}, Lftv;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual/range {v16 .. v16}, Lftv;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual/range {v16 .. v16}, Lftv;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual/range {v16 .. v16}, Lftv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-object v14

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lijc;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v18, 0x7f0905f3

    .line 76
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0
.end method
