.class public Liid;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmyk;

.field private c:Landroid/content/Intent;

.field private d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const-string v0, "ConfirmarInvestimentoAplicacaoPasoTresFragment"

    iput-object v0, p0, Liid;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Lmyk;

    invoke-direct {v0}, Lmyk;-><init>()V

    iput-object v0, p0, Liid;->b:Lmyk;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Liid;->c:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Liid;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "Investimentos_RendaFixa_Aplicar"

    iget-object v1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a()Lftq;

    move-result-object v1

    invoke-virtual {v1}, Lftq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "Investimentos_RendaFixa_Aplicar_Prazo"

    iget-object v1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "Investimentos_RendaFixa_Aplicar_Valor"

    iget-object v1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v1

    invoke-virtual {v1}, Lfsz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "Investimentos_RendaFixa_Aplicar_DataOpcao"

    iget-object v0, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataAgendada"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "Investimentos_RendaFixa_Aplicar_Data"

    iget-object v1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v1

    invoke-virtual {v1}, Lfsz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "Investimentos_RendaFixa_Aplicar_ReferOper"

    iget-object v1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v1

    invoke-virtual {v1}, Lfsz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 188
    :cond_0
    const-string v0, "Hoje"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 182
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lfsz;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lfsz;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const v2, 0x7f040281

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 53
    const v2, 0x7f1001ac

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 54
    const v3, 0x7f1001ad

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 57
    const v4, 0x7f100d71

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    const v5, 0x7f100d73

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 59
    const v6, 0x7f100d75

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 60
    const v7, 0x7f100d76

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 61
    const v8, 0x7f100d77

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 62
    const v9, 0x7f100d79

    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 63
    const v10, 0x7f100d7b

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 64
    const v11, 0x7f1008f2

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 65
    const v12, 0x7f1008f1

    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 68
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Liid;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0905a6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 69
    invoke-virtual {v15}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a()Lftq;

    move-result-object v15

    invoke-virtual {v15}, Lftq;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 68
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a()Lftq;

    move-result-object v4

    invoke-virtual {v4}, Lftq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v5}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Liid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f09059d

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual/range {p0 .. p0}, Liid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09059b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v4

    invoke-virtual {v4}, Lftt;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v4

    invoke-virtual {v4}, Lfsz;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v4

    invoke-virtual {v4}, Lfsz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v5}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v5

    invoke-virtual {v5}, Lfsz;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 86
    invoke-virtual {v5}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v5

    invoke-virtual {v5}, Lfsz;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct/range {p0 .. p0}, Liid;->a()V

    .line 90
    new-instance v4, Liie;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v3}, Liie;-><init>(Liid;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v2, Liif;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Liif;-><init>(Liid;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v13

    .line 170
    :goto_1
    const v2, 0x7f10053c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 172
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v4

    invoke-virtual {v4}, Lhau;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "realizad"

    const-string v6, "agendad"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-object v3

    .line 77
    :cond_1
    invoke-virtual/range {p0 .. p0}, Liid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09059c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v4

    invoke-virtual {v4}, Lftt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :cond_2
    const v2, 0x7f040282

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 140
    const v2, 0x7f1001ad

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 141
    new-instance v3, Liig;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Liig;-><init>(Liid;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v2, 0x7f100d7d

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    const v3, 0x7f100d75

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 153
    const v4, 0x7f100d7b

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 154
    const v5, 0x7f100d7e

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 156
    move-object/from16 v0, p0

    iget-object v7, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v7}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a()Lftq;

    move-result-object v7

    invoke-virtual {v7}, Lftq;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v7}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Liid;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09059d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v2

    invoke-virtual {v2}, Lfsz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v2

    invoke-virtual {v2}, Lftt;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v2, 0x7f1005cf

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 162
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v3

    invoke-virtual {v3}, Lfsz;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 164
    invoke-virtual {v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v3

    invoke-virtual {v3}, Lfsz;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Liid;->d:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g()Lfsz;

    move-result-object v3

    invoke-virtual {v3}, Lfsz;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object v3, v6

    goto/16 :goto_1
.end method
