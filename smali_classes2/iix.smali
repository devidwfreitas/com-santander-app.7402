.class public Liix;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmyk;

.field private c:Landroid/content/Intent;

.field private d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const-string v0, "ConfirmarInvestimentoResgatePasoTresFragment"

    iput-object v0, p0, Liix;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Lmyk;

    invoke-direct {v0}, Lmyk;-><init>()V

    iput-object v0, p0, Liix;->b:Lmyk;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Liix;->c:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Liix;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Liix;->d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Liix;->d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    const v1, 0x7f100544

    invoke-virtual {v0, v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Liix;->d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 179
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Liix;->d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c()Lftv;

    move-result-object v12

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Liix;->d:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a()Lftw;

    move-result-object v13

    .line 58
    invoke-virtual {v12}, Lftv;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const v2, 0x7f04029e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 61
    const v2, 0x7f1001ac

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 62
    const v3, 0x7f1001ad

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 64
    new-instance v4, Liiy;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v3}, Liiy;-><init>(Liix;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v2, Liiz;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Liiz;-><init>(Liix;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f100d71

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    const v3, 0x7f100df4

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    const v4, 0x7f100df5

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    const v5, 0x7f100df6

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    const v6, 0x7f100df7

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 100
    const v7, 0x7f100df8

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 101
    const v8, 0x7f100de3

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 102
    const v9, 0x7f1008f1

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 103
    const v10, 0x7f1008f2

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 106
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Liix;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0905ed

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 107
    invoke-virtual {v13}, Lftw;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 106
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v13}, Lftw;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v12}, Lftv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v12}, Lftv;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v12}, Lftv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v13}, Lftw;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v13}, Lftw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-virtual {v12}, Lftv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v12}, Lftv;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v11

    .line 167
    :goto_1
    const v2, 0x7f10053c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
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

    .line 169
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v4

    invoke-virtual {v4}, Lhau;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "realizad"

    const-string v6, "agendad"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-object v3

    .line 117
    :cond_1
    invoke-virtual {v13}, Lftw;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_2
    const v2, 0x7f04029f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 127
    const v2, 0x7f1001ac

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 128
    new-instance v3, Lija;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lija;-><init>(Liix;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v2, 0x7f1001ad

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 143
    new-instance v3, Lijb;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lijb;-><init>(Liix;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v2, 0x7f100dfa

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    const v3, 0x7f100dfc

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    const v4, 0x7f1008ef

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    const v5, 0x7f100de6

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    invoke-virtual {v13}, Lftw;->k()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Liix;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0905f2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v13}, Lftw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v13}, Lftw;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lftw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v12}, Lftv;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Lftv;->n()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v7

    goto/16 :goto_1

    .line 158
    :cond_3
    invoke-virtual/range {p0 .. p0}, Liix;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0905f3

    .line 159
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {v13}, Lftw;->l()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 163
    :cond_5
    const-string v2, ""

    goto :goto_4
.end method
