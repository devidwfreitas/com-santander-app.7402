.class public Liij;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmyk;

.field private c:Landroid/content/Intent;

.field private d:Lfsy;

.field private e:Lfsy;

.field private f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    const-string v0, "ConfirmarInvestimentoPoupancaAplicacaoPasoTresFragment"

    iput-object v0, p0, Liij;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Lmyk;

    invoke-direct {v0}, Lmyk;-><init>()V

    iput-object v0, p0, Liij;->b:Lmyk;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Liij;->c:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Liij;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    const v1, 0x7f10052e

    invoke-virtual {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 203
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14

    .prologue
    .line 63
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    iget-object v1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Liij;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iput-object v1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 69
    :cond_0
    if-eqz p3, :cond_3

    .line 70
    const-string v1, "CONFIRMAR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lfsy;

    iput-object v1, p0, Liij;->d:Lfsy;

    .line 71
    const-string v1, "APLICAR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lfsy;

    iput-object v1, p0, Liij;->e:Lfsy;

    .line 80
    :goto_0
    iget-object v1, p0, Liij;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 81
    const v1, 0x7f040297

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 83
    const v1, 0x7f1001ac

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    const v2, 0x7f1001ad

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 86
    new-instance v3, Liik;

    invoke-direct {v3, p0, v1, v2}, Liik;-><init>(Liij;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Liil;

    invoke-direct {v1, p0}, Liil;-><init>(Liij;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 114
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v12, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 117
    const v1, 0x7f100dde

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    const v2, 0x7f100ddf

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    const v3, 0x7f100de0

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    const v4, 0x7f100de1

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 121
    const v5, 0x7f100de3

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 122
    const v6, 0x7f1008f1

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 123
    const v7, 0x7f1008f2

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 124
    const v8, 0x7f10053c

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 126
    const v9, 0x7f10016e

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 127
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v9, p0, Liij;->d:Lfsy;

    invoke-virtual {v9}, Lfsy;->n()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 130
    const v9, 0x7f0905b1

    invoke-virtual {p0, v9}, Liij;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_1
    iget-object v8, p0, Liij;->d:Lfsy;

    invoke-virtual {v8}, Lfsy;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Liij;->d:Lfsy;

    invoke-virtual {v4}, Lfsy;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Liij;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {v1}, Lfsy;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {v1}, Lfsy;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    :cond_1
    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {v1}, Lfsy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_2
    iget-object v1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Liij;->d:Lfsy;

    invoke-virtual {v2}, Lfsy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Liij;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v10

    .line 180
    :goto_3
    const v1, 0x7f10053c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 182
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v3

    invoke-virtual {v3}, Lhau;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "realizad"

    const-string v5, "agendad"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    return-object v2

    .line 74
    :cond_3
    iget-object v1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g()Lfsy;

    move-result-object v1

    iput-object v1, p0, Liij;->d:Lfsy;

    .line 75
    iget-object v1, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e()Lfsy;

    move-result-object v1

    iput-object v1, p0, Liij;->e:Lfsy;

    goto/16 :goto_0

    .line 132
    :cond_4
    const v9, 0x7f0905b0

    invoke-virtual {p0, v9}, Liij;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 141
    :cond_5
    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {v1}, Lfsy;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liij;->e:Lfsy;

    invoke-virtual {v2}, Lfsy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 149
    :cond_6
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 150
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 153
    const v1, 0x7f040298

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 155
    const v1, 0x7f100de4

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    const v2, 0x7f100de5

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    const v3, 0x7f1008ef

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    const v4, 0x7f100de6

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    const v5, 0x7f1008f1

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 162
    const v9, 0x7f1001ad

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Liim;

    invoke-direct {v10, p0}, Liim;-><init>(Liij;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v9, p0, Liij;->e:Lfsy;

    invoke-virtual {v9}, Lfsy;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Liij;->e:Lfsy;

    invoke-virtual {v3}, Lfsy;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {v1}, Lfsy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Liij;->d:Lfsy;

    invoke-virtual {v1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Liij;->e:Lfsy;

    invoke-virtual {v2}, Lfsy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v6

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 196
    iget-object v0, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Liij;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iput-object v0, p0, Liij;->f:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 199
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "CONFIRMAR"

    iget-object v1, p0, Liij;->d:Lfsy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    const-string v0, "APLICAR"

    iget-object v1, p0, Liij;->e:Lfsy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
