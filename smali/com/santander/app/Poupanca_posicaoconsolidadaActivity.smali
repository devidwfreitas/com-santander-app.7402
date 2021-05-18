.class public Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

.field private d:Landroid/support/v7/app/ActionBar;

.field private e:Lftc;

.field private f:Lflc;

.field private g:Landroid/app/Dialog;

.field private w:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 48
    const-string v0, "Poupanca_posicaoconsolidadaActivity"

    iput-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->f:Lflc;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a:I

    .line 56
    iput-object v1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->g:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->g:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->w:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lftc;)Lftc;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const v0, 0x7f100dba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    new-instance v1, Lfky;

    invoke-direct {v1, p0}, Lfky;-><init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f100db9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 140
    new-instance v1, Lfkz;

    invoke-direct {v1, p0}, Lfkz;-><init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f100db8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 148
    new-instance v2, Lfla;

    invoke-direct {v2, p0}, Lfla;-><init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-static {}, Lmzr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lftb;)V
    .locals 14

    .prologue
    .line 165
    const v0, 0x7f100dc2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 168
    invoke-virtual/range {p2 .. p2}, Lftb;->a()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual/range {p2 .. p2}, Lftb;->a()Ljava/util/Vector;

    move-result-object v1

    move-object v9, v1

    .line 172
    :goto_0
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040288

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 175
    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftl;

    .line 177
    const v2, 0x7f100d98

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    const v3, 0x7f100d9e

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    const v4, 0x7f100d9f

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    const v5, 0x7f100da0

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 181
    const v6, 0x7f100da1

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 182
    const v7, 0x7f100da2

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 183
    const v8, 0x7f100d99

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 185
    invoke-virtual {v1}, Lftl;->c()Lftj;

    move-result-object v12

    invoke-virtual {v12}, Lftj;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lftl;->c()Lftj;

    move-result-object v13

    invoke-virtual {v13}, Lftj;->d()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v1}, Lftl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v1}, Lftl;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v1}, Lftl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v1}, Lftl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v1}, Lftl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v1}, Lftl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_1

    .line 195
    :cond_0
    return-void

    :cond_1
    move-object v9, v1

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    return-object v0
.end method

.method private b()V
    .locals 15

    .prologue
    .line 81
    const v0, 0x7f100dc3

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 83
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 85
    const/4 v1, 0x0

    move v10, v1

    move-object v11, v2

    :goto_0
    iget-object v1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    invoke-virtual {v1}, Lftc;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04028f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 89
    iget-object v1, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    invoke-virtual {v1}, Lftc;->a()Ljava/util/Vector;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftb;

    .line 91
    invoke-virtual {v1}, Lftb;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lftb;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    const v2, 0x7f100daa

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    const v3, 0x7f100dab

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    const v4, 0x7f100dbc

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 97
    const v5, 0x7f100dbd

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 98
    const v6, 0x7f100dbe

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 99
    const v7, 0x7f100dbf

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 100
    const v8, 0x7f100dc0

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 101
    const v9, 0x7f100dc1

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v1}, Lftb;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lftb;->k()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1}, Lftb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1}, Lftb;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1}, Lftb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1}, Lftb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1}, Lftb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v1}, Lftb;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0, v12, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Landroid/view/View;Lftb;)V

    .line 115
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-direct {p0, v12}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Landroid/view/View;)V

    .line 117
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 123
    :goto_1
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    move-object v2, v11

    .line 85
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move-object v11, v2

    goto/16 :goto_0

    .line 119
    :cond_2
    const v1, 0x7f100d17

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 120
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lftc;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->g:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "Investimentos_Poupanca_Acao"

    const-string v1, "DepositoProgramado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 370
    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void

    .line 364
    :cond_0
    const-string v0, "Poupanca"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "Investimentos_Poupanca_Acao"

    const-string v1, "DepositoProgramado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    const-string v1, "opcao"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lftc;)V
    .locals 2

    .prologue
    .line 338
    const-string v0, "Poupanca_Aplicar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "Investimentos_Poupanca_Acao"

    const-string v1, "Aplicar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    const-string v1, "consultarPosicaoConsolidadaPoupancaList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method public b(Lftc;)V
    .locals 2

    .prologue
    .line 347
    const-string v0, "Poupanca_Resgatar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "Investimentos_Poupanca_Acao"

    const-string v1, "Resgatar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaResgateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const-string v1, "consultarPosicaoConsolidadaPoupancaList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method public goAplicacaoPoupanca(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a:I

    .line 262
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lftc;)V

    .line 266
    return-void
.end method

.method public goDepositoProgramadoPoupanca(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public goResgatePoupanca(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a:I

    .line 272
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e:Lftc;

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lftc;)V

    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    .line 66
    const v0, 0x7f040290

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->d:Landroid/support/v7/app/ActionBar;

    .line 69
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->d:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->d:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    const v0, 0x7f100815

    invoke-virtual {p0, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->w:Landroid/widget/ProgressBar;

    .line 74
    new-instance v0, Lflb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lflb;-><init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lfky;)V

    .line 75
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lflb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    iget-object v0, p0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->d:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f090867

    invoke-virtual {p0, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 78
    return-void
.end method
